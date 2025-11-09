import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_application_entity.freezed.dart';

@freezed
abstract class PermissionApplicationEntity with _$PermissionApplicationEntity {
  const factory PermissionApplicationEntity({
    required String izinId,
    required String karyawanId,
    required String jenisIzin,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    required String statusIzin,
    required String createdAt,
  }) = _PermissionApplicationEntity;
}
