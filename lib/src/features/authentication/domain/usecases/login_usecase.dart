import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

/// UseCase yang bertanggung jawab untuk satu tugas: melakukan login.
class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  /// Method 'call' memungkinkan class ini dipanggil seperti fungsi.
  Future<AuthEntity> call({required String email, required String password}) {
    return _repository.login(email: email, password: password);
  }
}
