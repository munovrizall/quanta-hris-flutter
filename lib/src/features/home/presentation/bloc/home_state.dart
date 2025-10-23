import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/home/domain/entities/is_clocked_in_entity.dart';
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

    // Clock-in Status
    @Default(null) IsClockedInEntity? isClockedIn,
    @Default(false) bool isLoadingClockedIn,
    @Default(null) String? clockedInError,
  }) = _HomeState;

  const HomeState._();

  bool get isLoadingAny =>
      isLoadingOperationalHour || isLoadingTodayLeaves || isLoadingClockedIn;

  bool get hasAnyError =>
      operationalHourError != null ||
      todayLeavesError != null ||
      clockedInError != null;
}
