import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_detail_entity.dart';
import 'package:quanta_hris/src/features/payroll/domain/repositories/payroll_repository.dart';

class GetSlipGajiDetailUseCase {
  final PayrollRepository _repository;

  GetSlipGajiDetailUseCase(this._repository);

  Future<SlipGajiDetailEntity> call({required int tahun, required int bulan}) {
    return _repository.getSlipGajiDetail(tahun: tahun, bulan: bulan);
  }
}
