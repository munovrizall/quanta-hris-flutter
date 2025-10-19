import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/features/profile/data/models/profile_data_model.dart';
import 'package:dio/dio.dart';

abstract class ProfileRemoteDataSource {
  Future<ApiResponseModel<ProfileDataModel>> getProfile();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio _dio;

  ProfileRemoteDataSourceImpl(this._dio);
  @override
  Future<ApiResponseModel<ProfileDataModel>> getProfile() async {
    try {
      final response = await _dio.get(ApiEndpoints.profile.getProfile);

      return ApiResponseModel.fromJson(
        response.data,
        (json) => ProfileDataModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
