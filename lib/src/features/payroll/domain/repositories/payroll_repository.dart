import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_entity.dart';

abstract class PayrollRepository {
  Future<List<SlipGajiEntity>> getSlipGaji();
}
