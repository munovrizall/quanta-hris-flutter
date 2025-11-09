// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_overtime_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OvertimeHistoryResponse _$OvertimeHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _OvertimeHistoryResponse(
  tanggal: json['tanggal'] as String,
  absensiId: json['absensi_id'] as String?,
  jamMasuk: json['jam_masuk'] as String?,
  statusMasuk: json['status_masuk'] as String?,
  jamPulang: json['jam_pulang'] as String?,
  statusPulang: json['status_pulang'] as String?,
  statusAbsensi: json['status_absensi'] as String,
  eligibleLembur: json['eligible_lembur'] as bool,
  durasiLemburTerhitung: json['durasi_lembur_terhitung'] as String?,
  jamPulangPerusahaan: json['jam_pulang_perusahaan'] as String,
  lemburPengajuan: json['lembur_pengajuan'] == null
      ? null
      : OvertimeSubmissionResponse.fromJson(
          json['lembur_pengajuan'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$OvertimeHistoryResponseToJson(
  _OvertimeHistoryResponse instance,
) => <String, dynamic>{
  'tanggal': instance.tanggal,
  'absensi_id': instance.absensiId,
  'jam_masuk': instance.jamMasuk,
  'status_masuk': instance.statusMasuk,
  'jam_pulang': instance.jamPulang,
  'status_pulang': instance.statusPulang,
  'status_absensi': instance.statusAbsensi,
  'eligible_lembur': instance.eligibleLembur,
  'durasi_lembur_terhitung': instance.durasiLemburTerhitung,
  'jam_pulang_perusahaan': instance.jamPulangPerusahaan,
  'lembur_pengajuan': instance.lemburPengajuan?.toJson(),
};

_OvertimeSubmissionResponse _$OvertimeSubmissionResponseFromJson(
  Map<String, dynamic> json,
) => _OvertimeSubmissionResponse(
  lemburId: json['lembur_id'] as String,
  statusLembur: json['status_lembur'] as String,
  durasiLembur: json['durasi_lembur'] as String,
  upahLembur: (json['upah_lembur'] as num).toInt(),
  processedAt: json['processed_at'] as String?,
);

Map<String, dynamic> _$OvertimeSubmissionResponseToJson(
  _OvertimeSubmissionResponse instance,
) => <String, dynamic>{
  'lembur_id': instance.lemburId,
  'status_lembur': instance.statusLembur,
  'durasi_lembur': instance.durasiLembur,
  'upah_lembur': instance.upahLembur,
  'processed_at': instance.processedAt,
};
