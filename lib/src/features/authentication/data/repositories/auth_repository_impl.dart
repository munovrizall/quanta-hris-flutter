import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/features/authentication/data/datasources/auth_remote_data_source.dart';
import 'package:quanta_hris/src/features/authentication/data/models/login_request.dart';
import 'package:quanta_hris/src/features/authentication/data/models/refresh_token_request.dart';
import 'package:quanta_hris/src/features/authentication/data/models/register_request.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/user_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final SessionStorageRepository _sessionStorageRepository;

  AuthRepositoryImpl(this._remoteDataSource, this._sessionStorageRepository);

  @override
  Future<AuthResult> login({
    required String login,
    required String password,
  }) async {
    try {
      final requestModel = LoginRequest(login: login, password: password);

      final responseModel = await _remoteDataSource.login(
        requestModel: requestModel,
      );

      // Proses mapping dari LoginDataModel (data) ke Entities (domain)
      final userEntity = UserEntity(
        id: responseModel.data.user.id,
        firstName: responseModel.data.user.firstName,
        lastName: responseModel.data.user.lastName,
        email: responseModel.data.user.email,
        roleName: responseModel.data.roleName,
        clientId: responseModel.data.user.clientId,
      );

      final authEntity = AuthEntity(
        accessToken: responseModel.data.token,
        refreshToken: responseModel.data.refreshToken,
        expiresAt: responseModel.data.expiresAt,
      );

      return AuthResult(userEntity, authEntity);
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

  @override
  Future<AuthEntity> refreshToken({required String refreshToken}) async {
    try {
      final requestModel = RefreshTokenRequest(refreshToken: refreshToken);

      final responseModel = await _remoteDataSource.refreshToken(
        requestModel: requestModel,
      );

      // Proses mapping dari LoginDataModel (data) ke Entities (domain)
      final refreshTokenEntity = AuthEntity(
        accessToken: responseModel.data.token,
        refreshToken: responseModel.data.refreshToken,
        expiresAt: responseModel.data.expiresAt,
      );

      // Simpan token baru ke storage
      await _sessionStorageRepository.saveAuth(refreshTokenEntity);

      return refreshTokenEntity;
    } on ApiException {
      // Jika error sudah berupa ApiException, lempar kembali agar bisa ditangani oleh BLoC
      rethrow;
    } catch (e) {
      // Menangkap error tak terduga lainnya
      throw ApiException("An unexpected error occurred in the repository.");
    }
  }

  @override
  Future<AuthResult> register({
    required String title,
    required String fullName,
    required String email,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      final requestModel = RegisterRequest(
        title: title,
        fullName: fullName,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );

      final responseModel = await _remoteDataSource.register(
        requestModel: requestModel,
      );

      // Proses mapping dari LoginDataModel (data) ke Entities (domain)
      final userEntity = UserEntity(
        id: responseModel.data.user.id,
        firstName: responseModel.data.user.firstName,
        lastName: responseModel.data.user.lastName,
        email: responseModel.data.user.email,
        roleName: responseModel.data.roleName,
        clientId: responseModel.data.user.clientId,
      );

      final authEntity = AuthEntity(
        accessToken: responseModel.data.token,
        refreshToken: responseModel.data.refreshToken,
        expiresAt: responseModel.data.expiresAt,
      );

      return AuthResult(userEntity, authEntity);
    } on ApiException {
      // Jika error sudah berupa ApiException, lempar kembali agar bisa ditangani oleh BLoC
      rethrow;
    } catch (e) {
      // Menangkap error tak terduga lainnya
      throw ApiException("An unexpected error occurred in the repository.");
    }
  }

  @override
  Future<String?> getRefreshToken() async {
    final auth = await _sessionStorageRepository.getAuth();
    return auth?.refreshToken;
  }
}
