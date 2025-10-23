import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_recognition_event.freezed.dart';

@freezed
abstract class FaceRecognitionEvent with _$FaceRecognitionEvent {
  const factory FaceRecognitionEvent.updateProfileRegisterFace(
    String embedding,
    XFile? image,
  ) = _UpdateProfileRegisterFace;
}
