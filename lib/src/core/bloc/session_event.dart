import 'package:freezed_annotation/freezed_annotation.dart';
part 'session_event.freezed.dart';

@freezed
abstract class SessionEvent with _$SessionEvent {
  /// Dipicu saat aplikasi dimulai untuk memeriksa sesi
  const factory SessionEvent.sessionStarted() = _SessionStarted;

  /// Dipicu saat pengguna berhasil login
  const factory SessionEvent.sessionLoggedIn() = _SessionLoggedIn;

  /// Dipicu saat pengguna logout
  const factory SessionEvent.sessionLoggedOut({
    String? message,
    @Default(false) bool isManualLogout,
  }) = _SessionLoggedOut;

  const factory SessionEvent.refreshTokenTriggered() = _RefreshTokenTriggered;
}
