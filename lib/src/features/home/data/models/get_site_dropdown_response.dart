import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_site_dropdown_response.freezed.dart';
part 'get_site_dropdown_response.g.dart';

@freezed
abstract class GetSiteDropdownResponse with _$GetSiteDropdownResponse {
  const factory GetSiteDropdownResponse({
    required List<SiteDropdownItemModel> sites,
  }) = _GetSiteDropdownResponse;

  factory GetSiteDropdownResponse.fromJson(List<dynamic> json) =>
      GetSiteDropdownResponse(
        sites: json.map((item) => SiteDropdownItemModel.fromJson(item)).toList(),
      );
}

@freezed
abstract class SiteDropdownItemModel with _$SiteDropdownItemModel {
  const factory SiteDropdownItemModel({
    @JsonKey(name: 'site_id')
    required int siteId,
    @JsonKey(name: 'site_name')
    required String siteName,
    @JsonKey(name: 'client_id')
    required int clientId,
    @JsonKey(name: 'placement_count')
    required int placementCount,
  }) = _SiteDropdownItemModel;

  factory SiteDropdownItemModel.fromJson(Map<String, dynamic> json) =>
      _$SiteDropdownItemModelFromJson(json);
}