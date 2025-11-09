import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/history/data/models/get_attendance_history_response.dart';

abstract class HistoryRemoteDataSource {
  Future<ApiResponseModel<List<AttendanceHistoryItemResponse>>>
  getAttendanceHistory();
}

class HistoryRemoteDataSourceImpl implements HistoryRemoteDataSource {
  final Dio _dio;

  HistoryRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<List<AttendanceHistoryItemResponse>>>
  getAttendanceHistory() async {
    try {
      AppLogger.d(
        '🌐 HistoryRemoteDataSource: Getting attendance history from ${ApiEndpoints.history.getAttendanceHistory}',
      );

      final response = await _dio.get(
        ApiEndpoints.history.getAttendanceHistory,
      );

      AppLogger.d(
        '✅ HistoryRemoteDataSource: Response status ${response.statusCode}',
      );
      AppLogger.d('📥 HistoryRemoteDataSource: Response data ${response.data}');

      final responseMap = Map<String, dynamic>.from(
        response.data as Map<String, dynamic>,
      );

      return ApiResponseModel.fromJson(
        responseMap,
        (json) => (json as List)
            .map(
              (e) => AttendanceHistoryItemResponse.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ HistoryRemoteDataSource error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      throw ErrorHandler.handle(error);
    }
  }
}
