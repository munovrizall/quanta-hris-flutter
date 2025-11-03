import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_application_entity.dart';

part 'leave_state.freezed.dart';

@freezed
abstract class LeaveState with _$LeaveState {
  const factory LeaveState({
    // Loading indicators
    @Default(false) bool isSubmitLoading,

    // Data hasil submit
    LeaveApplicationEntity? submittedLeave,

    // Error / success message
    String? submitError,
    String? submitSuccessMessage,
  }) = _LeaveState;

  const LeaveState._();

  bool get hasSubmission => submittedLeave != null;
}
