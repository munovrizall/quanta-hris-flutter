import 'dart:math' as math;

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import 'package:image/image.dart' as img;
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/ml/recognition_embedding.dart';
import 'package:quanta_hris/src/core/ml/recognizer.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/register_face_bloc.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/register_face_event.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/register_face_state.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/widgets/face_detector_painter.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class FaceRecognitionScreen extends StatefulWidget {
  const FaceRecognitionScreen({super.key});

  @override
  State<FaceRecognitionScreen> createState() => _FaceRecognitionScreenState();
}

class _FaceRecognitionScreenState extends State<FaceRecognitionScreen> {
  List<CameraDescription>? _availableCameras;
  CameraDescription? _selectedCamera;
  CameraController? _controller;

  CameraLensDirection camDirec = CameraLensDirection.front;

  bool register = false;
  bool _isProcessing =
      false; // ✅ Tambah flag untuk mencegah multiple processing

  late Size size;

  final List<RecognitionEmbedding> _recognitions = [];

  late final FaceDetector detector;
  late final Recognizer _recognizer;

  bool isBusy = false;

  late final RegisterFaceBloc _registerFaceBloc;

  @override
  void initState() {
    super.initState();
    _registerFaceBloc = getIt<RegisterFaceBloc>();

    detector = FaceDetector(
      options: FaceDetectorOptions(performanceMode: FaceDetectorMode.fast),
    );

    _recognizer = getIt<Recognizer>();

    _prepareFaceRecognition();
  }

  Future<void> _prepareFaceRecognition() async {
    try {
      await _recognizer.loadModel();
      debugPrint('🧠 Face recognition model loaded');
    } catch (e) {
      debugPrint('❌ Failed to load face recognition model: $e');
      return;
    }

    if (!mounted) {
      return;
    }

    await _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    CameraController? controller;
    try {
      _availableCameras ??= await availableCameras();
      if (_availableCameras == null || _availableCameras!.isEmpty) {
        debugPrint('No cameras available on this device.');
        return;
      }

      _selectedCamera = _getCameraForDirection(camDirec);
      final previousController = _controller;

      // ✅ Properly dispose previous controller
      if (previousController != null) {
        try {
          if (previousController.value.isStreamingImages) {
            await previousController.stopImageStream();
          }
        } catch (e) {
          debugPrint('Error stopping image stream: $e');
        }

        await previousController.dispose();
        await Future.delayed(
          const Duration(milliseconds: 100),
        ); // ✅ Wait for cleanup
      }

      controller = CameraController(
        _selectedCamera!,
        ResolutionPreset
            .medium, // ✅ Use medium instead of high to reduce memory
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.yuv420, // ✅ Explicitly set format
      );

      await controller.initialize();

      if (!mounted) {
        await controller.dispose();
        return;
      }

      await controller.startImageStream((CameraImage image) {
        if (!isBusy && !_isProcessing) {
          // ✅ Check both flags
          isBusy = true;
          frame = image;
          doFaceDetectionOnFrame();
        }
      });

      _controller = controller;
      if (mounted) {
        setState(() {});
      }
    } on CameraException catch (error) {
      debugPrint('Failed to initialize camera: $error');
      await controller?.dispose();
    }
  }

  CameraDescription _getCameraForDirection(CameraLensDirection direction) {
    final cameras = _availableCameras!;
    try {
      return cameras.firstWhere((camera) => camera.lensDirection == direction);
    } on StateError {
      return cameras.first;
    }
  }

  List<RecognitionEmbedding> _scanResults = [];
  CameraImage? frame;

