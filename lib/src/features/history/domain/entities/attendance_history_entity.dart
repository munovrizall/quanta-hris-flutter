import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_history_entity.freezed.dart';

/// Entity untuk list attendance history
@freezed
abstract class AttendanceHistoryListEntity with _$AttendanceHistoryListEntity {
  const factory AttendanceHistoryListEntity({
    required List<AttendanceHistoryEntity> attendanceHistory,
  }) = _AttendanceHistoryListEntity;
}

/// Entity untuk item attendance history
@freezed
abstract class AttendanceHistoryEntity with _$AttendanceHistoryEntity {
  const factory AttendanceHistoryEntity({
    required String tanggal,
    String? jamMasuk,
    String? statusMasuk,
    String? jamPulang,
    String? statusPulang,
    required String statusAbsensi,
  }) = _AttendanceHistoryEntity;
}
