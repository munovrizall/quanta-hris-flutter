import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_application_entity.dart';

part 'leave_submission_entity.freezed.dart';

@freezed
abstract class LeaveSubmissionEntity with _$LeaveSubmissionEntity {
  const factory LeaveSubmissionEntity({
    required LeaveApplicationEntity leave,
    required String message,
  }) = _LeaveSubmissionEntity;
}
