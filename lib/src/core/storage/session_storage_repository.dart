import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

// Kontrak untuk penyimpanan sesi
abstract class SessionStorageRepository {
  Future<void> saveToken(String auth);
  Future<void> saveUser(UserEntity user);

  Future<String?> getToken();
  Future<UserEntity?> getUser();

  Future<void> clear();
}
