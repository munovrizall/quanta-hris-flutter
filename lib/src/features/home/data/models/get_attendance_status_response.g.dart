// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_attendance_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetAttendanceStatusResponse _$GetAttendanceStatusResponseFromJson(
  Map<String, dynamic> json,
) => _GetAttendanceStatusResponse(
  isClockedIn: json['is_clocked_in'] as bool,
  isClockedOut: json['is_clocked_out'] as bool,
);

Map<String, dynamic> _$GetAttendanceStatusResponseToJson(
  _GetAttendanceStatusResponse instance,
) => <String, dynamic>{
  'is_clocked_in': instance.isClockedIn,
  'is_clocked_out': instance.isClockedOut,
};
