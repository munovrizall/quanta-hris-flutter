import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/home/domain/entities/attendance_status_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/operational_hour_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/today_leaves_entity.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    // Operational Hour Data
    @Default(null) OperationalHourEntity? operationalHourData,
    @Default(false) bool isLoadingOperationalHour,
    @Default(null) String? operationalHourError,

    // Today Leaves Data
    @Default(null) TodayLeavesEntity? todayLeavesData,
    @Default(false) bool isLoadingTodayLeaves,
    @Default(null) String? todayLeavesError,

    // Attendance Status
    @Default(null) AttendanceStatusEntity? attendanceStatus,
    @Default(false) bool isLoadingAttendanceStatus,
    @Default(null) String? attendanceStatusError,
  }) = _HomeState;

  const HomeState._();

  bool get isLoadingAny =>
      isLoadingOperationalHour || isLoadingTodayLeaves || isLoadingAttendanceStatus;

  bool get hasAnyError =>
      operationalHourError != null ||
      todayLeavesError != null ||
      attendanceStatusError != null;
}
