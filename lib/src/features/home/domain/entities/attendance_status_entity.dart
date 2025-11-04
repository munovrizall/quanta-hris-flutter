import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_status_entity.freezed.dart';

@freezed
abstract class AttendanceStatusEntity with _$AttendanceStatusEntity {
  const factory AttendanceStatusEntity({
    required bool isClockedIn,
    required bool isClockedOut,
  }) = _AttendanceStatusEntity;
}
