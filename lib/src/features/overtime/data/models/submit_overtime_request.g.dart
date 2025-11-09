// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_overtime_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitOvertimeRequest _$SubmitOvertimeRequestFromJson(
  Map<String, dynamic> json,
) => _SubmitOvertimeRequest(
  absensiId: json['absensi_id'] as String,
  deskripsiPekerjaan: json['deskripsi_pekerjaan'] as String,
);

Map<String, dynamic> _$SubmitOvertimeRequestToJson(
  _SubmitOvertimeRequest instance,
) => <String, dynamic>{
  'absensi_id': instance.absensiId,
  'deskripsi_pekerjaan': instance.deskripsiPekerjaan,
};
