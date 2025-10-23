import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_is_clocked_in_usecase.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_operational_hour_usecase.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_today_leaves_usecase.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetOperationalHourUseCase _getOperationalHoursUseCase;
  final GetTodayLeavesUseCase _getTodayLeavesUseCase;
  final GetIsClockedInUsecase _getIsClockedInUsecase;

  HomeBloc({
    required GetOperationalHourUseCase getOperationalHoursUseCase,
    required GetTodayLeavesUseCase getTodayLeavesUseCase,
    required GetIsClockedInUsecase getIsClockedInUsecase,
  }) : _getOperationalHoursUseCase = getOperationalHoursUseCase,
       _getTodayLeavesUseCase = getTodayLeavesUseCase,
       _getIsClockedInUsecase = getIsClockedInUsecase,
       super(const HomeState()) {
    // Register event handlers
    on<HomeEvent>((event, emit) async {
      await event.when(
        fetchInitialData: () => _onFetchInitialData(emit),
        fetchOperationalHourData: () => _onFetchOperationalHourData(emit),
        fetchTodayLeavesData: () => _onFetchTodayLeavesData(emit),
        fetchIsClockedInData: () => _onFetchIsClockedInData(emit),
      );
    });
  }

  Future<void> _onFetchInitialData(Emitter<HomeState> emit) async {
    // Fetch operational hour data
    add(const HomeEvent.fetchOperationalHourData());
    // Fetch today leaves data
    add(const HomeEvent.fetchTodayLeavesData());
    add(const HomeEvent.fetchIsClockedInData());
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

  Future<void> _onFetchTodayLeavesData(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoadingTodayLeaves: true, todayLeavesError: null));

    try {
      final todayLeaves = await _getTodayLeavesUseCase();
      emit(
        state.copyWith(
          todayLeavesData: todayLeaves,
          isLoadingTodayLeaves: false,
        ),
      );
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isLoadingTodayLeaves: false,
          todayLeavesError: error.message,
        ),
      );
    }
  }

  Future<void> _onFetchIsClockedInData(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoadingClockedIn: true, clockedInError: null));

    try {
      final isClockedIn = await _getIsClockedInUsecase();
      emit(
        state.copyWith(
          isClockedIn: isClockedIn,
          isLoadingClockedIn: false,
        ),
      );
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isLoadingClockedIn: false,
          clockedInError: error.message,
        ),
      );
    }
  }
}
