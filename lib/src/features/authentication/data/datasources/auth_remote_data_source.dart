import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/features/authentication/data/models/login_request.dart';
import 'package:quanta_hris/src/features/authentication/data/models/login_response.dart';
import 'package:quanta_hris/src/features/authentication/data/models/refresh_token_request.dart';
import 'package:quanta_hris/src/features/authentication/data/models/refresh_token_response.dart';
import 'package:quanta_hris/src/features/authentication/data/models/register_request.dart';
import 'package:quanta_hris/src/features/authentication/data/models/register_response.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  Future<ApiResponseModel<LoginResponse>> login({
    required LoginRequest requestModel,
  });

  Future<ApiResponseModel<dynamic>> logout();

  Future<ApiResponseModel<RefreshTokenResponse>> refreshToken({
    required RefreshTokenRequest requestModel,
  });

  Future<ApiResponseModel<RegisterResponse>> register({
    required RegisterRequest requestModel,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<LoginResponse>> login({
    required LoginRequest requestModel,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.auth.login,
        data: requestModel.toJson(),
      );

      return ApiResponseModel.fromJson(
        response.data,
        (json) => LoginResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      // Handle login-specific errors
      if (error is DioException && error.response?.statusCode == 401) {
        throw UnauthorizedException(AppStrings.auth.errorInvalidCredentials);
      }

      // For other errors, use the general error handler
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<dynamic>> logout() async {
    try {
      final storage = getIt<SessionStorageRepository>();
      final auth = await storage.getAuth();

      final response = await _dio.post(
        ApiEndpoints.auth.logout,
        options: Options(
          headers: {
            if (auth?.accessToken != null)
              'Authorization': 'Bearer ${auth!.accessToken}',
          },
        ),
      );

      return ApiResponseModel.fromJson(
        response.data,
        (json) => json as dynamic,
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<RefreshTokenResponse>> refreshToken({
    required RefreshTokenRequest requestModel,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.auth.refreshToken,
        data: requestModel.toJson(),
      );

      return ApiResponseModel.fromJson(
        response.data,
        (json) => RefreshTokenResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<RegisterResponse>> register({
    required RegisterRequest requestModel,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.auth.register,
        data: requestModel.toJson(),
      );

      return ApiResponseModel.fromJson(
        response.data,
        (json) => RegisterResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
