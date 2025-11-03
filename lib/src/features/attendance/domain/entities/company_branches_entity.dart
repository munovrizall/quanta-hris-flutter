import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_branches_entity.freezed.dart';

@freezed
abstract class CompanyBranchesEntity with _$CompanyBranchesEntity {
  const factory CompanyBranchesEntity({
    required CompanyEntity company,
    required List<BranchEntity> branches,
  }) = _CompanyBranchesEntity;
}

@freezed
abstract class CompanyEntity with _$CompanyEntity {
  const factory CompanyEntity({
    required String companyId,
    required String companyName,
  }) = _CompanyEntity;
}

@freezed
abstract class BranchEntity with _$BranchEntity {
  const factory BranchEntity({
    required String branchId,
    required String branchName,
    required String address,
    required double latitude,
    required double longitude,
    required int radiusLocation,
  }) = _BranchEntity;
}
