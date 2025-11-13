import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';

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
            final statusCode = error.response!.statusCode;
            final serverMessage = _extractServerMessage(error.response!.data);

            switch (error.response!.statusCode) {
              case 400:
                // Biasanya untuk validasi error.
                return BadRequestException(
                  serverMessage ?? AppStrings.error.badRequest,
                );
              case 401:
                return UnauthorizedException(
                  serverMessage ?? AppStrings.error.unauthorized,
                );
              case 404:
                return NotFoundException(
                  serverMessage ?? AppStrings.error.notFound,
                );
              case 422:
                return UnprocessableEntityException(
                  serverMessage ?? AppStrings.error.unexpectedError,
                );
              case 500:
              default:
                if (statusCode != null && statusCode >= 500) {
                  return ServerException(
                    serverMessage ?? AppStrings.error.internalServerError,
                  );
                }

                return ApiException(
                  serverMessage ?? AppStrings.error.unexpectedError,
                  statusCode,
                );
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

  static String? _extractServerMessage(dynamic data) {
    if (data == null) return null;

    if (data is Map<String, dynamic>) {
      final message = data['message'];
      if (message is String && message.trim().isNotEmpty) {
        return message;
      }
    }

    if (data is String && data.trim().isNotEmpty) {
      return data;
    }

    return null;
  }
}
