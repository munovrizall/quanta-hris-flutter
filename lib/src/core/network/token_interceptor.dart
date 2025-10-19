import 'dart:async';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class TokenInterceptor extends QueuedInterceptorsWrapper {
  final AuthRepository _authRepository;
  final Dio _dio;
  final Function(String)?
  onUnauthorized; // ✅ Update callback type to accept String

  bool _isRefreshing = false;
  Completer<AuthEntity?>? _refreshCompleter;

  TokenInterceptor(this._authRepository, this._dio, {this.onUnauthorized});

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    _logError('TokenInterceptor onError called', err);

    // Hanya tangani error 401
    if (err.response?.statusCode != 401) {
      _log('Not a 401 error (${err.response?.statusCode}), passing through');
      return handler.next(err);
    }

    final requestPath = err.requestOptions.path;
    final baseUrl = err.requestOptions.baseUrl;
    final fullUrl = '$baseUrl$requestPath';

    _log('401 Error detected for: $fullUrl');

    // Jangan handle untuk endpoint login dan logout
    final loginEndpoint = '$baseUrl${ApiEndpoints.auth.login}';
    final logoutEndpoint = '$baseUrl${ApiEndpoints.auth.logout}';
    final refreshEndpoint = '$baseUrl${ApiEndpoints.auth.refreshToken}';

    if (fullUrl == loginEndpoint) {
      _log('Login endpoint 401 - passing through');
      return handler.next(err);
    }

    if (fullUrl == refreshEndpoint) {
      _log('Refresh token endpoint 401 - token expired, triggering logout');
      _handleUnauthorized('Refresh token kedaluwarsa. Silakan login kembali.');
      return handler.next(err);
    }

    if (fullUrl == logoutEndpoint) {
      _log('Logout endpoint 401 - treating as success');
      final response = Response(
        requestOptions: err.requestOptions,
        statusCode: 200,
        data: {'message': 'Logged out successfully'},
      );
      return handler.resolve(response);
    }

    // Coba refresh token untuk endpoint lainnya
    _log('Attempting token refresh for: $fullUrl');

    try {
      final newAuthEntity = await _handleTokenRefresh();

      if (newAuthEntity != null) {
        _log('Token refresh successful, retrying request');

        // Update authorization header
        err.requestOptions.headers['Authorization'] =
            'Bearer ${newAuthEntity.accessToken}';

        // Retry request
        try {
          final response = await _dio.fetch(err.requestOptions);
          return handler.resolve(response);
        } catch (retryError) {
          _logError('Retry request failed', retryError);
          return handler.next(err);
        }
      } else {
        _log('Token refresh returned null, triggering logout');
        _handleUnauthorized(
          'Sesi Anda telah berakhir, Silahkan Login Kembali.',
        );
        return handler.next(
          DioException(
            requestOptions: err.requestOptions,
            response: Response(
              requestOptions: err.requestOptions,
              statusCode: 401,
              data: {'message': 'Session expired. Please login again.'},
            ),
            type: DioExceptionType.badResponse,
            message: 'Session expired. Please login again.',
          ),
        );
      }
    } catch (e) {
      _logError('Token refresh failed completely, triggering logout', e);
      _handleUnauthorized('Sesi Anda telah berakhir, Silahkan Login Kembali.');
      return handler.next(
        DioException(
          requestOptions: err.requestOptions,
          response: Response(
            requestOptions: err.requestOptions,
            statusCode: 401,
            data: {'message': 'Session expired. Please login again.'},
          ),
          type: DioExceptionType.badResponse,
          message: 'Session expired. Please login again.',
        ),
      );
    }
  }

  void _handleUnauthorized([String? customMessage]) {
    final message =
        customMessage ?? 'Sesi Anda telah berakhir. Silakan login kembali.';
    _log('Handling unauthorized access - triggering logout: $message');
    try {
      onUnauthorized?.call(message);
    } catch (e) {
      _logError('Error calling onUnauthorized callback', e);
    }
  }

  Future<AuthEntity?> _handleTokenRefresh() async {
    if (_isRefreshing) {
      _log('Already refreshing token, waiting...');
      return await _refreshCompleter?.future;
    }

    _log('Starting token refresh process');
    _isRefreshing = true;
    _refreshCompleter = Completer<AuthEntity?>();

    try {
      final newAuth = await _tryRefreshToken();
      _refreshCompleter!.complete(newAuth);
      return newAuth;
    } catch (e) {
      _refreshCompleter!.completeError(e);
      rethrow;
    } finally {
      _isRefreshing = false;
      _refreshCompleter = null;
    }
  }

  Future<AuthEntity?> _tryRefreshToken() async {
    for (int i = 0; i < 3; i++) {
      try {
        _log('Refresh token attempt ${i + 1}');

        final refreshToken = await _authRepository.getRefreshToken();
        if (refreshToken == null || refreshToken.isEmpty) {
          _log('No refresh token available');
          throw UnauthorizedException("No refresh token available.");
        }

        _log('Found refresh token, calling API...');
        final newAuth = await _authRepository.refreshToken(
          refreshToken: refreshToken,
        );

        _log('Token refresh API call successful');
        return newAuth;
      } catch (e) {
        _logError('Refresh token attempt ${i + 1} failed', e);

        // Jika ini adalah attempt terakhir, throw error
        if (i == 2) {
          _log('All refresh attempts failed');
          throw UnauthorizedException(
            "All refresh attempts failed: ${e.toString()}",
          );
        }

        // Tunggu sebelum retry
        if (i < 2) {
          _log('Waiting 1 second before retry...');
          await Future.delayed(const Duration(seconds: 1));
        }
      }
    }
    return null;
  }

  void _log(String message) {
    if (kDebugMode) {
      AppLogger.i('🔄 TOKEN INTERCEPTOR: $message');
    }
  }

  void _logError(String message, dynamic error) {
    if (kDebugMode) {
      AppLogger.e('❌ TOKEN INTERCEPTOR ERROR: $message\nError: $error');
    }
  }
}
