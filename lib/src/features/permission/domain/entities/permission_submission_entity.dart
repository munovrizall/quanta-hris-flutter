import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_application_entity.dart';

part 'permission_submission_entity.freezed.dart';

@freezed
abstract class PermissionSubmissionEntity with _$PermissionSubmissionEntity {
  const factory PermissionSubmissionEntity({
    required PermissionApplicationEntity permission,
    required String message,
  }) = _PermissionSubmissionEntity;
}
