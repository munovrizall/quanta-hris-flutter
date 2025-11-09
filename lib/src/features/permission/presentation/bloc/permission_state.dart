import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_application_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';

part 'permission_state.freezed.dart';

@freezed
abstract class PermissionState with _$PermissionState {
  const factory PermissionState({
    @Default(false) bool isHistoryLoading,
    @Default(false) bool isSubmitLoading,
    PermissionHistoryEntity? history,
    PermissionApplicationEntity? submittedPermission,
    String? historyError,
    String? submitError,
    String? submitSuccessMessage,
  }) = _PermissionState;
}
