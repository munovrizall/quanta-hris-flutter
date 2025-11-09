import 'package:freezed_annotation/freezed_annotation.dart';

part 'overtime_history_entity.freezed.dart';

@freezed
abstract class OvertimeHistoryEntity with _$OvertimeHistoryEntity {
  const factory OvertimeHistoryEntity({
    required String tanggal,
    String? jamMasuk,
    String? statusMasuk,
    String? jamPulang,
    String? statusPulang,
    required String statusAbsensi,
    required bool eligibleLembur,
    String? durasiLemburTerhitung,
    required String jamPulangPerusahaan,
    OvertimeSubmissionEntity? lemburPengajuan,
  }) = _OvertimeHistoryEntity;
}

@freezed
abstract class OvertimeSubmissionEntity with _$OvertimeSubmissionEntity {
  const factory OvertimeSubmissionEntity({
    required String lemburId,
    required String statusLembur,
    required String durasiLembur,
    required int upahLembur,
    String? processedAt,
  }) = _OvertimeSubmissionEntity;
}
