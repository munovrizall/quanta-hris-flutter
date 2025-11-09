import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/history/domain/entities/attendance_history_entity.dart';

part 'history_state.freezed.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState({
    @Default(false) bool isLoadingAttendanceHistory,
    AttendanceHistoryListEntity? attendanceHistory,
    String? attendanceHistoryError,
  }) = _HistoryState;
}
