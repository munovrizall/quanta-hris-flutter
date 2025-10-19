import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/user_entity.dart';

// Tipe data custom untuk menggabungkan User dan Auth entities
class AuthResult {
  final UserEntity user;
  final AuthEntity auth;
  AuthResult(this.user, this.auth);
}

abstract class AuthRepository {
  Future<AuthResult> login({required String login, required String password});

  Future<dynamic> logout();

  Future<AuthEntity> refreshToken({required String refreshToken});

  Future<AuthResult> register({
    required String title,
    required String fullName,
    required String email,
    required String password,
    required String passwordConfirmation,
  });

  Future<String?> getRefreshToken();
}
