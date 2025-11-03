import 'dart:async';
import 'dart:math' as math;

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image/image.dart' as img;
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/ml/recognition_embedding.dart';
import 'package:quanta_hris/src/core/ml/recognizer.dart';
import 'package:quanta_hris/src/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:quanta_hris/src/features/attendance/presentation/bloc/attendance_event.dart';
import 'package:quanta_hris/src/features/attendance/presentation/bloc/attendance_state.dart';
import 'package:quanta_hris/src/features/attendance/presentation/widgets/face_detector_painter.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';

class ClockInScreen extends StatefulWidget {
  const ClockInScreen({super.key});

  @override
  State<ClockInScreen> createState() => _ClockInScreenState();
}

class _ClockInScreenState extends State<ClockInScreen> {
  List<CameraDescription>? _availableCameras;
  CameraDescription? _selectedCamera;
  CameraController? _controller;

  CameraLensDirection camDirec = CameraLensDirection.front;

  bool _isProcessing = false;
  bool isBusy = false;

  late Size size;

  final List<RecognitionEmbedding> _recognitions = [];

  late final FaceDetector detector;
  late final Recognizer _recognizer;

  late final AttendanceBloc _attendanceBloc;

  // Face recognition state
  bool isFaceRegistered = false;
  String faceStatusMessage = 'Menunggu deteksi wajah...';

  // Location
  double? latitude;
  double? longitude;
  bool _isFetchingLocation = true;

