import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_application_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_history_entity.dart';

part 'leave_state.freezed.dart';

@freezed
abstract class LeaveState with _$LeaveState {
  const factory LeaveState({
    // Loading indicators
    @Default(false) bool isSubmitLoading,
    @Default(false) bool isHistoryLoading,

    // Data hasil submit
    LeaveApplicationEntity? submittedLeave,

    // Data riwayat cuti
    LeaveHistoryEntity? leaveHistory,

    // Error / success message
    String? submitError,
    String? submitSuccessMessage,
    String? historyError,
  }) = _LeaveState;

  const LeaveState._();

  bool get hasSubmission => submittedLeave != null;
  bool get hasHistory => leaveHistory != null;
}
