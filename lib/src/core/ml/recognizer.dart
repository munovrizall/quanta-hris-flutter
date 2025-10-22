import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:image/image.dart' as img;
import 'package:quanta_hris/src/core/ml/recognition_embedding.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

class Recognizer {
  late Interpreter interpreter;
  late InterpreterOptions _interpreterOptions;
  final SessionStorageRepository _sessionStorage;

  static const int WIDTH = 112;
  static const int HEIGHT = 112;

  String get modelName => 'assets/mobile_face_net.tflite';

  Future<void> loadModel() async {
    try {
      interpreter = await Interpreter.fromAsset(modelName);
    } catch (e) {
      AppLogger.d(
        'Unable to create interpreter, Caught Exception: ${e.toString()}',
      );
    }
  }

  Recognizer({
    required SessionStorageRepository sessionStorage,
    int? numThreads,
  }) : _sessionStorage = sessionStorage {
    _interpreterOptions = InterpreterOptions();

    if (numThreads != null) {
      _interpreterOptions.threads = numThreads;
    }
    loadModel();
  }

  List<dynamic> imageToArray(img.Image inputImage) {
    img.Image resizedImage = img.copyResize(
      inputImage,
      width: WIDTH,
      height: HEIGHT,
    );
    List<double> flattenedList = resizedImage.data!
        .expand((channel) => [channel.r, channel.g, channel.b])
        .map((value) => value.toDouble())
        .toList();
    Float32List float32Array = Float32List.fromList(flattenedList);
    int channels = 3;
    int height = HEIGHT;
    int width = WIDTH;
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
    var input = imageToArray(image);
    AppLogger.d(input.shape.toString());

    List output = List.filled(1 * 192, 0).reshape([1, 192]);

    final runs = DateTime.now().millisecondsSinceEpoch;
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
