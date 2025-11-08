import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/features/payroll/data/models/get_slip_gaji_response.dart';

abstract class PayrollRemoteDataSource {
  Future<ApiResponseModel<List<GetSlipGajiResponse>>> getSlipGaji();
}

class PayrollRemoteDataSourceImpl implements PayrollRemoteDataSource {
  final Dio _dio;

  PayrollRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<List<GetSlipGajiResponse>>> getSlipGaji() async {
    try {
      final response = await _dio.get(ApiEndpoints.payroll.getSlipGaji);
      return ApiResponseModel.fromJson(
        response.data,
        (json) => (json as List<dynamic>)
            .map(
              (item) =>
                  GetSlipGajiResponse.fromJson(item as Map<String, dynamic>),
            )
            .toList(),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
