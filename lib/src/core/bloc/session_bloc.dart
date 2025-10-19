import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_event.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/splash/domain/usecases/check_session_usecase.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final CheckSessionUseCase _checkSessionUseCase;
  final SessionStorageRepository _sessionStorage;
  Timer? _refreshTimer;

  SessionBloc({
    required CheckSessionUseCase checkSessionUseCase,
    required SessionStorageRepository sessionStorage,
  }) : _checkSessionUseCase = checkSessionUseCase,
       _sessionStorage = sessionStorage,
       super(const SessionState.initial()) {
    on<SessionEvent>((event, emit) async {
      await event.when(
        sessionStarted: () => _onSessionStarted(emit),
        sessionLoggedIn: () => _onSessionLoggedIn(emit),
        sessionLoggedOut: (message, isManualLogout) =>
            _onSessionLoggedOut(emit, message, isManualLogout),
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
      _log('User found in session: ${user.namaLengkap}');
      emit(SessionState.authenticated(user: user));
    } else {
      _log('No user found in session');
      emit(const SessionState.unauthenticated());
    }
  }

  Future<void> _onSessionLoggedIn(Emitter<SessionState> emit) async {
    _log('Session logged in event received');
    final user = await _checkSessionUseCase();
    if (user != null) {
      _log('User logged in: ${user.namaLengkap}');
      emit(SessionState.authenticated(user: user));
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
