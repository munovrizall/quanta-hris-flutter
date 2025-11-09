import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';

abstract class PermissionRepository {
  Future<PermissionHistoryEntity> getPermissionHistory();
}
