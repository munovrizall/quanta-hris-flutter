import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/leave/domain/usecases/submit_leave_usecase.dart';

import 'leave_event.dart';
import 'leave_state.dart';

class LeaveBloc extends Bloc<LeaveEvent, LeaveState> {
  final SubmitLeaveUseCase _submitLeaveUseCase;

  LeaveBloc({required SubmitLeaveUseCase submitLeaveUseCase})
    : _submitLeaveUseCase = submitLeaveUseCase,
      super(const LeaveState()) {
    on<LeaveEvent>((event, emit) async {
      await event.when(
        submitLeave:
            (
              jenisCuti,
              tanggalMulai,
              tanggalSelesai,
              keterangan,
              dokumenPendukungPath,
            ) => _onSubmitLeave(
              emit,
              jenisCuti,
              tanggalMulai,
              tanggalSelesai,
              keterangan,
              dokumenPendukungPath,
            ),
      );
    });
  }

  Future<void> _onSubmitLeave(
    Emitter<LeaveState> emit,
    String jenisCuti,
    String tanggalMulai,
    String tanggalSelesai,
    String keterangan,
    String? dokumenPendukungPath,
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
      final result = await _submitLeaveUseCase(
        jenisCuti: jenisCuti,
        tanggalMulai: tanggalMulai,
        tanggalSelesai: tanggalSelesai,
        keterangan: keterangan,
        dokumenPendukungPath: dokumenPendukungPath,
      );

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
}
