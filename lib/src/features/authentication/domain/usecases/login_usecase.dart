import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

/// UseCase yang bertanggung jawab untuk satu tugas: melakukan login.
class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  /// Method 'call' memungkinkan class ini dipanggil seperti fungsi.
  Future<AuthResult> call({required String login, required String password}) {
    return _repository.login(login: login, password: password);
  }
}
