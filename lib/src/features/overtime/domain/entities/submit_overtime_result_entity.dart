import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_overtime_result_entity.freezed.dart';

@freezed
abstract class SubmitOvertimeResultEntity with _$SubmitOvertimeResultEntity {
  const factory SubmitOvertimeResultEntity({
    required String lemburId,
    required String karyawanId,
    required String absensiId,
    required String tanggalLembur,
    required String durasiLembur,
    required String deskripsiPekerjaan,
    required String statusLembur,
    String? dokumenPendukung,
    required String createdAt,
    required String message,
  }) = _SubmitOvertimeResultEntity;
}
