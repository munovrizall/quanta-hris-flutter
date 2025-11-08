import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_entity.dart';
import 'package:quanta_hris/src/features/payroll/domain/repositories/payroll_repository.dart';

class GetSlipGajiUseCase {
  final PayrollRepository _repository;

  GetSlipGajiUseCase(this._repository);

  Future<List<SlipGajiEntity>> call() {
    return _repository.getSlipGaji();
  }
}
