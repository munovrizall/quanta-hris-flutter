import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_submission_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/repositories/leave_repository.dart';

import 'package:quanta_hris/src/features/leave/domain/entities/leave_submission_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/submit_leave_params.dart';
import 'package:quanta_hris/src/features/leave/domain/repositories/leave_repository.dart';

/// UseCase untuk submit permohonan cuti dengan params entity.
class SubmitLeaveUseCase {
  final LeaveRepository _repository;

  const SubmitLeaveUseCase(this._repository);

  Future<LeaveSubmissionEntity> call({
    required SubmitLeaveParams params,
  }) async {
    return _repository.submitLeave(params: params);
  }
}
