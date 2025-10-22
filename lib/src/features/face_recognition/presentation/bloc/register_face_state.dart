import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

part 'register_face_state.freezed.dart';

@freezed
abstract class RegisterFaceState with _$RegisterFaceState {
  const factory RegisterFaceState({
    @Default(null) UserEntity? registeredFaceData,
    @Default(false) bool isRegisterFaceLoading,
    @Default(null) String? registerFaceError,
  }) = _RegisterFaceState;

  const RegisterFaceState._();

  bool get isLoadingAny => isRegisterFaceLoading;

  bool get hasAnyError => registerFaceError != null;
}
