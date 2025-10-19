import 'package:freezed_annotation/freezed_annotation.dart';

part 'placement_acsm_entity.freezed.dart';

@freezed
abstract class PlacementAcsmEntity with _$PlacementAcsmEntity {
  const factory PlacementAcsmEntity({
    required int siteId,
    required String siteName,
    required List<PlacementRoomEntity> rooms,
  }) = _PlacementAcsmEntity;
}

@freezed
abstract class PlacementRoomEntity with _$PlacementRoomEntity {
  const factory PlacementRoomEntity({
    required int roomId,
    required String roomName,
    required List<PlacementItemEntity> placements,
  }) = _PlacementRoomEntity;
}

@freezed
abstract class PlacementItemEntity with _$PlacementItemEntity {
  const factory PlacementItemEntity({
    required int placementId,
    required PlacementDeviceEntity device,
    required PlacementAcEntity ac,
  }) = _PlacementItemEntity;
}

@freezed
abstract class PlacementDeviceEntity with _$PlacementDeviceEntity {
  const factory PlacementDeviceEntity({
    required int deviceId,
    required String deviceName,
    required String hardware,
    required String chipId,
  }) = _PlacementDeviceEntity;
}

@freezed
abstract class PlacementAcEntity with _$PlacementAcEntity {
  const factory PlacementAcEntity({
    required int acId,
    required String acName,
    required String pkAc,
    String? anomaly,
    String? lockTempSetting,
    int? timerId,
    String? timerName,
    int? remoteId,
    required int categoryId,
    required String categoryName,
    required String categoryImage,
    required int brandId,
    required String brandName,
    required String brandImage,
    dynamic autoOnSettings,
    PlacementAcDataEntity? data,
  }) = _PlacementAcEntity;
}

@freezed
abstract class PlacementAcDataEntity with _$PlacementAcDataEntity {
  const factory PlacementAcDataEntity({
    double? current,
    double? watt,
    double? returnTemp,
    double? supplyTemp,
    String? condition,
    String? status,
    bool? onState,
    bool? isOnline,
    int? setPoint,
  }) = _PlacementAcDataEntity;
}
