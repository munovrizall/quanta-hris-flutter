import 'dart:async';
import 'package:quanta_hris/src/core/bloc/session_event.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/user_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/usecases/refresh_token_usecase.dart';
import 'package:quanta_hris/src/features/splash/domain/usecases/check_session_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final CheckSessionUseCase _checkSessionUseCase;
  final RefreshTokenUseCase _refreshTokenUseCase;
  final SessionStorageRepository _sessionStorage;
  Timer? _refreshTimer;

  SessionBloc({
    required CheckSessionUseCase checkSessionUseCase,
    required RefreshTokenUseCase refreshTokenUseCase,
    required SessionStorageRepository sessionStorage,
  }) : _checkSessionUseCase = checkSessionUseCase,
       _refreshTokenUseCase = refreshTokenUseCase,
       _sessionStorage = sessionStorage,
       super(const SessionState.initial()) {
    on<SessionEvent>((event, emit) async {
      await event.when(
        sessionStarted: () => _onSessionStarted(emit),
        sessionLoggedIn: () => _onSessionLoggedIn(emit),
        sessionLoggedOut: (message, isManualLogout) =>
            _onSessionLoggedOut(emit, message, isManualLogout),
        refreshTokenTriggered: () => _onRefreshTokenTriggered(emit),
      );
    });
  }

  Future<void> _onSessionStarted(Emitter<SessionState> emit) async {
    _log('Session started - checking existing session');

    final results = await Future.wait([
      _checkSessionUseCase(),
      Future.delayed(const Duration(seconds: 2)),
    ]);

    final user = results[0] as UserEntity?;

    if (user != null) {
      _log('User found in session: ${user.firstName}');
      emit(SessionState.authenticated(user: user));
      _scheduleRefresh();
    } else {
      _log('No user found in session');
      emit(const SessionState.unauthenticated());
    }
  }

  Future<void> _onSessionLoggedIn(Emitter<SessionState> emit) async {
    _log('Session logged in event received');
    final user = await _checkSessionUseCase();
    if (user != null) {
      _log('User logged in: ${user.firstName}');
      emit(SessionState.authenticated(user: user));
      _scheduleRefresh();
    }
  }

  Future<void> _onSessionLoggedOut(
    Emitter<SessionState> emit, [
    String? message,
    bool isManualLogout = false,
  ]) async {
    if (isManualLogout) {
      _log('Manual logout initiated by user');
    } else {
      _log('Automatic logout: ${message ?? "Session expired"}');
    }
    _refreshTimer?.cancel();

    try {
      // Bersihkan semua data session
      await _sessionStorage.clear();
      _log('Session storage cleared successfully');
    } catch (e) {
      _logError('Error clearing session storage', e);
    }

    // Tentukan message berdasarkan jenis logout
    final logoutMessage = isManualLogout
        ? 'Logout berhasil.'
        : (message ?? 'Sesi Anda telah berakhir. Silakan login kembali.');

    emit(SessionState.unauthenticated(message: logoutMessage));
  }

  Future<void> _onRefreshTokenTriggered(Emitter<SessionState> emit) async {
    try {
      _log('Proactive token refresh triggered...');
      await _refreshTokenUseCase();
      _log('Proactive token refresh successful!');
      // Setelah berhasil, jadwalkan refresh berikutnya
      _scheduleRefresh();
    } catch (e) {
      _logError('Proactive token refresh failed', e);

      if (e is UnauthorizedException) {
        _log('Refresh token dianggap tidak valid, memicu logout.');
        add(
          const SessionEvent.sessionLoggedOut(
            message: 'Sesi Anda telah berakhir. Silakan login kembali.',
            isManualLogout: false,
          ),
        );
        return;
      }

      const retryDelay = Duration(minutes: 1);
      _log(
        'Kemungkinan gangguan jaringan. Menjadwalkan ulang refresh token '
        'dalam ${retryDelay.inSeconds} detik.',
      );

      _refreshTimer?.cancel();
      _refreshTimer = Timer(retryDelay, () {
        _log('Retry timer triggered setelah kegagalan sementara.');
        add(const SessionEvent.refreshTokenTriggered());
      });
    }
  }

  void _scheduleRefresh() {
    _refreshTimer?.cancel();
    _sessionStorage
        .getAuth()
        .then((auth) {
          if (auth != null && auth.expiresAt != null) {
            _log('🔍 Raw expiresAt from storage: ${auth.expiresAt}');

            // Coba deteksi format timestamp
            final rawTimestamp = auth.expiresAt!;
            DateTime expiresAt;

            // Jika nilai > 1000000000000 (lebih dari 1 trillion), kemungkinan milliseconds
            if (rawTimestamp > 1000000000000) {
              expiresAt = DateTime.fromMillisecondsSinceEpoch(rawTimestamp);
              _log('📅 Detected milliseconds format');
            } else {
              // Asumsi seconds
              expiresAt = DateTime.fromMillisecondsSinceEpoch(
                rawTimestamp * 1000,
              );
              _log('📅 Detected seconds format');
            }

            final now = DateTime.now();
            _log('⏰ Current time: $now');
            _log('⏱️ Token expires at: $expiresAt');

            // Jadwalkan refresh 5 menit sebelum token kedaluwarsa
            final refreshTime = expiresAt.subtract(const Duration(minutes: 5));
            _log('🔄 Refresh scheduled for: $refreshTime');

            if (refreshTime.isAfter(now)) {
              final refreshDelay = refreshTime.difference(now);
              _log(
                '⏳ Token refresh scheduled in ${refreshDelay.inMinutes} minutes (${refreshDelay.inSeconds} seconds).',
              );

              _refreshTimer = Timer(refreshDelay, () {
                _log('🚀 Timer triggered - executing refresh');
                add(const SessionEvent.refreshTokenTriggered());
              });
            } else {
              _log('⚡ Token is about to expire, refreshing now.');
              add(const SessionEvent.refreshTokenTriggered());
            }

            // Debug: cek berapa lama lagi token expired
            final timeUntilExpiry = expiresAt.difference(now);
            _log(
              '⏱️ Time until token expiry: ${timeUntilExpiry.inMinutes} minutes',
            );
          } else {
            _log('❌ No auth data or expiresAt found for scheduling refresh');
          }
        })
        .catchError((error) {
          _logError('Error getting auth data for refresh scheduling', error);
        });
  }

  void _log(String message) {
    AppLogger.i('SESSION BLOC: $message');
  }

  void _logError(String message, dynamic error) {
    AppLogger.e('SESSION BLOC ERROR: $message', error: error);
  }

  @override
  Future<void> close() {
    _refreshTimer?.cancel();
    return super.close();
  }
}
