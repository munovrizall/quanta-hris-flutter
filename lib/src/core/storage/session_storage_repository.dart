import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/user_entity.dart';

// Kontrak untuk penyimpanan sesi
abstract class SessionStorageRepository {
  Future<void> saveAuth(AuthEntity auth);
  Future<void> saveUser(UserEntity user);

  Future<AuthEntity?> getAuth();
  Future<UserEntity?> getUser();

  Future<void> clear();
}
