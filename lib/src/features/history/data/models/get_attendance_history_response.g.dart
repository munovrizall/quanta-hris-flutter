// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_attendance_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceHistoryItemResponse _$AttendanceHistoryItemResponseFromJson(
  Map<String, dynamic> json,
) => _AttendanceHistoryItemResponse(
  tanggal: json['tanggal'] as String,
  jamMasuk: json['jam_masuk'] as String?,
  statusMasuk: json['status_masuk'] as String?,
  jamPulang: json['jam_pulang'] as String?,
  statusPulang: json['status_pulang'] as String?,
  statusAbsensi: json['status_absensi'] as String,
);

Map<String, dynamic> _$AttendanceHistoryItemResponseToJson(
  _AttendanceHistoryItemResponse instance,
) => <String, dynamic>{
  'tanggal': instance.tanggal,
  'jam_masuk': instance.jamMasuk,
  'status_masuk': instance.statusMasuk,
  'jam_pulang': instance.jamPulang,
  'status_pulang': instance.statusPulang,
  'status_absensi': instance.statusAbsensi,
};
