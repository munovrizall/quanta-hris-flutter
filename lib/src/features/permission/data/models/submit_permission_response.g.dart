// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_permission_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitPermissionResponse _$SubmitPermissionResponseFromJson(
  Map<String, dynamic> json,
) => _SubmitPermissionResponse(
  izinId: json['izin_id'] as String,
  karyawanId: json['karyawan_id'] as String,
  jenisIzin: json['jenis_izin'] as String,
  tanggalMulai: json['tanggal_mulai'] as String,
  tanggalSelesai: json['tanggal_selesai'] as String,
  keterangan: json['keterangan'] as String,
  statusIzin: json['status_izin'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$SubmitPermissionResponseToJson(
  _SubmitPermissionResponse instance,
) => <String, dynamic>{
  'izin_id': instance.izinId,
  'karyawan_id': instance.karyawanId,
  'jenis_izin': instance.jenisIzin,
  'tanggal_mulai': instance.tanggalMulai,
  'tanggal_selesai': instance.tanggalSelesai,
  'keterangan': instance.keterangan,
  'status_izin': instance.statusIzin,
  'created_at': instance.createdAt,
};
