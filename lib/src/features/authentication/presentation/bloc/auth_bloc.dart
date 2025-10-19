import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_event.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart'; // ✅ Tambah import untuk logging
import 'package:quanta_hris/src/features/authentication/domain/usecases/login_usecase.dart';
import 'package:quanta_hris/src/features/authentication/domain/usecases/logout_usecase.dart';
import 'package:quanta_hris/src/features/authentication/domain/usecases/register_usecase.dart';
import 'package:quanta_hris/src/features/authentication/domain/usecases/save_session_usecase.dart';
import 'package:flutter/foundation.dart'; // ✅ Untuk kDebugMode
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final SaveSessionUseCase _saveSessionUseCase;
  final RegisterUseCase _registerUseCase;
  final LogoutUseCase _logoutUseCase;
  final SessionBloc _sessionBloc;

  AuthBloc({
    required LoginUseCase loginUseCase,
    required SaveSessionUseCase saveSessionUseCase,
    required RegisterUseCase registerUseCase,
    required LogoutUseCase logoutUseCase,
    required SessionBloc sessionBloc,
  }) : _loginUseCase = loginUseCase,
       _saveSessionUseCase = saveSessionUseCase,
       _registerUseCase = registerUseCase,
       _logoutUseCase = logoutUseCase,
       _sessionBloc = sessionBloc,
       super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        loginButtonPressed: (login, password) =>
            _onLoginButtonPressed(login, password, emit),
        logoutButtonPressed: () => _onLogoutButtonPressed(emit),
        registerButtonPressed:
            (title, fullName, email, password, passwordConfirmation) =>
                _onRegisterButtonPressed(
                  title,
                  fullName,
                  email,
                  password,
                  passwordConfirmation,
                  emit,
                ),
      );
    });
  }

  Future<void> _onLoginButtonPressed(
    String login,
    String password,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final result = await _loginUseCase(login: login, password: password);

      // Panggil UseCase untuk menyimpan sesi
      await _saveSessionUseCase(result);

      _sessionBloc.add(const SessionEvent.sessionLoggedIn());
      emit(AuthState.success(user: result.user));
    } on ApiException catch (e) {
      emit(AuthState.failure(error: e));
    }
  }

  Future<void> _onRegisterButtonPressed(
    String title,
    String fullName,
    String email,
    String password,
    String passwordConfirmation,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final result = await _registerUseCase(
        title: title,
        fullName: fullName,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );

      // Panggil UseCase untuk menyimpan sesi
      await _saveSessionUseCase(result);

      _sessionBloc.add(const SessionEvent.sessionLoggedIn());
      emit(AuthState.success(user: result.user));
    } on ApiException catch (e) {
      emit(AuthState.failure(error: e));
    }
  }

  // ✅ Fix method signature - hapus parameter LogoutButtonPressed
  Future<void> _onLogoutButtonPressed(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      _log('🚪 Manual logout initiated by user');

      await _logoutUseCase();

      _log('✅ Manual logout successful');
      emit(const AuthState.loggedOut());

      // ✅ Manual logout dengan message sukses
      _sessionBloc.add(
        const SessionEvent.sessionLoggedOut(
          message: 'Logout berhasil. Terima kasih telah menggunakan aplikasi.',
          isManualLogout: true,
        ),
      );
    } catch (e) {
      _logError('❌ Manual logout failed', e);
      emit(AuthState.error(e.toString()));

      // Jika logout gagal, tetap clear session dengan message error
      _sessionBloc.add(
        const SessionEvent.sessionLoggedOut(
          message: 'Logout berhasil (offline mode).',
          isManualLogout: true,
        ),
      );
    }
  }

  // ✅ Tambah helper methods untuk logging
  void _log(String message) {
    if (kDebugMode) {
      AppLogger.i('🔐 AUTH BLOC: $message');
    }
  }

  void _logError(String message, dynamic error) {
    if (kDebugMode) {
      AppLogger.e('❌ AUTH BLOC ERROR: $message - Error: $error');
    }
  }
}
