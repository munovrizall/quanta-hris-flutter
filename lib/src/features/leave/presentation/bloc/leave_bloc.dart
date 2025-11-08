import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/submit_leave_params.dart';
import 'package:quanta_hris/src/features/leave/domain/usecases/get_leave_history_usecase.dart';
import 'package:quanta_hris/src/features/leave/domain/usecases/submit_leave_usecase.dart';

import 'leave_event.dart';
import 'leave_state.dart';

class LeaveBloc extends Bloc<LeaveEvent, LeaveState> {
  final SubmitLeaveUseCase _submitLeaveUseCase;
  final GetLeaveHistoryUseCase _getLeaveHistoryUseCase;

  LeaveBloc({
    required SubmitLeaveUseCase submitLeaveUseCase,
    required GetLeaveHistoryUseCase getLeaveHistoryUseCase,
  }) : _submitLeaveUseCase = submitLeaveUseCase,
       _getLeaveHistoryUseCase = getLeaveHistoryUseCase,
       super(const LeaveState()) {
    on<LeaveEvent>((event, emit) async {
      await event.when(
        submitLeave: (params) => _onSubmitLeave(emit, params),
        getLeaveHistory: () => _onGetLeaveHistory(emit),
      );
    });
  }

  Future<void> _onSubmitLeave(
    Emitter<LeaveState> emit,
    SubmitLeaveParams params,
  ) async {
    AppLogger.d('🎯 LeaveBloc: Submitting leave request');

    emit(
      state.copyWith(
        isSubmitLoading: true,
        submitError: null,
        submitSuccessMessage: null,
      ),
    );

    try {
      final result = await _submitLeaveUseCase(params: params);

      AppLogger.d(
        '✅ LeaveBloc: Leave submitted successfully with ID ${result.leave.cutiId}',
      );

      emit(
        state.copyWith(
          isSubmitLoading: false,
          submittedLeave: result.leave,
          submitSuccessMessage: result.message,
        ),
      );
    } on ApiException catch (error) {
      AppLogger.d('❌ LeaveBloc ApiException: ${error.message}');

      emit(state.copyWith(isSubmitLoading: false, submitError: error.message));
    } catch (error, stackTrace) {
      AppLogger.d('❌ LeaveBloc unexpected error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');

      emit(
        state.copyWith(
          isSubmitLoading: false,
          submitError: 'Terjadi kesalahan yang tidak terduga',
        ),
      );
    }
  }

  Future<void> _onGetLeaveHistory(Emitter<LeaveState> emit) async {
    AppLogger.d('🎯 LeaveBloc: Getting leave history');

    emit(state.copyWith(isHistoryLoading: true, historyError: null));

    try {
      final result = await _getLeaveHistoryUseCase();

      AppLogger.d(
        '✅ LeaveBloc: Leave history retrieved successfully with ${result.totalPengajuan} items',
      );

      emit(state.copyWith(isHistoryLoading: false, leaveHistory: result));
    } on ApiException catch (error) {
      AppLogger.d('❌ LeaveBloc ApiException: ${error.message}');

      emit(
        state.copyWith(isHistoryLoading: false, historyError: error.message),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ LeaveBloc unexpected error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');

      emit(
        state.copyWith(
          isHistoryLoading: false,
          historyError: 'Terjadi kesalahan yang tidak terduga',
        ),
      );
    }
  }
}
