import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

class SaveSessionUseCase {
  final SessionStorageRepository _sessionStorageRepository;

  SaveSessionUseCase(this._sessionStorageRepository);

  // UseCase ini mengambil LoginResult dan menyimpannya.
  Future<void> call(AuthResult loginResult) async {
    await _sessionStorageRepository.saveAuth(loginResult.auth);
    await _sessionStorageRepository.saveUser(loginResult.user);
  }
}
