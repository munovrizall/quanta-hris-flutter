import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/history/domain/usecases/get_attendance_history_usecase.dart';

import 'history_event.dart';
import 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final GetAttendanceHistoryUseCase _getAttendanceHistoryUseCase;

  HistoryBloc({
    required GetAttendanceHistoryUseCase getAttendanceHistoryUseCase,
  }) : _getAttendanceHistoryUseCase = getAttendanceHistoryUseCase,
       super(const HistoryState()) {
    on<HistoryEvent>((event, emit) async {
      await event.when(
        fetchAttendanceHistory: () => _onFetchAttendanceHistory(emit),
      );
    });
  }

  Future<void> _onFetchAttendanceHistory(Emitter<HistoryState> emit) async {
    emit(
      state.copyWith(
        isLoadingAttendanceHistory: true,
        attendanceHistoryError: null,
      ),
    );

    try {
      final attendanceHistory = await _getAttendanceHistoryUseCase();
      emit(
        state.copyWith(
          isLoadingAttendanceHistory: false,
          attendanceHistory: attendanceHistory,
        ),
      );
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isLoadingAttendanceHistory: false,
          attendanceHistoryError: error.message,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isLoadingAttendanceHistory: false,
          attendanceHistoryError:
              'Terjadi kesalahan saat memuat riwayat absensi.',
        ),
      );
    }
  }
}
