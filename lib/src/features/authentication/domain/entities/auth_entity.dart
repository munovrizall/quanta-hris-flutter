import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';

@freezed
abstract class AuthEntity with _$AuthEntity {
  const factory AuthEntity({
    required String token,
    required UserEntity user,
  }) = _AuthEntity;

  factory AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthEntityFromJson(json);
}

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    @JsonKey(name: 'karyawan_id') required String karyawanId,
    @JsonKey(name: 'nama_lengkap') required String namaLengkap,
    required String email,
    required RoleEntity role,
    required String departemen,
    required String jabatan,
    @JsonKey(name: 'nomor_telepon') required String nomorTelepon,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

@freezed
abstract class RoleEntity with _$RoleEntity {
  const factory RoleEntity({
    @JsonKey(name: 'role_id') required String roleId,
    required String name,
    @JsonKey(name: 'guard_name') required String guardName,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _RoleEntity;

  factory RoleEntity.fromJson(Map<String, dynamic> json) =>
      _$RoleEntityFromJson(json);
}
