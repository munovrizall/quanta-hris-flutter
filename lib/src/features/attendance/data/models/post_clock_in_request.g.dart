// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_clock_in_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostClockInRequest _$PostClockInRequestFromJson(Map<String, dynamic> json) =>
    _PostClockInRequest(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      fotoMasuk: json['foto_masuk'] as String?,
    );

Map<String, dynamic> _$PostClockInRequestToJson(_PostClockInRequest instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'foto_masuk': instance.fotoMasuk,
    };
