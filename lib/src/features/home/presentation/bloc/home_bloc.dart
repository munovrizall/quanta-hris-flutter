import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_operational_hour_usecase.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetOperationalHourUseCase _getOperationalHoursUseCase;

  HomeBloc({required GetOperationalHourUseCase getOperationalHoursUseCase})
    : _getOperationalHoursUseCase = getOperationalHoursUseCase,
      super(const HomeState()) {
    // Register event handlers
    on<HomeEvent>((event, emit) async {
      await event.when(
        fetchInitialData: () => _onFetchInitialData(emit),
        fetchOperationalHourData: () => _onFetchOperationalHourData(emit),
      );
    });
  }

  Future<void> _onFetchInitialData(Emitter<HomeState> emit) async {
    // Fetch operational hour data
    add(const HomeEvent.fetchOperationalHourData());
  }

  Future<void> _onFetchOperationalHourData(Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        isLoadingOperationalHour: true,
        operationalHourError: null,
      ),
    );

    try {
      final operationalHour = await _getOperationalHoursUseCase();
      emit(
        state.copyWith(
          operationalHourData: operationalHour,
          isLoadingOperationalHour: false,
        ),
      );
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isLoadingOperationalHour: false,
          operationalHourError: error.message,
        ),
      );
    }
  }
}
