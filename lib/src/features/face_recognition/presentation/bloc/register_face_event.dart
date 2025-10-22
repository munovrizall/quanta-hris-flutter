import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_face_event.freezed.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.updateProfileRegisterFace(
      String embedding, XFile? image) = _UpdateProfileRegisterFace;
}