import 'dart:async';

import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_emission_usecase.dart';
// HAPUS import get_placement_acsm_by_client_usecase.dart
import 'package:quanta_hris/src/features/home/domain/usecases/get_placement_acsm_by_site_usecase.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_site_dropdown_usecase.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/post_power_state_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetEmissionUseCase _getEmissionUseCase;
  final GetSiteDropdownUseCase _getSiteDropdownUseCase;
  final GetPlacementAcsmBySiteUseCase _getPlacementAcsmBySiteUseCase;
  final PostPowerStateUsecase _postPowerStateUsecase;

  Timer? _placementAcsmTimer;
  static const Duration _pollInterval = Duration(seconds: 5);

  HomeBloc({
    required GetEmissionUseCase getEmissionUseCase,
    required GetSiteDropdownUseCase getSiteDropdownUseCase,
    required GetPlacementAcsmBySiteUseCase getPlacementAcsmBySiteUseCase,
    required PostPowerStateUsecase postPowerStateUsecase,
  }) : _getEmissionUseCase = getEmissionUseCase,
       _getSiteDropdownUseCase = getSiteDropdownUseCase,
       _getPlacementAcsmBySiteUseCase = getPlacementAcsmBySiteUseCase,
       _postPowerStateUsecase = postPowerStateUsecase,
       super(const HomeState()) {
    // Register event handlers
    on<HomeEvent>((event, emit) async {
      await event.when(
        fetchInitialData: () => _onFetchInitialData(emit),
        fetchEmissionData: () => _onFetchEmissionData(emit),
        fetchSiteDropdownData: () => _onFetchSiteDropdownData(emit),
        fetchPlacementAcsmBySiteData: (clientId, siteId, isPolling) =>
            _onFetchPlacementAcsmBySiteData(clientId, siteId, isPolling, emit),
        toggleAcPower: (acId, powerState) =>
            _onToggleAcPower(acId, powerState, emit),
      );
    });
  }

  @override
  Future<void> close() {
    _stopPlacementAcsmPolling();
    return super.close();
  }

  Future<void> _onFetchInitialData(Emitter<HomeState> emit) async {
    // Fetch emission data
    add(const HomeEvent.fetchEmissionData());

    // Fetch site dropdown first, then decide based on sites count
    add(const HomeEvent.fetchSiteDropdownData());
  }

  Future<void> _onFetchEmissionData(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoadingEmission: true, emissionError: null));

    try {
      final emission = await _getEmissionUseCase();
      emit(state.copyWith(emissionData: emission, isLoadingEmission: false));
    } on ApiException catch (error) {
      emit(
        state.copyWith(isLoadingEmission: false, emissionError: error.message),
      );
    }
  }

  Future<void> _onFetchSiteDropdownData(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoadingSiteDropdown: true, siteDropdownError: null));
    try {
      final siteDropdown = await _getSiteDropdownUseCase();

      // emit dulu dropdownnya
      emit(
        state.copyWith(
          siteDropdownData: siteDropdown,
          isLoadingSiteDropdown: false,
        ),
      );

      final sites = siteDropdown.sites;
      if (sites.isNotEmpty) {
        final firstSite = sites.first;
        AppLogger.d(
          '🎯 ALWAYS FETCH BY SITE - Site: ${firstSite.siteName} (${sites.length} total sites)',
        );

        // SET loading state sebelum fetch placement
        emit(
          state.copyWith(
            selectedClientId: firstSite.clientId,
            selectedSiteId: firstSite.siteId,
            isLoadingPlacementAcsmBySite: true, // SET LOADING TRUE
            isPollingPlacementAcsmBySite: false, // NOT POLLING
            placementAcsmBySiteError: null,
          ),
        );

        // SELALU fetch by site - baik single maupun multiple sites
        add(
          HomeEvent.fetchPlacementAcsmBySiteData(
            clientId: firstSite.clientId,
            siteId: firstSite.siteId,
            isPolling: false, // EXPLICITLY FALSE
          ),
        );
      } else {
        AppLogger.d('⚠️ NO SITES FOUND');
        // Jika tidak ada site sama sekali, set empty state
        emit(
          state.copyWith(
            placementAcsmBySiteData: [],
            placementAcsmBySiteError: 'Tidak ada site yang tersedia',
          ),
        );
      }
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isLoadingSiteDropdown: false,
          siteDropdownError: error.message,
        ),
      );
    }
  }

  Future<void> _onFetchPlacementAcsmBySiteData(
    int clientId,
    int siteId,
    bool isPolling,
    Emitter<HomeState> emit,
  ) async {
    if (!isPolling) {
      _stopPlacementAcsmPolling();
    }

    // Check if this is a site change (not initial fetch or polling)
    final isSiteChange =
        state.selectedSiteId != null && state.selectedSiteId != siteId;

    // >>> UPDATE selected site info dengan tracking previous + SET LOADING berdasarkan isPolling <<<
    emit(
      state.copyWith(
        previousSelectedSiteId: state.selectedSiteId,
        selectedClientId: clientId,
        selectedSiteId: siteId,
        // Clear data jika site berubah (HANYA jika bukan polling)
        placementAcsmBySiteData: (isSiteChange && !isPolling)
            ? []
            : state.placementAcsmBySiteData,
        // >>> SET LOADING hanya jika BUKAN polling <<<
        isLoadingPlacementAcsmBySite: !isPolling, // ONLY if not polling
        isPollingPlacementAcsmBySite: isPolling, // Track polling state
        placementAcsmBySiteError: (isSiteChange && !isPolling)
            ? null
            : state.placementAcsmBySiteError,
      ),
    );

    try {
      final placementAcsms = await _getPlacementAcsmBySiteUseCase(
        clientId: clientId,
        siteId: siteId,
      );

      emit(
        state.copyWith(
          placementAcsmBySiteData: placementAcsms,
          isLoadingPlacementAcsmBySite: false,
          isPollingPlacementAcsmBySite: false, // Reset polling state
          placementAcsmBySiteError: null,
          // Reset previous site tracking after successful fetch (HANYA jika bukan polling)
          previousSelectedSiteId: isPolling
              ? state.previousSelectedSiteId
              : null,
        ),
      );

      // >>> START polling dengan site yang baru (hanya jika bukan dari polling) <<<
      if (!isPolling) {
        _startSitePolling(clientId, siteId);
      }
    } on ApiException catch (error) {
      AppLogger.d('🚀 FETCH BY SITE ERROR: ${error.message}');
      emit(
        state.copyWith(
          isLoadingPlacementAcsmBySite: false,
          isPollingPlacementAcsmBySite: false, // Reset polling state
          placementAcsmBySiteError: error.message,
          // Reset previous site tracking on error too (HANYA jika bukan polling)
          previousSelectedSiteId: isPolling
              ? state.previousSelectedSiteId
              : null,
        ),
      );

      // >>> STOP polling jika ada error <<<
      if (isPolling) {
        _stopPlacementAcsmPolling();
      }
    }
  }

  void _startSitePolling(int clientId, int siteId) {
    _placementAcsmTimer = Timer.periodic(_pollInterval, (timer) {
      if (!isClosed && state.placementAcsmBySiteError == null) {
        add(
          HomeEvent.fetchPlacementAcsmBySiteData(
            clientId: clientId,
            siteId: siteId,
            isPolling: true, // POLLING = TRUE
          ),
        );
      } else {
        if (state.placementAcsmBySiteError != null) {
          timer.cancel();
          _placementAcsmTimer = null;
        }
      }
    });
  }

  void _stopPlacementAcsmPolling() {
    if (_placementAcsmTimer != null) {
      _placementAcsmTimer?.cancel();
      _placementAcsmTimer = null;
    }
  }

  Future<void> _onToggleAcPower(
    int acId,
    bool powerState,
    Emitter<HomeState> emit,
  ) async {
    final loadingIds = Set<int>.from(state.loadingToggleAcIds)..add(acId);
    final errors = Map<int, String>.from(state.toggleAcErrors)..remove(acId);
    final successMessages = Map<int, String>.from(
      state.toggleAcResponseMessages,
    )..remove(acId);

    emit(
      state.copyWith(
        loadingToggleAcIds: loadingIds,
        toggleAcErrors: errors,
        toggleAcResponseMessages: successMessages,
      ),
    );

    try {
      final apiMessageResponse = await _postPowerStateUsecase(
        acId: acId,
        powerState: powerState,
      );

      // SUCCESS: Remove from loading, add to success tracking
      final updatedLoadingIds = Set<int>.from(state.loadingToggleAcIds)
        ..remove(acId);
      final updatedSuccess = Map<int, DateTime>.from(state.lastToggleSuccess);
      updatedSuccess[acId] = DateTime.now();

      final updatedResponseMessages = Map<int, String>.from(
        state.toggleAcResponseMessages,
      );
      updatedResponseMessages[acId] = apiMessageResponse; // STORE API MESSAGE

      emit(
        state.copyWith(
          loadingToggleAcIds: updatedLoadingIds,
          toggleAcErrors:
              state.toggleAcErrors, // Keep existing errors for other ACs
          lastToggleSuccess: updatedSuccess,
          toggleAcResponseMessages: updatedResponseMessages,
        ),
      );
    } on ApiException catch (error) {
      final updatedLoadingIds = Set<int>.from(state.loadingToggleAcIds)
        ..remove(acId);
      final updatedErrors = Map<int, String>.from(state.toggleAcErrors);
      updatedErrors[acId] = error.message;

      emit(
        state.copyWith(
          loadingToggleAcIds: updatedLoadingIds,
          toggleAcErrors: updatedErrors,
          toggleAcResponseMessages: state.toggleAcResponseMessages,
        ),
      );
    }
  }
}
