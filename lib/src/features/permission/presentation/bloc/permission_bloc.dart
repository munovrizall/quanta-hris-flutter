import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/permission/domain/usecases/get_permission_history_usecase.dart';

import 'permission_event.dart';
import 'permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  final GetPermissionHistoryUseCase _getPermissionHistoryUseCase;

  PermissionBloc({
    required GetPermissionHistoryUseCase getPermissionHistoryUseCase,
  }) : _getPermissionHistoryUseCase = getPermissionHistoryUseCase,
       super(const PermissionState()) {
    on<PermissionEvent>((event, emit) async {
      await event.when(
        fetchPermissionHistory: () => _onFetchPermissionHistory(emit),
      );
    });
  }

  Future<void> _onFetchPermissionHistory(Emitter<PermissionState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final history = await _getPermissionHistoryUseCase();
      emit(state.copyWith(isLoading: false, history: history));
    } on ApiException catch (error) {
      emit(state.copyWith(isLoading: false, error: error.message));
    } catch (_) {
      emit(
        state.copyWith(
          isLoading: false,
          error: 'Terjadi kesalahan saat memuat riwayat izin.',
        ),
      );
    }
  }
}
