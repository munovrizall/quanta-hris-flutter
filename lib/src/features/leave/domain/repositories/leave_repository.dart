import 'package:quanta_hris/src/features/leave/domain/entities/leave_history_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_submission_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/submit_leave_params.dart';

abstract class LeaveRepository {
  Future<LeaveSubmissionEntity> submitLeave({
    required SubmitLeaveParams params,
  });

  Future<LeaveHistoryEntity> getLeaveHistory();
}
