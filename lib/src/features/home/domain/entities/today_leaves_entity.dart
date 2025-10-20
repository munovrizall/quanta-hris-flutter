import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_leaves_entity.freezed.dart';

@freezed
abstract class TodayLeavesEntity with _$TodayLeavesEntity {
  const factory TodayLeavesEntity({
    required int total,
    required List<LeavePermitEntity> leavesData,
  }) = _TodayLeavesEntity;
}

@freezed
abstract class LeavePermitEntity with _$LeavePermitEntity {
  const factory LeavePermitEntity({
    required String nama,
    required String tipe,
    required String alasan,
    required String jenis,
    required String tanggalMulai,
    required String tanggalSelesai,
  }) = _LeavePermitEntity;
}