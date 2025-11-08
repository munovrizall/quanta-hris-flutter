import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_history_entity.freezed.dart';

/// Entity untuk wrapper riwayat cuti
@freezed
abstract class LeaveHistoryEntity with _$LeaveHistoryEntity {
  const factory LeaveHistoryEntity({
    required String karyawanId,
    required int totalPengajuan,
    required int sisaKuotaCuti,
    required List<LeaveHistoryItemEntity> riwayat,
  }) = _LeaveHistoryEntity;
}

/// Entity untuk item riwayat cuti
@freezed
abstract class LeaveHistoryItemEntity with _$LeaveHistoryItemEntity {
  const factory LeaveHistoryItemEntity({
    required String cutiId,
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required int durasiHari,
    required String statusCuti,
    String? alasanPenolakan,
    String? dokumenPendukung,
    String? diprosesOleh,
    String? diprosesPada,
    required String dibuatPada,
    required String diperbaruiPada,
  }) = _LeaveHistoryItemEntity;
}
