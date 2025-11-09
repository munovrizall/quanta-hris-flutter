import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_submission_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/submit_permission_params.dart';

abstract class PermissionRepository {
  Future<PermissionHistoryEntity> getPermissionHistory();
  Future<PermissionSubmissionEntity> submitPermission({
    required SubmitPermissionParams params,
  });
}
