import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_company_branches_response.freezed.dart';
part 'get_company_branches_response.g.dart';

@freezed
abstract class GetCompanyBranchesResponse with _$GetCompanyBranchesResponse {
  const factory GetCompanyBranchesResponse({
    @JsonKey(name: 'perusahaan') required CompanyModel company,
    @JsonKey(name: 'branches') required List<BranchModel> branches,
  }) = _GetCompanyBranchesResponse;

  factory GetCompanyBranchesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCompanyBranchesResponseFromJson(json);
}

@freezed
abstract class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    @JsonKey(name: 'perusahaan_id') required String companyId,
    @JsonKey(name: 'nama_perusahaan') required String companyName,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}

@freezed
abstract class BranchModel with _$BranchModel {
  const factory BranchModel({
    @JsonKey(name: 'cabang_id') required String branchId,
    @JsonKey(name: 'nama_cabang') required String branchName,
    @JsonKey(name: 'alamat') required String address,
    @JsonKey(name: 'latitude') required double latitude,
    @JsonKey(name: 'longitude') required double longitude,
    @JsonKey(name: 'radius_lokasi') required int radiusLocation,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}