  InputImage? getInputImage() {
    final cameraImage = frame;
    final cameraDescription = _selectedCamera;
    if (cameraImage == null || cameraDescription == null) {
      return null;
    }

    try {
      // ✅ Get correct image rotation based on camera sensor orientation
      final sensorOrientation = cameraDescription.sensorOrientation;
      InputImageRotation? rotation;

      if (defaultTargetPlatform == TargetPlatform.android) {
        // Android rotation mapping
        rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
      } else if (defaultTargetPlatform == TargetPlatform.iOS) {
        // iOS rotation mapping
        rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
      }

      if (rotation == null) {
        debugPrint('❌ Rotation is null');
        return null;
      }

      // ✅ Get correct image format
      final format = InputImageFormatValue.fromRawValue(cameraImage.format.raw);

      if (format == null) {
        debugPrint('❌ Format not supported: ${cameraImage.format.raw}');
        return null;
      }

      // ✅ Convert YUV_420_888 to NV21 bytes which is supported by ML Kit
      if (cameraImage.format.group == ImageFormatGroup.yuv420) {
        final bytes = _convertYUV420ToNV21(cameraImage);
        if (bytes == null) {
          debugPrint('❌ Failed to convert YUV_420_888 to NV21 bytes');
          return null;
        }
        return InputImage.fromBytes(
          bytes: bytes,
          metadata: InputImageMetadata(
            size: Size(
              cameraImage.width.toDouble(),
              cameraImage.height.toDouble(),
            ),
            rotation: rotation,
            format: InputImageFormat.nv21,
            bytesPerRow: cameraImage.planes.first.bytesPerRow,
          ),
        );
      }

      debugPrint('❌ Unsupported format group: ${cameraImage.format.group}');
      return null;
    } catch (e) {
      debugPrint('❌ Error creating InputImage: $e');
      return null;
    }
  }

  Uint8List? _convertYUV420ToNV21(CameraImage image) {
    try {
      final int width = image.width;
      final int height = image.height;
      final int ySize = width * height;
      final int uvRowStride = image.planes[1].bytesPerRow;
      final int uvPixelStride = image.planes[1].bytesPerPixel ?? 1;

      final Uint8List nv21 = Uint8List(ySize + (width * height ~/ 2));

      // ✅ Copy luminance plane
      final Uint8List yBuffer = image.planes[0].bytes;
      int offset = 0;
      for (int row = 0; row < height; row++) {
        final int rowStart = row * image.planes[0].bytesPerRow;
        nv21.setRange(offset, offset + width, yBuffer, rowStart);
        offset += width;
      }

      // ✅ Interleave V and U data to match NV21 layout (VU pairs)
      final Uint8List uBuffer = image.planes[1].bytes;
      final Uint8List vBuffer = image.planes[2].bytes;
      int uvIndex = ySize;
      for (int row = 0; row < height; row += 2) {
        final int uvRowStart = (row ~/ 2) * uvRowStride;
        for (int col = 0; col < width; col += 2) {
          final int uvOffset = uvRowStart + (col ~/ 2) * uvPixelStride;
          nv21[uvIndex++] = vBuffer[uvOffset];
          nv21[uvIndex++] = uBuffer[uvOffset];
        }
      }

      return nv21;
    } catch (e) {
      debugPrint('❌ Error converting YUV420 to NV21: $e');
      return null;
    }
  }

  img.Image convertYUV420ToImage(CameraImage cameraImage) {
    final width = cameraImage.width;
    final height = cameraImage.height;

    final yRowStride = cameraImage.planes[0].bytesPerRow;
    final uvRowStride = cameraImage.planes[1].bytesPerRow;
    final uvPixelStride = cameraImage.planes[1].bytesPerPixel!;

    final image = img.Image(width: width, height: height);

    for (var w = 0; w < width; w++) {
      for (var h = 0; h < height; h++) {
        final uvIndex =
            uvPixelStride * (w / 2).floor() + uvRowStride * (h / 2).floor();
        final yIndex = h * yRowStride + w;

        final y = cameraImage.planes[0].bytes[yIndex];
        final u = cameraImage.planes[1].bytes[uvIndex];
        final v = cameraImage.planes[2].bytes[uvIndex];

        image.data!.setPixelR(w, h, yuv2rgb(y, u, v));
      }
    }
    return image;
  }

