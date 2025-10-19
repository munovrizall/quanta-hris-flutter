import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

/// UseCase yang bertanggung jawab untuk satu tugas: melakukan login.
class RegisterUseCase {
  final AuthRepository _repository;

  RegisterUseCase(this._repository);

  /// Method 'call' memungkinkan class ini dipanggil seperti fungsi.
  Future<AuthResult> call({
    required String title,
    required String fullName,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) {
    return _repository.register(
      title: title,
      fullName: fullName,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );
  }
}
