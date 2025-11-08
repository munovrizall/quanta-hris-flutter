// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_leave_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetLeaveHistoryResponse _$GetLeaveHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _GetLeaveHistoryResponse(
  karyawanId: json['karyawan_id'] as String,
  totalPengajuan: (json['total_pengajuan'] as num).toInt(),
  sisaKuotaCuti: (json['sisa_kuota_cuti'] as num).toInt(),
  riwayat: (json['riwayat'] as List<dynamic>)
      .map((e) => LeaveHistoryItemResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetLeaveHistoryResponseToJson(
  _GetLeaveHistoryResponse instance,
) => <String, dynamic>{
  'karyawan_id': instance.karyawanId,
  'total_pengajuan': instance.totalPengajuan,
  'sisa_kuota_cuti': instance.sisaKuotaCuti,
  'riwayat': instance.riwayat,
};

_LeaveHistoryItemResponse _$LeaveHistoryItemResponseFromJson(
  Map<String, dynamic> json,
) => _LeaveHistoryItemResponse(
  cutiId: json['cuti_id'] as String,
  jenisCuti: json['jenis_cuti'] as String,
  tanggalMulai: json['tanggal_mulai'] as String,
  tanggalSelesai: json['tanggal_selesai'] as String,
  durasiHari: (json['durasi_hari'] as num).toInt(),
  statusCuti: json['status_cuti'] as String,
  alasanPenolakan: json['alasan_penolakan'] as String?,
  dokumenPendukung: json['dokumen_pendukung'] as String?,
  diprosesOleh: json['diproses_oleh'] as String?,
  diprosesPada: json['diproses_pada'] as String?,
  dibuatPada: json['dibuat_pada'] as String,
  diperbaruiPada: json['diperbarui_pada'] as String,
);

Map<String, dynamic> _$LeaveHistoryItemResponseToJson(
  _LeaveHistoryItemResponse instance,
) => <String, dynamic>{
  'cuti_id': instance.cutiId,
  'jenis_cuti': instance.jenisCuti,
  'tanggal_mulai': instance.tanggalMulai,
  'tanggal_selesai': instance.tanggalSelesai,
  'durasi_hari': instance.durasiHari,
  'status_cuti': instance.statusCuti,
  'alasan_penolakan': instance.alasanPenolakan,
  'dokumen_pendukung': instance.dokumenPendukung,
  'diproses_oleh': instance.diprosesOleh,
  'diproses_pada': instance.diprosesPada,
  'dibuat_pada': instance.dibuatPada,
  'diperbarui_pada': instance.diperbaruiPada,
};
