import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_detail_entity.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_entity.dart';

part 'payroll_state.freezed.dart';

@freezed
abstract class PayrollState with _$PayrollState {
  const factory PayrollState({
    @Default(false) bool isLoadingSlipGaji,
    @Default(false) bool isLoadingSlipGajiDetail,
    List<SlipGajiEntity>? slipGaji,
    String? slipGajiError,
    SlipGajiDetailEntity? slipGajiDetail,
    String? slipGajiDetailError,
  }) = _PayrollState;
}
