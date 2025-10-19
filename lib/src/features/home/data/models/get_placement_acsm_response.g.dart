// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_placement_acsm_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetPlacementAcsmResponse _$GetPlacementAcsmResponseFromJson(
  Map<String, dynamic> json,
) => _GetPlacementAcsmResponse(
  siteId: (json['site_id'] as num).toInt(),
  siteName: json['site_name'] as String,
  rooms: (json['rooms'] as List<dynamic>)
      .map((e) => PlacementRoomModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetPlacementAcsmResponseToJson(
  _GetPlacementAcsmResponse instance,
) => <String, dynamic>{
  'site_id': instance.siteId,
  'site_name': instance.siteName,
  'rooms': instance.rooms,
};

_PlacementRoomModel _$PlacementRoomModelFromJson(Map<String, dynamic> json) =>
    _PlacementRoomModel(
      roomId: (json['room_id'] as num).toInt(),
      roomName: json['room_name'] as String,
      placements: (json['placements'] as List<dynamic>)
          .map((e) => PlacementItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlacementRoomModelToJson(_PlacementRoomModel instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'room_name': instance.roomName,
      'placements': instance.placements,
    };

_PlacementItemModel _$PlacementItemModelFromJson(Map<String, dynamic> json) =>
    _PlacementItemModel(
      placementId: (json['placement_id'] as num).toInt(),
      device: PlacementDeviceModel.fromJson(
        json['device'] as Map<String, dynamic>,
      ),
      ac: PlacementAcModel.fromJson(json['ac'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlacementItemModelToJson(_PlacementItemModel instance) =>
    <String, dynamic>{
      'placement_id': instance.placementId,
      'device': instance.device,
      'ac': instance.ac,
    };

_PlacementDeviceModel _$PlacementDeviceModelFromJson(
  Map<String, dynamic> json,
) => _PlacementDeviceModel(
  deviceId: (json['device_id'] as num).toInt(),
  deviceName: json['device_name'] as String,
  hardware: json['hardware'] as String,
  chipId: json['chip_id'] as String,
);

Map<String, dynamic> _$PlacementDeviceModelToJson(
  _PlacementDeviceModel instance,
) => <String, dynamic>{
  'device_id': instance.deviceId,
  'device_name': instance.deviceName,
  'hardware': instance.hardware,
  'chip_id': instance.chipId,
};

_PlacementAcModel _$PlacementAcModelFromJson(Map<String, dynamic> json) =>
    _PlacementAcModel(
      acId: (json['ac_id'] as num).toInt(),
      acName: json['ac_name'] as String,
      pkAc: json['pk_ac'] as String,
      anomaly: json['anomaly'] as String?,
      lockTempSetting: json['lock_temp_setting'] as String?,
      timerId: (json['timer_id'] as num?)?.toInt(),
      timerName: json['timer_name'] as String?,
      remoteId: (json['remote_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      categoryName: json['category_name'] as String,
      categoryImage: json['category_image'] as String,
      brandId: (json['brand_id'] as num).toInt(),
      brandName: json['brand_name'] as String,
      brandImage: json['brand_image'] as String,
      autoOnSettings: json['auto_on_settings'],
      data: json['data'] == null
          ? null
          : PlacementAcDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlacementAcModelToJson(_PlacementAcModel instance) =>
    <String, dynamic>{
      'ac_id': instance.acId,
      'ac_name': instance.acName,
      'pk_ac': instance.pkAc,
      'anomaly': instance.anomaly,
      'lock_temp_setting': instance.lockTempSetting,
      'timer_id': instance.timerId,
      'timer_name': instance.timerName,
      'remote_id': instance.remoteId,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'category_image': instance.categoryImage,
      'brand_id': instance.brandId,
      'brand_name': instance.brandName,
      'brand_image': instance.brandImage,
      'auto_on_settings': instance.autoOnSettings,
      'data': instance.data,
    };

_PlacementAcDataModel _$PlacementAcDataModelFromJson(
  Map<String, dynamic> json,
) => _PlacementAcDataModel(
  current: _toDouble(json['current']),
  watt: _toDouble(json['watt']),
  returnTemp: _toDouble(json['return_temp']),
  supplyTemp: _toDouble(json['supply_temp']),
  condition: json['condition'] as String?,
  status: json['status'] as String?,
  onState: json['on_state'] as bool?,
  isOnline: json['is_online'] as bool?,
  setPoint: (json['set_point'] as num?)?.toInt(),
);

Map<String, dynamic> _$PlacementAcDataModelToJson(
  _PlacementAcDataModel instance,
) => <String, dynamic>{
  'current': _fromDouble(instance.current),
  'watt': _fromDouble(instance.watt),
  'return_temp': _fromDouble(instance.returnTemp),
  'supply_temp': _fromDouble(instance.supplyTemp),
  'condition': instance.condition,
  'status': instance.status,
  'on_state': instance.onState,
  'is_online': instance.isOnline,
  'set_point': instance.setPoint,
};
