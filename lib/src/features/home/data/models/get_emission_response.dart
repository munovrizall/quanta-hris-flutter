import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_emission_response.freezed.dart';
part 'get_emission_response.g.dart';

@freezed
abstract class GetEmissionResponse with _$GetEmissionResponse {
  const factory GetEmissionResponse({
    @JsonKey(name: 'graphic_data')
    required List<EmissionGraphicDataModel> graphicData,
    required EmissionSummaryModel summary,
    @JsonKey(name: 'daily_summary')
    required EmissionDailySummaryModel dailySummary,
  }) = _GetEmissionResponse;

  factory GetEmissionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetEmissionResponseFromJson(json);
}

@freezed
abstract class EmissionGraphicDataModel with _$EmissionGraphicDataModel {
  const factory EmissionGraphicDataModel({
    required String month,
    required double kwh,
    required double cost,
    required double emission,
  }) = _EmissionGraphicDataModel;

  factory EmissionGraphicDataModel.fromJson(Map<String, dynamic> json) =>
      _$EmissionGraphicDataModelFromJson(json);
}

@freezed
abstract class EmissionSummaryModel with _$EmissionSummaryModel {
  const factory EmissionSummaryModel({
    required EmissionAverageSummaryModel average,
    @JsonKey(name: 'last_month') required EmissionMonthlySummaryModel lastMonth,
    @JsonKey(name: 'current_month')
    required EmissionMonthlySummaryModel currentMonth,
  }) = _EmissionSummaryModel;

  factory EmissionSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$EmissionSummaryModelFromJson(json);
}

@freezed
abstract class EmissionAverageSummaryModel with _$EmissionAverageSummaryModel {
  const factory EmissionAverageSummaryModel({
    required double kwh,
    required double cost,
    required double emission,
  }) = _EmissionAverageSummaryModel;

  factory EmissionAverageSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$EmissionAverageSummaryModelFromJson(json);
}

@freezed
abstract class EmissionMonthlySummaryModel with _$EmissionMonthlySummaryModel {
  const factory EmissionMonthlySummaryModel({
    required String month,
    required double kwh,
    required double cost,
    required double emission,
  }) = _EmissionMonthlySummaryModel;

  factory EmissionMonthlySummaryModel.fromJson(Map<String, dynamic> json) =>
      _$EmissionMonthlySummaryModelFromJson(json);
}

@freezed
abstract class EmissionDailySummaryModel with _$EmissionDailySummaryModel {
  const factory EmissionDailySummaryModel({
    required double kwh,
    required double cost,
    required double emission,
    @JsonKey(name: 'active_devices') required int activeDevices,
  }) = _EmissionDailySummaryModel;

  factory EmissionDailySummaryModel.fromJson(Map<String, dynamic> json) =>
      _$EmissionDailySummaryModelFromJson(json);
}
