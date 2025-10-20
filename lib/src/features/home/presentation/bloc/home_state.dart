import 'package:quanta_hris/src/features/home/domain/entities/emission_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/operational_hour_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/placement_acsm_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/site_dropdown_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    // Emission Data
    @Default(null) OperationalHourEntity? operationalHourData,
    @Default(false) bool isLoadingOperationalHour,
    @Default(null) String? operationalHourError,
  }) = _HomeState;

  const HomeState._();

  bool get isLoadingAny => isLoadingOperationalHour;

  bool get hasAnyError => operationalHourError != null;
}
