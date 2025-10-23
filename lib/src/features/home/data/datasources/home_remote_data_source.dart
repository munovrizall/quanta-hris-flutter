import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/features/home/data/models/get_is_clocked_in_response.dart';
import 'package:quanta_hris/src/features/home/data/models/get_operational_hour_response.dart';
import 'package:quanta_hris/src/features/home/data/models/get_today_leaves_response.dart';

abstract class HomeRemoteDataSource {
  Future<ApiResponseModel<GetOperationalHourResponse>> getOperationalHours();
  Future<ApiResponseModel<GetTodayLeavesResponse>> getTodayLeaves();
  Future<ApiResponseModel<GetIsClockedInResponse>> getIsClockedIn();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio _dio;

  HomeRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<GetOperationalHourResponse>>
  getOperationalHours() async {
    try {
      final response = await _dio.get(ApiEndpoints.home.getOperationalHours);

      return ApiResponseModel.fromJson(
        response.data,
        (json) =>
            GetOperationalHourResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<GetTodayLeavesResponse>> getTodayLeaves() async {
    try {
      final response = await _dio.get(ApiEndpoints.home.getTodayLeaves);

      return ApiResponseModel.fromJson(
        response.data,
        (json) => GetTodayLeavesResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
 
  @override
  Future<ApiResponseModel<GetIsClockedInResponse>> getIsClockedIn() async {
    try {
      final response = await _dio.get(ApiEndpoints.home.getIsClockedIn);

      return ApiResponseModel.fromJson(
        response.data,
        (json) => GetIsClockedInResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
