import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/features/authentication/data/models/user_model.dart';
import 'package:quanta_hris/src/features/face_recognition/data/models/update_profile_request.dart';

abstract class FaceRecognitionRemoteDataSource {
  Future<ApiResponseModel<UserModel>> postUpdateProfile({
    required UpdateProfileRequest requestModel,
  });
}

class FaceRecognitionRemoteDataSourceImpl
    implements FaceRecognitionRemoteDataSource {
  final Dio _dio;

  FaceRecognitionRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<UserModel>> postUpdateProfile({
    required UpdateProfileRequest requestModel,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.auth.postUpdateProfile,
        data: requestModel.toJson(),
      );

      return ApiResponseModel.fromJson(
        response.data,
        (json) => UserModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
