// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_company_branches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCompanyBranchesResponse _$GetCompanyBranchesResponseFromJson(
  Map<String, dynamic> json,
) => _GetCompanyBranchesResponse(
  company: CompanyModel.fromJson(json['perusahaan'] as Map<String, dynamic>),
  branches: (json['branches'] as List<dynamic>)
      .map((e) => BranchModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetCompanyBranchesResponseToJson(
  _GetCompanyBranchesResponse instance,
) => <String, dynamic>{
  'perusahaan': instance.company,
  'branches': instance.branches,
};

_CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) =>
    _CompanyModel(
      companyId: json['perusahaan_id'] as String,
      companyName: json['nama_perusahaan'] as String,
    );

Map<String, dynamic> _$CompanyModelToJson(_CompanyModel instance) =>
    <String, dynamic>{
      'perusahaan_id': instance.companyId,
      'nama_perusahaan': instance.companyName,
    };

_BranchModel _$BranchModelFromJson(Map<String, dynamic> json) => _BranchModel(
  branchId: json['cabang_id'] as String,
  branchName: json['nama_cabang'] as String,
  address: json['alamat'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  radiusLocation: (json['radius_lokasi'] as num).toInt(),
);

Map<String, dynamic> _$BranchModelToJson(_BranchModel instance) =>
    <String, dynamic>{
      'cabang_id': instance.branchId,
      'nama_cabang': instance.branchName,
      'alamat': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'radius_lokasi': instance.radiusLocation,
    };
