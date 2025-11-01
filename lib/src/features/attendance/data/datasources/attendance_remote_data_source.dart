import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/authentication/data/models/user_model.dart';
import 'package:quanta_hris/src/features/face_recognition/data/models/get_company_branches_response.dart';
import 'package:quanta_hris/src/features/face_recognition/data/models/update_profile_request.dart';

abstract class AttendanceRemoteDataSource {
  Future<ApiResponseModel<GetCompanyBranchesResponse>> getCompanyBranches();
  Future<ApiResponseModel<UserModel>> postUpdateProfile({
    required UpdateProfileRequest requestModel,
  });
}

class AttendanceRemoteDataSourceImpl implements AttendanceRemoteDataSource {
  final Dio _dio;

  AttendanceRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<GetCompanyBranchesResponse>>
  getCompanyBranches() async {
    try {
      AppLogger.d('🌐 RemoteDataSource: Fetching from ${ApiEndpoints.attendance.getCompanyBranches}');

      final response = await _dio.get(ApiEndpoints.attendance.getCompanyBranches);

      AppLogger.d(
        '✅ RemoteDataSource: Got response with status ${response.statusCode}',
      );
      AppLogger.d('📥 Raw response data: ${response.data}');

      final responseMap = Map<String, dynamic>.from(
        response.data as Map<String, dynamic>,
      );

      return ApiResponseModel.fromJson(
        responseMap,
        (json) =>
            GetCompanyBranchesResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ RemoteDataSource error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<UserModel>> postUpdateProfile({
    required UpdateProfileRequest requestModel,
  }) async {
    try {
      AppLogger.d(
        '🌐 RemoteDataSource: Posting to ${ApiEndpoints.auth.postUpdateProfile}',
      );
      AppLogger.d('📤 Request data: ${requestModel.toJson()}');

      final response = await _dio.post(
        ApiEndpoints.auth.postUpdateProfile,
        data: requestModel.toJson(),
      );

      AppLogger.d(
        '✅ RemoteDataSource: Got response with status ${response.statusCode}',
      );
      AppLogger.d('📥 Raw response data: ${response.data}');

      final Map<String, dynamic> responseMap = Map<String, dynamic>.from(
        response.data as Map<String, dynamic>,
      );

      AppLogger.d('📦 Response map keys: ${responseMap.keys.toList()}');

      // ✅ Backend mengirim struktur { data: { user: {...} } }
      // Kita perlu extract user object dari dalam data
      if (responseMap['data'] != null && responseMap['data'] is Map) {
        final dataMap = responseMap['data'] as Map<String, dynamic>;
        AppLogger.d('📦 Data map keys: ${dataMap.keys.toList()}');

        if (dataMap['user'] != null) {
          // ✅ Ganti data dengan user object langsung
          responseMap['data'] = dataMap['user'];
          AppLogger.d('✅ Extracted user object from nested data');
        }
      }

      // Backend kadang mengirim null pada field message, pastikan berupa string
      responseMap['message'] = responseMap['message']?.toString() ?? '';

      final apiResponse = ApiResponseModel.fromJson(responseMap, (json) {
        AppLogger.d('🔄 Parsing UserModel from: $json');
        return UserModel.fromJson(json as Map<String, dynamic>);
      });

      AppLogger.d('✅ RemoteDataSource: Successfully parsed response');
      return apiResponse;
    } catch (error, stackTrace) {
      AppLogger.d('❌ RemoteDataSource error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      throw ErrorHandler.handle(error);
    }
  }
}
