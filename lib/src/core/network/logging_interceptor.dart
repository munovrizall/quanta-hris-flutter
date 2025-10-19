import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      _printRequest(options);
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      _printResponse(response);
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      _printError(err);
    }
    super.onError(err, handler);
  }

  void _printRequest(RequestOptions options) {
    AppLogger.d(
      '🚀 API REQUEST\n'
      'Method: ${options.method}\n'
      'URL: ${options.uri}\n'
      '${options.data != null ? 'Body: ${options.data}\n' : ''}'
      '${options.queryParameters.isNotEmpty ? 'Query Parameters: ${options.queryParameters}\n' : ''}',
    );
  }

  void _printResponse(Response response) {
    AppLogger.d(
      '✅ API RESPONSE\n'
      'Status Code: ${response.statusCode}\n'
      'URL: ${response.requestOptions.uri}\n'
      'Data: ${response.data}\n',
    );
  }

  void _printError(DioException err) {
    AppLogger.e(
      '❌ API ERROR\n'
      'Type: ${err.type}\n'
      'Message: ${err.message}\n'
      'URL: ${err.requestOptions.uri}\n'
      'Status Code: ${err.response?.statusCode}\n'
      '${err.response?.data != null ? 'Error Data: ${err.response?.data}\n' : ''}',
    );
  }
}
