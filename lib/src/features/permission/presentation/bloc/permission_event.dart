import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/submit_permission_params.dart';

part 'permission_event.freezed.dart';

@freezed
class PermissionEvent with _$PermissionEvent {
  const factory PermissionEvent.fetchPermissionHistory() =
      _FetchPermissionHistory;
  const factory PermissionEvent.submitPermission({
    required SubmitPermissionParams params,
  }) = _SubmitPermission;
}
