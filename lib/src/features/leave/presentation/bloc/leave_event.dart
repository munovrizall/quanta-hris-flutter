import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/submit_leave_params.dart';

part 'leave_event.freezed.dart';

@freezed
abstract class LeaveEvent with _$LeaveEvent {
  /// Submit permohonan cuti baru dengan params entity.
  const factory LeaveEvent.submitLeave({required SubmitLeaveParams params}) =
      _SubmitLeave;
}
