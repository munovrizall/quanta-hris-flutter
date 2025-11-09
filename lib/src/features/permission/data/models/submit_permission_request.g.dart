// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_permission_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitPermissionRequest _$SubmitPermissionRequestFromJson(
  Map<String, dynamic> json,
) => _SubmitPermissionRequest(
  jenisCuti: json['jenis_izin'] as String,
  tanggalMulai: json['tanggal_mulai'] as String,
  tanggalSelesai: json['tanggal_selesai'] as String,
  keterangan: json['keterangan'] as String,
);

Map<String, dynamic> _$SubmitPermissionRequestToJson(
  _SubmitPermissionRequest instance,
) => <String, dynamic>{
  'jenis_izin': instance.jenisCuti,
  'tanggal_mulai': instance.tanggalMulai,
  'tanggal_selesai': instance.tanggalSelesai,
  'keterangan': instance.keterangan,
};
