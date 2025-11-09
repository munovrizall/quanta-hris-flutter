import 'package:dio/dio.dart';
import 'package:quanta_hris/src/core/constants/api_endpoints.dart';
import 'package:quanta_hris/src/core/error/error_handler.dart';
import 'package:quanta_hris/src/core/network/api_response_model.dart';
import 'package:quanta_hris/src/features/overtime/data/models/get_overtime_history_response.dart';

abstract class OvertimeRemoteDataSource {
  Future<ApiResponseModel<List<OvertimeHistoryResponse>>> getOvertimeHistory();
}

class OvertimeRemoteDataSourceImpl implements OvertimeRemoteDataSource {
  final Dio _dio;

  OvertimeRemoteDataSourceImpl(this._dio);

  @override
  Future<ApiResponseModel<List<OvertimeHistoryResponse>>>
  getOvertimeHistory() async {
    try {
      final response = await _dio.get(ApiEndpoints.lembur.getHistory);
      return ApiResponseModel.fromJson(
        response.data as Map<String, dynamic>,
        (json) => (json as List<dynamic>)
            .map(
              (item) => OvertimeHistoryResponse.fromJson(
                item as Map<String, dynamic>,
              ),
            )
            .toList(),
      );
    } catch (error) {
      throw ErrorHandler.handle(error);
    }
  }
}
