import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/payroll/domain/usecases/get_slip_gaji_usecase.dart';

import 'payroll_event.dart';
import 'payroll_state.dart';

class PayrollBloc extends Bloc<PayrollEvent, PayrollState> {
  final GetSlipGajiUseCase _getSlipGajiUseCase;

  PayrollBloc({required GetSlipGajiUseCase getSlipGajiUseCase})
    : _getSlipGajiUseCase = getSlipGajiUseCase,
      super(const PayrollState()) {
    on<PayrollEvent>((event, emit) async {
      await event.when(
        fetchSlipGaji: () => _onFetchSlipGaji(emit),
      );
    });
  }

  Future<void> _onFetchSlipGaji(Emitter<PayrollState> emit) async {
    emit(
      state.copyWith(
        isLoadingSlipGaji: true,
        slipGajiError: null,
      ),
    );

    try {
      final slipGaji = await _getSlipGajiUseCase();
      emit(
        state.copyWith(
          isLoadingSlipGaji: false,
          slipGaji: slipGaji,
        ),
      );
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isLoadingSlipGaji: false,
          slipGajiError: error.message,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isLoadingSlipGaji: false,
          slipGajiError: 'Terjadi kesalahan saat memuat slip gaji.',
        ),
      );
    }
  }
}
