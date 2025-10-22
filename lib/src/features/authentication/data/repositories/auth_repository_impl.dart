import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/authentication/data/datasources/auth_remote_data_source.dart';
import 'package:quanta_hris/src/features/authentication/data/models/login_request.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<AuthEntity> login({
    required String email,
    required String password,
  }) async {
    try {
      final requestModel = LoginRequest(email: email, password: password);

      final responseModel = await _remoteDataSource.login(
        requestModel: requestModel,
      );

      final data = responseModel.data;

      final authEntity = AuthEntity(
        token: data.token,
        user: UserEntity(
          karyawanId: data.user.karyawanId,
          namaLengkap: data.user.namaLengkap,
          email: data.user.email,
          role: RoleEntity(
            roleId: data.user.role.roleId,
            name: data.user.role.name,
            guardName: data.user.role.guardName,
            createdAt: data.user.role.createdAt,
            updatedAt: data.user.role.updatedAt,
          ),
          departemen: data.user.departemen,
          jabatan: data.user.jabatan,
          nomorTelepon: data.user.nomorTelepon,
          faceEmbedding: data.user.faceEmbedding,
        ),
      );

      return authEntity;
    } on ApiException {
      // Jika error sudah berupa ApiException, lempar kembali agar bisa ditangani oleh BLoC
      rethrow;
    } catch (e) {
      // Menangkap error tak terduga lainnya
      throw ApiException("An unexpected error occurred in the repository.");
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _remoteDataSource.logout();
    } on ApiException {
      // Jika error sudah berupa ApiException, lempar kembali agar bisa ditangani oleh BLoC
      rethrow;
    } catch (e) {
      // Menangkap error tak terduga lainnya
      throw ApiException("An unexpected error occurred in the repository.");
    }
  }
}