  int yuv2rgb(int y, int u, int v) {
    var r = (y + v * 1436 / 1024 - 179).round();
    var g = (y - u * 46549 / 131072 + 44 - v * 93604 / 131072 + 91).round();
    var b = (y + u * 1814 / 1024 - 227).round();

    r = r.clamp(0, 255);
    g = g.clamp(0, 255);
    b = b.clamp(0, 255);

    return 0xff000000 |
        ((b << 16) & 0xff0000) |
        ((g << 8) & 0xff00) |
        (r & 0xff);
  }

  Future<void> doFaceDetectionOnFrame() async {
    try {
      final InputImage? inputImage = getInputImage();
      if (inputImage == null) {
        setState(() {
          isBusy = false;
        });
        return;
      }

      final List<Face> faces = await detector.processImage(inputImage);

      if (!mounted) {
        setState(() {
          isBusy = false;
        });
        return;
      }

      await performFaceRecognition(faces);
    } catch (e) {
      debugPrint('Error in face detection: $e');
      if (mounted) {
        setState(() {
          isBusy = false;
        });
      }
    }
  }

  img.Image? image;

  Future<void> performFaceRecognition(List<Face> faces) async {
    if (_isProcessing) return; // ✅ Prevent multiple dialogs

    _recognitions.clear();

    final currentFrame = frame;
    if (currentFrame == null) {
      setState(() {
        isBusy = false;
      });
      return;
    }

    if (faces.isEmpty) {
      setState(() {
        isBusy = false;
        _scanResults = [];
      });
      return;
    }

    debugPrint('🔍 Found ${faces.length} face(s), register mode: $register');

    try {
      await _recognizer.loadModel();

      image = convertYUV420ToImage(currentFrame);
      image = img.copyRotate(
        image!,
        angle: camDirec == CameraLensDirection.front ? 270 : 90,
      );

      for (Face face in faces) {
        Rect faceRect = face.boundingBox;

        final int x = faceRect.left
            .clamp(0.0, (image!.width - 1).toDouble())
            .toInt();
        final int y = faceRect.top
            .clamp(0.0, (image!.height - 1).toDouble())
            .toInt();
        final int maxWidth = image!.width - x;
        final int maxHeight = image!.height - y;

        if (maxWidth <= 0 || maxHeight <= 0) {
          continue;
        }

        final int width = math.max(
          1,
          math.min(faceRect.width.round(), maxWidth),
        );
        final int height = math.max(
          1,
          math.min(faceRect.height.round(), maxHeight),
        );

        img.Image croppedFace = img.copyCrop(
          image!,
          x: x,
          y: y,
          width: width,
          height: height,
        );

        RecognitionEmbedding recognition = _recognizer.recognize(
          croppedFace,
          face.boundingBox,
        );

        _recognitions.add(recognition);

        if (register && !_isProcessing) {
          _isProcessing = true; // ✅ Set flag before showing dialog
          debugPrint('✅ Showing registration dialog');

          // ✅ Stop camera stream before showing dialog
          await _controller?.stopImageStream();

          if (mounted) {
            await showFaceRegistrationDialogue(croppedFace, recognition);
          }

          register = false;
          _isProcessing = false;

          // ✅ Restart camera stream after dialog closes
          if (mounted && _controller != null) {
            await _controller!.startImageStream((CameraImage image) {
              if (!isBusy && !_isProcessing) {
                isBusy = true;
                frame = image;
                doFaceDetectionOnFrame();
              }
            });
          }
        }
      }

      if (mounted) {
        setState(() {
          isBusy = false;
          _scanResults = List<RecognitionEmbedding>.from(_recognitions);
        });
      }
    } catch (e) {
      debugPrint('Error in performFaceRecognition: $e');
      if (mounted) {
        setState(() {
          isBusy = false;
          _isProcessing = false;
        });
      }
    }
  }