  @override
  void initState() {
    super.initState();
    _attendanceBloc = getIt<AttendanceBloc>();

    detector = FaceDetector(
      options: FaceDetectorOptions(performanceMode: FaceDetectorMode.fast),
    );

    _recognizer = getIt<Recognizer>();

    _prepareFaceRecognition();
    _getCurrentPosition();
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

      if (previousController != null) {
        try {
          if (previousController.value.isStreamingImages) {
            await previousController.stopImageStream();
          }
        } catch (e) {
          debugPrint('Error stopping image stream: $e');
        }

        await previousController.dispose();
        await Future.delayed(const Duration(milliseconds: 100));
      }

      controller = CameraController(
        _selectedCamera!,
        ResolutionPreset.medium,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.yuv420,
      );

      await controller.initialize();

      if (!mounted) {
        await controller.dispose();
        return;
      }

      await controller.startImageStream((CameraImage image) {
        if (!isBusy && !_isProcessing) {
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
      final sensorOrientation = cameraDescription.sensorOrientation;
      InputImageRotation? rotation;

      if (defaultTargetPlatform == TargetPlatform.android) {
        rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
      } else if (defaultTargetPlatform == TargetPlatform.iOS) {
        rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
      }

      if (rotation == null) {
        debugPrint('❌ Rotation is null');
        return null;
      }

      final format = InputImageFormatValue.fromRawValue(cameraImage.format.raw);

      if (format == null) {
        debugPrint('❌ Format not supported: ${cameraImage.format.raw}');
        return null;
      }

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

      final Uint8List yBuffer = image.planes[0].bytes;
      int offset = 0;
      for (int row = 0; row < height; row++) {
        final int rowStart = row * image.planes[0].bytesPerRow;
        nv21.setRange(offset, offset + width, yBuffer, rowStart);
        offset += width;
      }

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
    if (_isProcessing) return;

    _recognitions.clear();

    final currentFrame = frame;
    if (currentFrame == null) {
      setState(() {
        isBusy = false;
        isFaceRegistered = false;
        faceStatusMessage = 'Tidak ada data kamera yang dapat diproses.';
      });
      return;
    }

    if (faces.isEmpty) {
      setState(() {
        isBusy = false;
        _scanResults = [];
        isFaceRegistered = false;
        faceStatusMessage = 'Wajah belum terdeteksi';
      });
      return;
    }

    debugPrint('🔍 Found ${faces.length} face(s)');

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

        // ✅ Validate face against stored embedding
        bool isValid = await _recognizer.isValidFace(recognition.embedding);

        if (mounted) {
          setState(() {
            isFaceRegistered = isValid;
            faceStatusMessage = isValid
                ? 'Wajah sudah terdaftar'
                : 'Wajah belum terdaftar';
          });
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

  Future<void> _getCurrentPosition() async {
    setState(() {
      _isFetchingLocation = true;
    });

    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        setState(() {
          _isFetchingLocation = false;
        });
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          setState(() {
            _isFetchingLocation = false;
          });
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        setState(() {
          _isFetchingLocation = false;
        });
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        latitude = position.latitude;
        longitude = position.longitude;
        _isFetchingLocation = false;
      });

      debugPrint('📍 Location: $latitude, $longitude');
    } catch (e) {
      debugPrint('❌ Failed to get location: $e');
      setState(() {
        _isFetchingLocation = false;
      });
    }
  }

  void _takeAbsen() {
    if (latitude == null || longitude == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Lokasi belum tersedia'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    if (!isFaceRegistered) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Wajah belum terdeteksi atau tidak terdaftar'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    debugPrint('🎯 Clock in with lat=$latitude, lng=$longitude');

    _attendanceBloc.add(
      AttendanceEvent.postClockIn(
        latitude: latitude!,
        longitude: longitude!,
        fotoMasuk: null, // TODO: Add photo capture if needed
      ),
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
    _attendanceBloc.close();
    super.dispose();
  }

  Widget _buildPreviewContainer(Widget child) {
    final controller = _controller!;
    final previewSize = controller.value.previewSize!;
    final double previewWidth = previewSize.height;
    final double previewHeight = previewSize.width;

    return ClipRect(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: previewWidth,
          height: previewHeight,
          child: child,
        ),
      ),
    );
  }

  Widget _buildCameraPreview() {
    return _buildPreviewContainer(CameraPreview(_controller!));
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
    return IgnorePointer(
      child: _buildPreviewContainer(CustomPaint(painter: painter)),
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (_controller == null || !_controller!.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return BlocProvider.value(
      value: _attendanceBloc,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(child: _buildCameraPreview()),
              Positioned.fill(child: buildResult()),
              // Face status indicator
              Positioned(
                top: 20.0,
                left: 40.0,
                right: 40.0,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: isFaceRegistered
                        ? AppColors.primary.withOpacity(0.47)
                        : AppColors.error.withOpacity(0.47),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    faceStatusMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              // Bottom controls
              Positioned(
                bottom: 5.0,
                left: 0.0,
                right: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Location info
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.47),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Absensi Datang',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  _isFetchingLocation
                                      ? 'Mendapatkan lokasi...'
                                      : latitude != null
                                      ? 'Lokasi tersedia'
                                      : 'Lokasi tidak tersedia',
                                  style: const TextStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                            if (latitude != null && longitude != null)
                              Icon(
                                Icons.location_on,
                                color: AppColors.white,
                                size: 30.0,
                              )
                            else
                              Icon(
                                Icons.location_off,
                                color: AppColors.white.withOpacity(0.5),
                                size: 30.0,
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const SizedBox(height: 15.0),
                      Row(
                        children: [
                          IconButton(
                            onPressed: _reverseCamera,
                            icon: const Icon(
                              Icons.flip_camera_ios,
                              size: 48.0,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          BlocConsumer<AttendanceBloc, AttendanceState>(
                            listener: (context, state) {
                              if (state.clockInError != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(state.clockInError!),
                                    backgroundColor: AppColors.error,
                                  ),
                                );
                              } else if (state.clockInData != null &&
                                  state.clockInSuccessMessage != null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(state.clockInSuccessMessage!),
                                    backgroundColor: AppColors.success,
                                  ),
                                );
                                // Navigate back or to success screen
                                Navigator.of(context).pop();
                              }
                            },
                            builder: (context, state) {
                              if (state.isClockInLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                );
                              }
                              return IconButton(
                                onPressed:
                                    isFaceRegistered &&
                                        !_isFetchingLocation &&
                                        latitude != null &&
                                        longitude != null
                                    ? _takeAbsen
                                    : null,
                                icon: const Icon(Icons.circle, size: 70.0),
                                color:
                                    isFaceRegistered &&
                                        !_isFetchingLocation &&
                                        latitude != null &&
                                        longitude != null
                                    ? AppColors.error
                                    : AppColors.neutral400,
                              );
                            },
                          ),
                          const Spacer(),
                          const SizedBox(width: 48.0),
                        ],
                      ),
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
