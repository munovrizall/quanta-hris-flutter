import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/submit_permission_params.dart';
import 'package:quanta_hris/src/features/permission/domain/usecases/get_permission_history_usecase.dart';
import 'package:quanta_hris/src/features/permission/domain/usecases/submit_permission_usecase.dart';

import 'permission_event.dart';
import 'permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  final GetPermissionHistoryUseCase _getPermissionHistoryUseCase;
  final SubmitPermissionUseCase _submitPermissionUseCase;

  PermissionBloc({
    required GetPermissionHistoryUseCase getPermissionHistoryUseCase,
    required SubmitPermissionUseCase submitPermissionUseCase,
  }) : _getPermissionHistoryUseCase = getPermissionHistoryUseCase,
       _submitPermissionUseCase = submitPermissionUseCase,
       super(const PermissionState()) {
    on<PermissionEvent>((event, emit) async {
      await event.when(
        fetchPermissionHistory: () => _onFetchPermissionHistory(emit),
        submitPermission: (params) => _onSubmitPermission(emit, params),
      );
    });
  }

  Future<void> _onFetchPermissionHistory(Emitter<PermissionState> emit) async {
    emit(state.copyWith(isHistoryLoading: true, historyError: null));

    try {
      final history = await _getPermissionHistoryUseCase();
      emit(state.copyWith(isHistoryLoading: false, history: history));
    } on ApiException catch (error) {
      emit(
        state.copyWith(isHistoryLoading: false, historyError: error.message),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isHistoryLoading: false,
          historyError: 'Terjadi kesalahan saat memuat riwayat izin.',
        ),
      );
    }
  }

  Future<void> _onSubmitPermission(
    Emitter<PermissionState> emit,
    SubmitPermissionParams params,
  ) async {
    emit(
      state.copyWith(
        isSubmitLoading: true,
        submitError: null,
        submitSuccessMessage: null,
      ),
    );

    try {
      final result = await _submitPermissionUseCase(params: params);
      emit(
        state.copyWith(
          isSubmitLoading: false,
          submittedPermission: result.permission,
          submitSuccessMessage: result.message,
        ),
      );
    } on ApiException catch (error) {
      emit(state.copyWith(isSubmitLoading: false, submitError: error.message));
    } catch (_) {
      emit(
        state.copyWith(
          isSubmitLoading: false,
          submitError: 'Terjadi kesalahan saat mengajukan izin.',
        ),
      );
    }
  }
}
