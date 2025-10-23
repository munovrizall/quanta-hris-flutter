import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

part 'face_recognition_state.freezed.dart';

@freezed
abstract class FaceRecognitionState with _$FaceRecognitionState {
  const factory FaceRecognitionState({
    @Default(null) UserEntity? registeredFaceData,
    @Default(false) bool isRegisterFaceLoading,
    @Default(null) String? registerFaceError,
  }) = _FaceRecognitionState;

  const FaceRecognitionState._();

  bool get isLoadingAny => isRegisterFaceLoading;

  bool get hasAnyError => registerFaceError != null;
}
