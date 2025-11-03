import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_in_entity.freezed.dart';

@freezed
abstract class ClockInEntity with _$ClockInEntity {
  const factory ClockInEntity({
    required String absensiId,
    required String karyawanId,
    required String tanggal,
    required String waktuMasuk,
    required String statusMasuk,
    required String statusAbsensi,
    required String durasiTelat,
    required String fotoMasuk,
    required ClockInBranchEntity cabang,
    required String distanceFromBranch,
  }) = _ClockInEntity;
}

@freezed
abstract class ClockInBranchEntity with _$ClockInBranchEntity {
  const factory ClockInBranchEntity({
    required String cabangId,
    required String namaCabang,
    required String alamat,
  }) = _ClockInBranchEntity;
}

@freezed
abstract class ClockInSubmissionEntity with _$ClockInSubmissionEntity {
  const factory ClockInSubmissionEntity({
    required ClockInEntity clockIn,
    required String message,
  }) = _ClockInSubmissionEntity;
}
