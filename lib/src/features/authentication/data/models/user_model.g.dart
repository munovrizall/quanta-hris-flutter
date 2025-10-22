// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  karyawanId: json['karyawan_id'] as String,
  namaLengkap: json['nama_lengkap'] as String,
  email: json['email'] as String,
  role: Role.fromJson(json['role'] as Map<String, dynamic>),
  departemen: json['departemen'] as String,
  jabatan: json['jabatan'] as String,
  nomorTelepon: json['nomor_telepon'] as String,
  faceEmbedding: json['face_embedding'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'karyawan_id': instance.karyawanId,
      'nama_lengkap': instance.namaLengkap,
      'email': instance.email,
      'role': instance.role,
      'departemen': instance.departemen,
      'jabatan': instance.jabatan,
      'nomor_telepon': instance.nomorTelepon,
      'face_embedding': instance.faceEmbedding,
    };

_Role _$RoleFromJson(Map<String, dynamic> json) => _Role(
  roleId: json['role_id'] as String,
  name: json['name'] as String,
  guardName: json['guard_name'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$RoleToJson(_Role instance) => <String, dynamic>{
  'role_id': instance.roleId,
  'name': instance.name,
  'guard_name': instance.guardName,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
