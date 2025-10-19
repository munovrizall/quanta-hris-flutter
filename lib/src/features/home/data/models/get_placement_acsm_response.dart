import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_placement_acsm_response.freezed.dart';
part 'get_placement_acsm_response.g.dart';

double? _toDouble(Object? value) =>
    value == null ? null : (value as num).toDouble();

Object? _fromDouble(double? value) => value;

@freezed
abstract class GetPlacementAcsmResponse with _$GetPlacementAcsmResponse {
  const factory GetPlacementAcsmResponse({
    @JsonKey(name: 'site_id') required int siteId,
    @JsonKey(name: 'site_name') required String siteName,
    required List<PlacementRoomModel> rooms,
  }) = _GetPlacementAcsmResponse;

  factory GetPlacementAcsmResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPlacementAcsmResponseFromJson(json);
}

@freezed
abstract class PlacementRoomModel with _$PlacementRoomModel {
  const factory PlacementRoomModel({
    @JsonKey(name: 'room_id') required int roomId,
    @JsonKey(name: 'room_name') required String roomName,
    required List<PlacementItemModel> placements,
  }) = _PlacementRoomModel;

  factory PlacementRoomModel.fromJson(Map<String, dynamic> json) =>
      _$PlacementRoomModelFromJson(json);
}

@freezed
abstract class PlacementItemModel with _$PlacementItemModel {
  const factory PlacementItemModel({
    @JsonKey(name: 'placement_id') required int placementId,
    required PlacementDeviceModel device,
    required PlacementAcModel ac,
  }) = _PlacementItemModel;

  factory PlacementItemModel.fromJson(Map<String, dynamic> json) =>
      _$PlacementItemModelFromJson(json);
}

@freezed
abstract class PlacementDeviceModel with _$PlacementDeviceModel {
  const factory PlacementDeviceModel({
    @JsonKey(name: 'device_id') required int deviceId,
    @JsonKey(name: 'device_name') required String deviceName,
    required String hardware,
    @JsonKey(name: 'chip_id') required String chipId,
  }) = _PlacementDeviceModel;

  factory PlacementDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$PlacementDeviceModelFromJson(json);
}

@freezed
abstract class PlacementAcModel with _$PlacementAcModel {
  const factory PlacementAcModel({
    @JsonKey(name: 'ac_id') required int acId,
    @JsonKey(name: 'ac_name') required String acName,
    @JsonKey(name: 'pk_ac') required String pkAc,
    String? anomaly,
    @JsonKey(name: 'lock_temp_setting') String? lockTempSetting,
    @JsonKey(name: 'timer_id') int? timerId,
    @JsonKey(name: 'timer_name') String? timerName,
    @JsonKey(name: 'remote_id') int? remoteId,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'category_image') required String categoryImage,
    @JsonKey(name: 'brand_id') required int brandId,
    @JsonKey(name: 'brand_name') required String brandName,
    @JsonKey(name: 'brand_image') required String brandImage,
    @JsonKey(name: 'auto_on_settings') dynamic autoOnSettings,
    PlacementAcDataModel? data,
  }) = _PlacementAcModel;

  factory PlacementAcModel.fromJson(Map<String, dynamic> json) =>
      _$PlacementAcModelFromJson(json);
}

@freezed
abstract class PlacementAcDataModel with _$PlacementAcDataModel {
  const factory PlacementAcDataModel({
    @JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? current,
    @JsonKey(fromJson: _toDouble, toJson: _fromDouble) double? watt,
    @JsonKey(name: 'return_temp', fromJson: _toDouble, toJson: _fromDouble)
    double? returnTemp,
    @JsonKey(name: 'supply_temp', fromJson: _toDouble, toJson: _fromDouble)
    double? supplyTemp,
    String? condition,
    String? status,
    @JsonKey(name: 'on_state') bool? onState,
    @JsonKey(name: 'is_online') bool? isOnline,
    @JsonKey(name: 'set_point') int? setPoint,
  }) = _PlacementAcDataModel;

  factory PlacementAcDataModel.fromJson(Map<String, dynamic> json) =>
      _$PlacementAcDataModelFromJson(json);
}
