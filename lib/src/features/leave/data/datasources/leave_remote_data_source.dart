import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/leave/data/models/submit_leave_request.dart';
import 'package:quanta_hris/src/features/leave/data/models/submit_leave_response.dart';

abstract class LeaveRemoteDataSource {
  Future<ApiResponseModel<SubmitLeaveResponse>> submitLeave({
    required SubmitLeaveRequest request,
  });
}

class LeaveRemoteDataSourceImpl implements LeaveRemoteDataSource {
  final Dio _dio;

  LeaveRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<SubmitLeaveResponse>> submitLeave({
    required SubmitLeaveRequest request,
  }) async {
    try {
      AppLogger.d(
        '🌐 LeaveRemoteDataSource: Posting leave to ${ApiEndpoints.cuti.postCuti}',
      );

      final formData = await request.toFormData();

      final response = await _dio.post(
        ApiEndpoints.cuti.postCuti,
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );

      AppLogger.d(
        '✅ LeaveRemoteDataSource: Response status ${response.statusCode}',
      );
      AppLogger.d('📥 LeaveRemoteDataSource: Response data ${response.data}');

      final responseMap = Map<String, dynamic>.from(
        response.data as Map<String, dynamic>,
      );

      return ApiResponseModel.fromJson(
        responseMap,
        (json) => SubmitLeaveResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ LeaveRemoteDataSource error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      throw ErrorHandler.handle(error);
    }
  }
}
