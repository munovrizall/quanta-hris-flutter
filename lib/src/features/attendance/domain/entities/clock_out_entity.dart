import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_out_entity.freezed.dart';

@freezed
abstract class ClockOutEntity with _$ClockOutEntity {
  const factory ClockOutEntity({
    required String absensiId,
    required String karyawanId,
    required String tanggal,
    required String waktuPulang,
    required String statusPulang,
    required String statusAbsensi,
    required String durasiPulangCepat,
    required String fotoPulang,
    required ClockOutBranchEntity cabang,
    required String distanceFromBranch,
  }) = _ClockOutEntity;
}

@freezed
abstract class ClockOutBranchEntity with _$ClockOutBranchEntity {
  const factory ClockOutBranchEntity({
    required String cabangId,
    required String namaCabang,
    required String alamat,
  }) = _ClockOutBranchEntity;
}

@freezed
abstract class ClockOutSubmissionEntity with _$ClockOutSubmissionEntity {
  const factory ClockOutSubmissionEntity({
    required ClockOutEntity clockOut,
    required String message,
  }) = _ClockOutSubmissionEntity;
}
