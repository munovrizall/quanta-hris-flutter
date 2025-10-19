import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/user_entity.dart';

class CheckSessionUseCase {
  final SessionStorageRepository _sessionStorageRepository;

  CheckSessionUseCase(this._sessionStorageRepository);

  Future<UserEntity?> call() async {
    final authFuture = _sessionStorageRepository.getAuth();
    final userFuture = _sessionStorageRepository.getUser();

    final auth = await authFuture;
    final user = await userFuture;

    if (auth != null && user != null) {
      return user;
    } else {
      return null;
    }
  }
}
