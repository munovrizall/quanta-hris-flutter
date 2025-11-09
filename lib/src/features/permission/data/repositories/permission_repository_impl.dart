import 'dart:io';

import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/permission/data/datasources/permission_remote_data_source.dart';
import 'package:quanta_hris/src/features/permission/data/models/submit_permission_request.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_application_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_submission_entity.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/submit_permission_params.dart';
import 'package:quanta_hris/src/features/permission/domain/repositories/permission_repository.dart';

class PermissionRepositoryImpl implements PermissionRepository {
  final PermissionRemoteDataSource _remoteDataSource;

  PermissionRepositoryImpl(this._remoteDataSource);

  @override
  Future<PermissionHistoryEntity> getPermissionHistory() async {
    try {
      final response = await _remoteDataSource.getPermissionHistory();
      final data = response.data;

      return PermissionHistoryEntity(
        karyawanId: data.karyawanId,
        totalPengajuan: data.totalPengajuan,
        riwayat: data.riwayat
            .map(
              (item) => PermissionHistoryItemEntity(
                izinId: item.izinId,
                jenisIzin: item.jenisIzin,
                tanggalMulai: item.tanggalMulai,
                tanggalSelesai: item.tanggalSelesai,
                statusIzin: item.statusIzin,
                alasanPenolakan: item.alasanPenolakan,
                dokumenPendukung: item.dokumenPendukung,
                diprosesOleh: item.diprosesOleh,
                diprosesPada: item.diprosesPada,
                dibuatPada: item.dibuatPada,
                diperbaruiPada: item.diperbaruiPada,
              ),
            )
            .toList(),
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('Terjadi kesalahan saat memuat riwayat izin.');
    }
  }

  @override
  Future<PermissionSubmissionEntity> submitPermission({
    required SubmitPermissionParams params,
  }) async {
    try {
      final request = SubmitPermissionRequest(
        jenisCuti: params.jenisIzin,
        tanggalMulai: params.tanggalMulai,
        tanggalSelesai: params.tanggalSelesai,
        keterangan: params.keterangan,
        dokumenPendukung: params.dokumenPendukungPath != null
            ? File(params.dokumenPendukungPath!)
            : null,
      );

      final response = await _remoteDataSource.submitPermission(
        request: request,
      );
      final data = response.data;

      final permission = PermissionApplicationEntity(
        izinId: data.izinId,
        karyawanId: data.karyawanId,
        jenisIzin: data.jenisIzin,
        tanggalMulai: data.tanggalMulai,
        tanggalSelesai: data.tanggalSelesai,
        keterangan: data.keterangan,
        statusIzin: data.statusIzin,
        createdAt: data.createdAt,
      );

      return PermissionSubmissionEntity(
        permission: permission,
        message: response.message,
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('Terjadi kesalahan saat mengajukan izin.');
    }
  }
}
