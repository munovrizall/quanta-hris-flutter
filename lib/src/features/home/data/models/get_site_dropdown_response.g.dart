// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_site_dropdown_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSiteDropdownResponse _$GetSiteDropdownResponseFromJson(
  Map<String, dynamic> json,
) => _GetSiteDropdownResponse(
  sites: (json['sites'] as List<dynamic>)
      .map((e) => SiteDropdownItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetSiteDropdownResponseToJson(
  _GetSiteDropdownResponse instance,
) => <String, dynamic>{'sites': instance.sites};

_SiteDropdownItemModel _$SiteDropdownItemModelFromJson(
  Map<String, dynamic> json,
) => _SiteDropdownItemModel(
  siteId: (json['site_id'] as num).toInt(),
  siteName: json['site_name'] as String,
  clientId: (json['client_id'] as num).toInt(),
  placementCount: (json['placement_count'] as num).toInt(),
);

Map<String, dynamic> _$SiteDropdownItemModelToJson(
  _SiteDropdownItemModel instance,
) => <String, dynamic>{
  'site_id': instance.siteId,
  'site_name': instance.siteName,
  'client_id': instance.clientId,
  'placement_count': instance.placementCount,
};
