import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_application_entity.freezed.dart';

@freezed
abstract class LeaveApplicationEntity with _$LeaveApplicationEntity {
  const factory LeaveApplicationEntity({
    required String cutiId,
    required String karyawanId,
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    required String statusCuti,
    String? dokumenPendukung,
    required int durasiHari,
    required String createdAt,
  }) = _LeaveApplicationEntity;
}
