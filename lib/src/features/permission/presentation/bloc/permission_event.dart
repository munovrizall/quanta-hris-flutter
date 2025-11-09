import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_event.freezed.dart';

@freezed
class PermissionEvent with _$PermissionEvent {
  const factory PermissionEvent.fetchPermissionHistory() =
      _FetchPermissionHistory;
}
