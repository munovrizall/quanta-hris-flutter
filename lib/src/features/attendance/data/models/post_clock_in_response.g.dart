// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_clock_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostClockInResponse _$PostClockInResponseFromJson(Map<String, dynamic> json) =>
    _PostClockInResponse(
      absensiId: json['absensi_id'] as String?,
      karyawanId: json['karyawan_id'] as String?,
      tanggal: json['tanggal'] as String?,
      waktuMasuk: json['waktu_masuk'] as String?,
      statusMasuk: json['status_masuk'] as String?,
      statusAbsensi: json['status_absensi'] as String?,
      durasiTelat: json['durasi_telat'] as String?,
      fotoMasuk: json['foto_masuk'] as String?,
      cabang: json['cabang'] == null
          ? null
          : ClockInBranchResponse.fromJson(
              json['cabang'] as Map<String, dynamic>,
            ),
      distanceFromBranch: json['distance_from_branch'] as String?,
    );

Map<String, dynamic> _$PostClockInResponseToJson(
  _PostClockInResponse instance,
) => <String, dynamic>{
  'absensi_id': instance.absensiId,
  'karyawan_id': instance.karyawanId,
  'tanggal': instance.tanggal,
  'waktu_masuk': instance.waktuMasuk,
  'status_masuk': instance.statusMasuk,
  'status_absensi': instance.statusAbsensi,
  'durasi_telat': instance.durasiTelat,
  'foto_masuk': instance.fotoMasuk,
  'cabang': instance.cabang,
  'distance_from_branch': instance.distanceFromBranch,
};

_ClockInBranchResponse _$ClockInBranchResponseFromJson(
  Map<String, dynamic> json,
) => _ClockInBranchResponse(
  cabangId: json['cabang_id'] as String?,
  namaCabang: json['nama_cabang'] as String?,
  alamat: json['alamat'] as String?,
);

Map<String, dynamic> _$ClockInBranchResponseToJson(
  _ClockInBranchResponse instance,
) => <String, dynamic>{
  'cabang_id': instance.cabangId,
  'nama_cabang': instance.namaCabang,
  'alamat': instance.alamat,
};
