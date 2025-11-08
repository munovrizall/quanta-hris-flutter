import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/payroll/data/datasources/payroll_remote_data_source.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_entity.dart';
import 'package:quanta_hris/src/features/payroll/domain/repositories/payroll_repository.dart';

class PayrollRepositoryImpl implements PayrollRepository {
  final PayrollRemoteDataSource _remoteDataSource;

  PayrollRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<SlipGajiEntity>> getSlipGaji() async {
    try {
      final response = await _remoteDataSource.getSlipGaji();
      final dataList = response.data;

      // Map list of response models to list of entities
      return dataList
          .map(
            (data) => SlipGajiEntity(
              penggajianId: data.penggajianId,
              periodeBulan: data.periodeBulan,
              periodeTahun: data.periodeTahun,
              periodeLabel: data.periodeLabel,
              gajiBersih: data.gajiBersih,
              sudahDitransfer: data.sudahDitransfer,
            ),
          )
          .toList();
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('Terjadi kesalahan saat memuat slip gaji.');
    }
  }
}