  Future<void> showFaceRegistrationDialogue(
    img.Image croppedFace,
    RecognitionEmbedding recognition,
  ) async {
    debugPrint('🎯 Opening face registration dialog');

    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return BlocProvider.value(
          value: _registerFaceBloc,
          child: AlertDialog(
            title: const Text('Face Registration', textAlign: TextAlign.center),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Image.memory(
                    Uint8List.fromList(img.encodeBmp(croppedFace)),
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlocConsumer<RegisterFaceBloc, RegisterFaceState>(
                      listener: (context, state) {
                        debugPrint(
                          '📊 RegisterFaceBloc state: loading=${state.isRegisterFaceLoading}, error=${state.registerFaceError}',
                        );

                        if (state.registerFaceError != null) {
                          Navigator.of(dialogContext).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(state.registerFaceError!),
                              backgroundColor: AppColors.error,
                            ),
                          );
                        } else if (!state.isRegisterFaceLoading &&
                            state.registeredFaceData != null) {
                          Navigator.of(dialogContext).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Face registered successfully!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                          Navigator.of(context).pop();
                        }
                      },
                      builder: (context, state) {
                        if (state.isRegisterFaceLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return Column(
                          children: [
                            PrimaryButton(
                              text: 'Register',
                              onPressed: () {
                                debugPrint('🚀 Registering face');
                                _registerFaceBloc.add(
                                  RegisterEvent.updateProfileRegisterFace(
                                    recognition.embedding.join(','),
                                    null,
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 8),
                            TextButton(
                              onPressed: () {
                                Navigator.of(dialogContext).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            contentPadding: const EdgeInsets.all(16),
          ),
        );
      },
    );
  }

  Future<void> _reverseCamera() async {
    final cameras = _availableCameras;
    if (cameras == null || cameras.length < 2) {
      debugPrint('Unable to flip camera: only one camera detected.');
      return;
    }

    camDirec = camDirec == CameraLensDirection.back
        ? CameraLensDirection.front
        : CameraLensDirection.back;

    await _initializeCamera();
  }

  void _takePicture() {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) {
      debugPrint('❌ Camera not initialized');
      return;
    }

    if (!controller.value.isStreamingImages) {
      debugPrint('❌ Camera not streaming images');
      return;
    }

    if (_isProcessing) {
      debugPrint('⚠️ Already processing registration');
      return;
    }

    try {
      debugPrint('📸 Take picture button pressed');
      setState(() {
        register = true;
      });
      debugPrint('✅ Register flag set, waiting for next frame...');
    } catch (error) {
      debugPrint('❌ Error setting register flag: $error');
    }
  }

  @override
  void dispose() {
    _controller
        ?.stopImageStream()
        .then((_) {
          _controller?.dispose();
        })
        .catchError((e) {
          debugPrint('Error disposing camera: $e');
        });
    detector.close();
    _registerFaceBloc.close();
    super.dispose();
  }

  Widget buildResult() {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) {
      return const SizedBox.shrink();
    }
    if (_scanResults.isEmpty || controller.value.previewSize == null) {
      return const SizedBox.shrink();
    }
    final Size imageSize = Size(
      controller.value.previewSize!.height,
      controller.value.previewSize!.width,
    );
    CustomPainter painter = FaceDetectorPainter(
      imageSize,
      _scanResults,
      camDirec,
    );
    return IgnorePointer(child: CustomPaint(painter: painter));
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return BlocProvider.value(
      value: _registerFaceBloc,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 0.0,
                left: 0.0,
                width: size.width,
                height: size.height,
                child: CameraPreview(_controller!),
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                width: size.width,
                height: size.height,
                child: buildResult(),
              ),
              Positioned(
                bottom: 5.0,
                left: 0.0,
                right: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: _reverseCamera,
                        icon: const Icon(
                          Icons.flip_camera_ios,
                          size: 48.0,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: _takePicture,
                        icon: const Icon(Icons.circle, size: 70.0),
                        color: AppColors.error,
                      ),
                      const SizedBox(width: 48.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
