import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  /// Event yang dipicu saat pengguna menekan tombol login.
  const factory AuthEvent.loginButtonPressed({
    required String login,
    required String password,
  }) = _LoginButtonPressed;

  const factory AuthEvent.logoutButtonPressed() = _LogoutButtonPressed;
}
