import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_operational_hour_response.freezed.dart';
part 'get_operational_hour_response.g.dart';

@freezed
abstract class GetOperationalHourResponse with _$GetOperationalHourResponse {
  const factory GetOperationalHourResponse({
    @JsonKey(name: 'company_name') required String companyName,
    @JsonKey(name: 'working_hours') required WorkingHourModel workingHours,
  }) = _GetOperationalHourResponse;

  factory GetOperationalHourResponse.fromJson(Map<String, dynamic> json) =>
      _$GetOperationalHourResponseFromJson(json);
}

@freezed
abstract class WorkingHourModel with _$WorkingHourModel {
  const factory WorkingHourModel({
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
  }) = _WorkingHourModel;

  factory WorkingHourModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingHourModelFromJson(json);
}
