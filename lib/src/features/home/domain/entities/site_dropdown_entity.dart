import 'package:freezed_annotation/freezed_annotation.dart';

part 'site_dropdown_entity.freezed.dart';

@freezed
abstract class SiteDropdownEntity with _$SiteDropdownEntity {
  const factory SiteDropdownEntity({
    required List<SiteDropdownItemEntity> sites,
  }) = _SiteDropdownEntity;
}

@freezed
abstract class SiteDropdownItemEntity with _$SiteDropdownItemEntity {
  const factory SiteDropdownItemEntity({
    required int siteId,
    required String siteName,
    required int clientId,
    required int placementCount,
  }) = _SiteDropdownItemEntity;
}