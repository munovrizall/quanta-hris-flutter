import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/permission/data/datasources/permission_remote_data_source.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';
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
}
