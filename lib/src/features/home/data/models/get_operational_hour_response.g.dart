// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_operational_hour_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetOperationalHourResponse _$GetOperationalHourResponseFromJson(
  Map<String, dynamic> json,
) => _GetOperationalHourResponse(
  companyName: json['company_name'] as String,
  workingHours: WorkingHourModel.fromJson(
    json['working_hours'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GetOperationalHourResponseToJson(
  _GetOperationalHourResponse instance,
) => <String, dynamic>{
  'company_name': instance.companyName,
  'working_hours': instance.workingHours,
};

_WorkingHourModel _$WorkingHourModelFromJson(Map<String, dynamic> json) =>
    _WorkingHourModel(
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
    );

Map<String, dynamic> _$WorkingHourModelToJson(_WorkingHourModel instance) =>
    <String, dynamic>{
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
