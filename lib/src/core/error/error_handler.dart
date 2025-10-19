import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:dio/dio.dart';

import 'app_exception.dart';

class ErrorHandler {
  const ErrorHandler._();

  static ApiException handle(dynamic error) {
    if (error is DioException) {
      // DioException adalah error utama dari Dio, mencakup semua jenis error jaringan.
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return TimeoutException(AppStrings.error.connectionTimeout);

        case DioExceptionType.badResponse:
          // Terjadi saat server merespons dengan status code non-2xx.
          if (error.response != null) {
            switch (error.response!.statusCode) {
              case 400:
                // Biasanya untuk validasi error.
                return BadRequestException(
                  error.response?.data['message'] ??
                      AppStrings.error.badRequest,
                );
              case 401:
                return UnauthorizedException(AppStrings.error.unauthorized);
              case 404:
                return NotFoundException(AppStrings.error.notFound);
              case 500:
              default:
                return ServerException(AppStrings.error.internalServerError);
            }
          }
          return ServerException(AppStrings.error.unexpectedError);

        case DioExceptionType.cancel:
          return ApiException(AppStrings.error.requestCancelled);

        case DioExceptionType.connectionError:
          return NoInternetException(AppStrings.error.noInternetConnection);

        case DioExceptionType.unknown:
        default:
          // Bisa jadi error karena tidak ada koneksi internet
          if (error.message?.contains('SocketException') ?? false) {
            return NoInternetException(AppStrings.error.noInternetConnection);
          }
          return ApiException(AppStrings.error.unexpectedError);
      }
    }
    // Jika error bukan DioException, lempar sebagai exception umum.
    return ApiException("${AppStrings.error.genericError}${error.toString()}");
  }
}
