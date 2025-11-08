import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_detail_entity.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_entity.dart';

abstract class PayrollRepository {
  Future<List<SlipGajiEntity>> getSlipGaji();
  Future<SlipGajiDetailEntity> getSlipGajiDetail({
    required int tahun,
    required int bulan,
  });
}
