import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/repositories/permission_repository.dart';

class GetPermissionHistoryUseCase {
  final PermissionRepository _repository;

  GetPermissionHistoryUseCase(this._repository);

  Future<PermissionHistoryEntity> call() {
    return _repository.getPermissionHistory();
  }
}
