import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/permission/data/models/get_permission_history_response.dart';

abstract class PermissionRemoteDataSource {
  Future<ApiResponseModel<GetPermissionHistoryResponse>> getPermissionHistory();
}

class PermissionRemoteDataSourceImpl implements PermissionRemoteDataSource {
  final Dio _dio;

  PermissionRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<GetPermissionHistoryResponse>>
  getPermissionHistory() async {
    try {
      AppLogger.d(
        '🌐 PermissionRemoteDataSource: Getting permission history from ${ApiEndpoints.izin.getIzin}',
      );

      final response = await _dio.get(ApiEndpoints.izin.getIzin);

      AppLogger.d(
        '✅ PermissionRemoteDataSource: Status ${response.statusCode}',
      );

      final responseMap = Map<String, dynamic>.from(
        response.data as Map<String, dynamic>,
      );

      return ApiResponseModel.fromJson(
        responseMap,
        (json) =>
            GetPermissionHistoryResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ PermissionRemoteDataSource error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      throw ErrorHandler.handle(error);
    }
  }
}
