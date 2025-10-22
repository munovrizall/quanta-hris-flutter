// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthEntity _$AuthEntityFromJson(Map<String, dynamic> json) => _AuthEntity(
  token: json['token'] as String,
  user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthEntityToJson(_AuthEntity instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};

_UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => _UserEntity(
  karyawanId: json['karyawan_id'] as String,
  namaLengkap: json['nama_lengkap'] as String,
  email: json['email'] as String,
  role: RoleEntity.fromJson(json['role'] as Map<String, dynamic>),
  departemen: json['departemen'] as String,
  jabatan: json['jabatan'] as String,
  nomorTelepon: json['nomor_telepon'] as String,
  faceEmbedding: json['face_embedding'] as String,
);

Map<String, dynamic> _$UserEntityToJson(_UserEntity instance) =>
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

_RoleEntity _$RoleEntityFromJson(Map<String, dynamic> json) => _RoleEntity(
  roleId: json['role_id'] as String,
  name: json['name'] as String,
  guardName: json['guard_name'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$RoleEntityToJson(_RoleEntity instance) =>
    <String, dynamic>{
      'role_id': instance.roleId,
      'name': instance.name,
      'guard_name': instance.guardName,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
