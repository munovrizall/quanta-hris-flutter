import 'package:quanta_hris/src/features/payroll/domain/repositories/payroll_repository.dart';

class DownloadSlipGajiUseCase {
  final PayrollRepository _repository;

  DownloadSlipGajiUseCase(this._repository);

  Future<String> call({required int tahun, required int bulan}) {
    return _repository.downloadSlipGaji(tahun: tahun, bulan: bulan);
  }
}
