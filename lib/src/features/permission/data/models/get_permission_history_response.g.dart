// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_permission_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetPermissionHistoryResponse _$GetPermissionHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _GetPermissionHistoryResponse(
  karyawanId: json['karyawan_id'] as String,
  totalPengajuan: (json['total_pengajuan'] as num).toInt(),
  riwayat: (json['riwayat'] as List<dynamic>)
      .map(
        (e) =>
            PermissionHistoryItemResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$GetPermissionHistoryResponseToJson(
  _GetPermissionHistoryResponse instance,
) => <String, dynamic>{
  'karyawan_id': instance.karyawanId,
  'total_pengajuan': instance.totalPengajuan,
  'riwayat': instance.riwayat.map((e) => e.toJson()).toList(),
};

_PermissionHistoryItemResponse _$PermissionHistoryItemResponseFromJson(
  Map<String, dynamic> json,
) => _PermissionHistoryItemResponse(
  izinId: json['izin_id'] as String,
  jenisIzin: json['jenis_izin'] as String,
  tanggalMulai: json['tanggal_mulai'] as String,
  tanggalSelesai: json['tanggal_selesai'] as String,
  statusIzin: json['status_izin'] as String,
  alasanPenolakan: json['alasan_penolakan'] as String?,
  dokumenPendukung: json['dokumen_pendukung'] as String?,
  diprosesOleh: json['diproses_oleh'] as String?,
  diprosesPada: json['diproses_pada'] as String?,
  dibuatPada: json['dibuat_pada'] as String,
  diperbaruiPada: json['diperbarui_pada'] as String,
);

Map<String, dynamic> _$PermissionHistoryItemResponseToJson(
  _PermissionHistoryItemResponse instance,
) => <String, dynamic>{
  'izin_id': instance.izinId,
  'jenis_izin': instance.jenisIzin,
  'tanggal_mulai': instance.tanggalMulai,
  'tanggal_selesai': instance.tanggalSelesai,
  'status_izin': instance.statusIzin,
  'alasan_penolakan': instance.alasanPenolakan,
  'dokumen_pendukung': instance.dokumenPendukung,
  'diproses_oleh': instance.diprosesOleh,
  'diproses_pada': instance.diprosesPada,
  'dibuat_pada': instance.dibuatPada,
  'diperbarui_pada': instance.diperbaruiPada,
};
