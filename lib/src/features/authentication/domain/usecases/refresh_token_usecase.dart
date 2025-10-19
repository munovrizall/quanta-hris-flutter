import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

/// UseCase yang bertanggung jawab untuk satu tugas: melakukan login.
class RefreshTokenUseCase {
  final AuthRepository _authRepository;
  final SessionStorageRepository _sessionStorageRepository;

  RefreshTokenUseCase({
    required AuthRepository authRepository,
    required SessionStorageRepository sessionStorageRepository,
  }) : _authRepository = authRepository,
       _sessionStorageRepository = sessionStorageRepository;

  /// Method 'call' memungkinkan class ini dipanggil seperti fungsi.
  Future<AuthEntity> call() async {
    final oldAuth = await _sessionStorageRepository.getAuth();
    final refreshToken = oldAuth?.refreshToken;

    if (refreshToken == null) {
      throw UnauthorizedException("Anda diharuskan untuk login kembali.");
    }

    return await _authRepository.refreshToken(refreshToken: refreshToken);
  }
}
