import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future<AuthEntity> login({required String email, required String password});

  Future<dynamic> logout();
}
