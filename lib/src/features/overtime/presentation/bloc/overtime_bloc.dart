import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/overtime/domain/usecases/get_overtime_history_usecase.dart';

import 'overtime_event.dart';
import 'overtime_state.dart';

class OvertimeBloc extends Bloc<OvertimeEvent, OvertimeState> {
  final GetOvertimeHistoryUseCase _getOvertimeHistoryUseCase;

  OvertimeBloc({required GetOvertimeHistoryUseCase getOvertimeHistoryUseCase})
    : _getOvertimeHistoryUseCase = getOvertimeHistoryUseCase,
      super(const OvertimeState()) {
    on<OvertimeEvent>((event, emit) async {
      await event.when(fetchHistory: () => _onFetchHistory(emit));
    });
  }

  Future<void> _onFetchHistory(Emitter<OvertimeState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final histories = await _getOvertimeHistoryUseCase();
      emit(state.copyWith(isLoading: false, histories: histories));
    } on ApiException catch (error) {
      emit(state.copyWith(isLoading: false, error: error.message));
    } catch (_) {
      emit(
        state.copyWith(
          isLoading: false,
          error: 'Terjadi kesalahan saat memuat riwayat lembur.',
        ),
      );
    }
  }
}
