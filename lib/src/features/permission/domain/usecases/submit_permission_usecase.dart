import 'package:quanta_hris/src/features/permission/domain/entities/permission_submission_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/submit_permission_params.dart';
import 'package:quanta_hris/src/features/permission/domain/repositories/permission_repository.dart';

class SubmitPermissionUseCase {
  final PermissionRepository _repository;

  SubmitPermissionUseCase(this._repository);

  Future<PermissionSubmissionEntity> call({
    required SubmitPermissionParams params,
  }) {
    return _repository.submitPermission(params: params);
  }
}
