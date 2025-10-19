import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final SessionStorageRepository _sessionStorageRepository;

  AuthInterceptor(this._sessionStorageRepository);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Periksa apakah request ini BUKAN untuk endpoint login
    if (options.path != ApiEndpoints.auth.login) {
      // Jika bukan login, ambil token dari storage
      final token = await _sessionStorageRepository.getToken();

      if (token != null) {
        // Jika token ada, tambahkan ke header
        options.headers['Authorization'] = 'Bearer $token';
      }
    }

    // Lanjutkan request, baik dengan atau tanpa header token
    return handler.next(options);
  }
}
