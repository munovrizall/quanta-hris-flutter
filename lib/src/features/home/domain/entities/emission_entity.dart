import 'package:freezed_annotation/freezed_annotation.dart';

part 'emission_entity.freezed.dart';

@freezed
abstract class EmissionEntity with _$EmissionEntity {
  const factory EmissionEntity({
    required List<EmissionGraphicPointEntity> graphicData,
    required EmissionSummaryEntity summary,
    required EmissionDailySummaryEntity dailySummary,
  }) = _EmissionEntity;
}

@freezed
abstract class EmissionGraphicPointEntity with _$EmissionGraphicPointEntity {
  const factory EmissionGraphicPointEntity({
    required String month,
    required double kwh,
    required double cost,
    required double emission,
  }) = _EmissionGraphicPointEntity;
}

@freezed
abstract class EmissionSummaryEntity with _$EmissionSummaryEntity {
  const factory EmissionSummaryEntity({
    required EmissionAverageEntity average,
    required EmissionMonthlySummaryEntity lastMonth,
    required EmissionMonthlySummaryEntity currentMonth,
  }) = _EmissionSummaryEntity;
}

@freezed
abstract class EmissionAverageEntity with _$EmissionAverageEntity {
  const factory EmissionAverageEntity({
    required double kwh,
    required double cost,
    required double emission,
  }) = _EmissionAverageEntity;
}

@freezed
abstract class EmissionMonthlySummaryEntity
    with _$EmissionMonthlySummaryEntity {
  const factory EmissionMonthlySummaryEntity({
    required String month,
    required double kwh,
    required double cost,
    required double emission,
  }) = _EmissionMonthlySummaryEntity;
}

@freezed
abstract class EmissionDailySummaryEntity with _$EmissionDailySummaryEntity {
  const factory EmissionDailySummaryEntity({
    required double kwh,
    required double cost,
    required double emission,
    required int activeDevices,
  }) = _EmissionDailySummaryEntity;
}
