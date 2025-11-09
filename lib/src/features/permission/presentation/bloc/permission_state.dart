import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';

part 'permission_state.freezed.dart';

@freezed
abstract class PermissionState with _$PermissionState {
  const factory PermissionState({
    @Default(false) bool isLoading,
    PermissionHistoryEntity? history,
    String? error,
  }) = _PermissionState;
}
