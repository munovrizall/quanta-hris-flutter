import 'package:freezed_annotation/freezed_annotation.dart';

part 'operational_hour_entity.freezed.dart';

@freezed
abstract class OperationalHourEntity with _$OperationalHourEntity {
  const factory OperationalHourEntity({
    required String companyName,
    required WorkingHourEntity workingHours,
  }) = _OperationalHourEntity;
}

@freezed
abstract class WorkingHourEntity with _$WorkingHourEntity {
  const factory WorkingHourEntity({
    required String startTime,
    required String endTime,
  }) = _WorkingHourEntity;
}