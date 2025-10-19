import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  /// State awal, saat halaman baru dimuat.
  const factory AuthState.initial() = _Initial;

  /// State saat sedang memproses login, UI harus menampilkan loading indicator.
  const factory AuthState.loading() = _Loading;

  /// State saat login berhasil, membawa data pengguna.
  const factory AuthState.success({required UserEntity user}) = _Success;

  /// State saat login gagal, membawa pesan error untuk ditampilkan.
  const factory AuthState.failure({required ApiException error}) = _Failure;

  const factory AuthState.loggedOut() = _LoggedOut;

  const factory AuthState.error(String message) = _Error;
}
