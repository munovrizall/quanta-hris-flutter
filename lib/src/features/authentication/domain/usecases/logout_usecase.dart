import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

/// UseCase yang bertanggung jawab untuk satu tugas: melakukan login.
class LogoutUseCase {
  final AuthRepository _authRepository;
  final SessionStorageRepository _sessionStorageRepository;

  LogoutUseCase({
    required AuthRepository authRepository,
    required SessionStorageRepository sessionStorageRepository,
  }) : _authRepository = authRepository,
       _sessionStorageRepository = sessionStorageRepository;

  /// Method 'call' memungkinkan class ini dipanggil seperti fungsi.
  Future<void> call() async {
    try {
      await _authRepository.logout();
    } finally {
      await _sessionStorageRepository.clear();
    }
  }
}
