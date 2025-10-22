import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'karyawan_id') required String karyawanId,
    @JsonKey(name: 'nama_lengkap') required String namaLengkap,
    required String email,
    required Role role,
    required String departemen,
    required String jabatan,
    @JsonKey(name: 'nomor_telepon') required String nomorTelepon,
    @JsonKey(name: 'face_embedding') required String faceEmbedding,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class Role with _$Role {
  const factory Role({
    @JsonKey(name: 'role_id') required String roleId,
    required String name,
    @JsonKey(name: 'guard_name') required String guardName,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}