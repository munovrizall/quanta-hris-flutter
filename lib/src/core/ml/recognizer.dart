import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:image/image.dart' as img;
import 'package:quanta_hris/src/core/ml/recognition_embedding.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class Recognizer {
  Interpreter? _interpreter;
  late final InterpreterOptions _interpreterOptions;
  final SessionStorageRepository _sessionStorage;
  Future<void>? _initialization;

  static const int _inputWidth = 112;
  static const int _inputHeight = 112;

  String get modelName => 'assets/mobile_face_net.tflite';

  Recognizer({
    required SessionStorageRepository sessionStorage,
    int? numThreads,
  }) : _sessionStorage = sessionStorage {
    _interpreterOptions = InterpreterOptions();

    if (numThreads != null) {
      _interpreterOptions.threads = numThreads;
    }
  }

  bool get isLoaded => _interpreter != null;

  Future<void> loadModel() {
    _initialization ??= _createInterpreter();
    return _initialization!;
  }

  Future<void> _createInterpreter() async {
    if (_interpreter != null) {
      return;
    }

    try {
      _interpreter = await Interpreter.fromAsset(
        modelName,
        options: _interpreterOptions,
      );
    } catch (e) {
      AppLogger.d(
        'Unable to create interpreter, Caught Exception: ${e.toString()}',
      );
      rethrow;
    }
  }

  Interpreter get _ensureInterpreter {
    final interpreter = _interpreter;
    if (interpreter == null) {
      throw StateError('Face recognition interpreter has not been loaded.');
    }
    return interpreter;
  }

  List<dynamic> imageToArray(img.Image inputImage) {
    img.Image resizedImage = img.copyResize(
      inputImage,
      width: _inputWidth,
      height: _inputHeight,
    );
    List<double> flattenedList = resizedImage.data!
        .expand((channel) => [channel.r, channel.g, channel.b])
        .map((value) => value.toDouble())
        .toList();
    Float32List float32Array = Float32List.fromList(flattenedList);
    int channels = 3;
    int height = _inputHeight;
    int width = _inputWidth;
    Float32List reshapedArray = Float32List(1 * height * width * channels);
    for (int c = 0; c < channels; c++) {
      for (int h = 0; h < height; h++) {
        for (int w = 0; w < width; w++) {
          int index = c * height * width + h * width + w;
          reshapedArray[index] =
              (float32Array[c * height * width + h * width + w] - 127.5) /
              127.5;
        }
      }
    }
    return reshapedArray.reshape([1, 112, 112, 3]);
  }

  RecognitionEmbedding recognize(img.Image image, Rect location) {
    final interpreter = _ensureInterpreter;
    var input = imageToArray(image);
    AppLogger.d(input.shape.toString());

    List output = List.filled(1 * 192, 0).reshape([1, 192]);

    interpreter.run(input, output);

    List<double> outputArray = output.first.cast<double>();

    return RecognitionEmbedding(location, outputArray);
  }

  PairEmbedding findNearest(List<double> emb, List<double> authFaceEmbedding) {
    PairEmbedding pair = PairEmbedding(-5);

    double distance = 0;
    for (int i = 0; i < emb.length; i++) {
      double diff = emb[i] - authFaceEmbedding[i];
      distance += diff * diff;
    }
    distance = sqrt(distance);
    if (pair.distance == -5 || distance < pair.distance) {
      pair.distance = distance;
    }
    return pair;
  }

  Future<bool> isValidFace(List<double> emb) async {
    final userData = await _sessionStorage.getUser();
    final faceEmbedding = userData?.faceEmbedding;

    if (faceEmbedding == null) {
      return false;
    }

    PairEmbedding pair = findNearest(
      emb,
      faceEmbedding.split(',').map((e) => double.parse(e)).toList(),
    );

    AppLogger.d("distance= ${pair.distance}");
    return pair.distance < 1.0;
  }
}

class PairEmbedding {
  double distance;
  PairEmbedding(this.distance);
}
