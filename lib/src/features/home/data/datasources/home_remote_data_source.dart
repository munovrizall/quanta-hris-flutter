import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/features/home/data/models/get_emission_response.dart';
import 'package:quanta_hris/src/features/home/data/models/get_placement_acsm_response.dart';
import 'package:quanta_hris/src/features/home/data/models/get_site_dropdown_response.dart';
import 'package:quanta_hris/src/features/home/data/models/post_power_state_request.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<ApiResponseModel<GetEmissionResponse>> getEmission();

  Future<ApiResponseModel<GetSiteDropdownResponse>> getSiteDropdown();

  Future<ApiResponseModel<List<GetPlacementAcsmResponse>>>
  getPlacementAcsmsBySite({required int clientId, required int siteId});

  Future<ApiResponseModel<dynamic>> postPowerStateByAc({
    required int acId,
    required PostPowerStateRequest requestBody,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final Dio _dio;

  HomeRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<GetEmissionResponse>> getEmission() async {
    try {
      final response = await _dio.get(ApiEndpoints.home.getEmission);

      return ApiResponseModel.fromJson(
        response.data,
        (json) => GetEmissionResponse.fromJson(json as Map<String, dynamic>),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<GetSiteDropdownResponse>> getSiteDropdown() async {
    try {
      final response = await _dio.get(ApiEndpoints.home.getSiteDropdown);

      return ApiResponseModel.fromJson(response.data, (json) {
        // Cast ke List<dynamic> karena API mengembalikan array langsung
        return GetSiteDropdownResponse.fromJson(json as List<dynamic>);
      });
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<List<GetPlacementAcsmResponse>>>
  getPlacementAcsmsBySite({required int clientId, required int siteId}) async {
    try {
      final response = await _dio.get(
        // Panggil method untuk mendapatkan path URL
        ApiEndpoints.home.getPlacementAcsmsBySite(clientId, siteId),
      );

      return ApiResponseModel.fromJson(
        response.data,
        (json) => (json as List<dynamic>)
            .map(
              (item) => GetPlacementAcsmResponse.fromJson(
                item as Map<String, dynamic>,
              ),
            )
            .toList(),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }

  @override
  Future<ApiResponseModel<dynamic>> postPowerStateByAc({
    required int acId,
    required PostPowerStateRequest requestBody,
  }) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.home.postPowerStateByAc(acId),
        data: requestBody.toJson(),
      );
      return ApiResponseModel.fromJson(
        response.data,
        (json) => json as dynamic,
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
