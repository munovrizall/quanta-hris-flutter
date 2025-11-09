import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_history_entity.freezed.dart';

@freezed
abstract class PermissionHistoryEntity with _$PermissionHistoryEntity {
  const factory PermissionHistoryEntity({
    required String karyawanId,
    required int totalPengajuan,
    required List<PermissionHistoryItemEntity> riwayat,
  }) = _PermissionHistoryEntity;
}

@freezed
abstract class PermissionHistoryItemEntity with _$PermissionHistoryItemEntity {
  const factory PermissionHistoryItemEntity({
    required String izinId,
    required String jenisIzin,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String statusIzin,
    String? alasanPenolakan,
    String? dokumenPendukung,
    String? diprosesOleh,
    String? diprosesPada,
    required String dibuatPada,
    required String diperbaruiPada,
  }) = _PermissionHistoryItemEntity;
}
