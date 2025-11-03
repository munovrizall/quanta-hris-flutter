// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_leave_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitLeaveResponse _$SubmitLeaveResponseFromJson(Map<String, dynamic> json) =>
    _SubmitLeaveResponse(
      cutiId: json['cuti_id'] as String,
      karyawanId: json['karyawan_id'] as String,
      jenisCuti: json['jenis_cuti'] as String,
      tanggalMulai: json['tanggal_mulai'] as String,
      tanggalSelesai: json['tanggal_selesai'] as String,
      keterangan: json['keterangan'] as String,
      statusCuti: json['status_cuti'] as String,
      dokumenPendukung: json['dokumen_pendukung'] as String?,
      durasiHari: (json['durasi_hari'] as num).toInt(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$SubmitLeaveResponseToJson(
  _SubmitLeaveResponse instance,
) => <String, dynamic>{
  'cuti_id': instance.cutiId,
  'karyawan_id': instance.karyawanId,
  'jenis_cuti': instance.jenisCuti,
  'tanggal_mulai': instance.tanggalMulai,
  'tanggal_selesai': instance.tanggalSelesai,
  'keterangan': instance.keterangan,
  'status_cuti': instance.statusCuti,
  'dokumen_pendukung': instance.dokumenPendukung,
  'durasi_hari': instance.durasiHari,
  'created_at': instance.createdAt,
};
