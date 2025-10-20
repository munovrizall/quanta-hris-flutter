import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/home/data/datasources/home_remote_data_source.dart';
import 'package:quanta_hris/src/features/home/domain/entities/operational_hour_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/today_leaves_entity.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._remoteDataSource);

  @override
  Future<OperationalHourEntity> getOperationalHours() async {
    try {
      final response = await _remoteDataSource.getOperationalHours();
      final data = response.data;

      return OperationalHourEntity(
        companyName: data.companyName,
        workingHours: WorkingHourEntity(
          startTime: data.workingHours.startTime,
          endTime: data.workingHours.endTime,
        ),
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }

  @override
  Future<TodayLeavesEntity> getTodayLeaves() async {
    try {
      final response = await _remoteDataSource.getTodayLeaves();
      final data = response.data;

      return TodayLeavesEntity(
        total: data.total,
        leavesData: data.leavesData
            .map(
              (item) => LeavePermitEntity(
                nama: item.nama,
                tipe: item.tipe,
                alasan: item.alasan,
                jenis: item.jenis,
                tanggalMulai: item.tanggalMulai,
                tanggalSelesai: item.tanggalSelesai,
              ),
            )
            .toList(),
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }
}
