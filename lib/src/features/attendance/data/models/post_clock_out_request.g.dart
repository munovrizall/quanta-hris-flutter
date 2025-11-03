// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_clock_out_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostClockOutRequest _$PostClockOutRequestFromJson(Map<String, dynamic> json) =>
    _PostClockOutRequest(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      fotoPulang: json['foto_pulang'] as String?,
    );

Map<String, dynamic> _$PostClockOutRequestToJson(
  _PostClockOutRequest instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'foto_pulang': instance.fotoPulang,
};
