import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_params.dart';
import 'package:quanta_hris/src/features/overtime/domain/usecases/get_overtime_history_usecase.dart';
import 'package:quanta_hris/src/features/overtime/domain/usecases/submit_overtime_usecase.dart';

import 'overtime_event.dart';
import 'overtime_state.dart';

class OvertimeBloc extends Bloc<OvertimeEvent, OvertimeState> {
  final GetOvertimeHistoryUseCase _getOvertimeHistoryUseCase;
  final SubmitOvertimeUseCase _submitOvertimeUseCase;

  OvertimeBloc({
    required GetOvertimeHistoryUseCase getOvertimeHistoryUseCase,
    required SubmitOvertimeUseCase submitOvertimeUseCase,
  }) : _getOvertimeHistoryUseCase = getOvertimeHistoryUseCase,
       _submitOvertimeUseCase = submitOvertimeUseCase,
       super(const OvertimeState()) {
    on<OvertimeEvent>((event, emit) async {
      await event.when(
        fetchHistory: () => _onFetchHistory(emit),
        submitOvertime: (params) => _onSubmitOvertime(emit, params),
      );
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

  Future<void> _onSubmitOvertime(
    Emitter<OvertimeState> emit,
    SubmitOvertimeParams params,
  ) async {
    emit(
      state.copyWith(
        isSubmitLoading: true,
        submitError: null,
        submitSuccessMessage: null,
      ),
    );

    try {
      final result = await _submitOvertimeUseCase(params: params);
      emit(
        state.copyWith(
          isSubmitLoading: false,
          submissionResult: result,
          submitSuccessMessage: result.message,
        ),
      );
    } on ApiException catch (error) {
      emit(state.copyWith(isSubmitLoading: false, submitError: error.message));
    } catch (_) {
      emit(
        state.copyWith(
          isSubmitLoading: false,
          submitError: 'Terjadi kesalahan saat mengajukan lembur.',
        ),
      );
    }
  }
}
