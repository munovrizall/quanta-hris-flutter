// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_overtime_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitOvertimeResponse _$SubmitOvertimeResponseFromJson(
  Map<String, dynamic> json,
) => _SubmitOvertimeResponse(
  lemburId: json['lembur_id'] as String,
  karyawanId: json['karyawan_id'] as String,
  absensiId: json['absensi_id'] as String,
  tanggalLembur: json['tanggal_lembur'] as String,
  durasiLembur: json['durasi_lembur'] as String,
  deskripsiPekerjaan: json['deskripsi_pekerjaan'] as String,
  statusLembur: json['status_lembur'] as String,
  dokumenPendukung: json['dokumen_pendukung'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$SubmitOvertimeResponseToJson(
  _SubmitOvertimeResponse instance,
) => <String, dynamic>{
  'lembur_id': instance.lemburId,
  'karyawan_id': instance.karyawanId,
  'absensi_id': instance.absensiId,
  'tanggal_lembur': instance.tanggalLembur,
  'durasi_lembur': instance.durasiLembur,
  'deskripsi_pekerjaan': instance.deskripsiPekerjaan,
  'status_lembur': instance.statusLembur,
  'dokumen_pendukung': instance.dokumenPendukung,
  'created_at': instance.createdAt,
};
