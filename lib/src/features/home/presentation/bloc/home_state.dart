import 'package:quanta_hris/src/features/home/domain/entities/emission_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/placement_acsm_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/site_dropdown_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    // Emission Data
    @Default(null) EmissionEntity? emissionData,
    @Default(false) bool isLoadingEmission,
    @Default(null) String? emissionError,

    // Site Dropdown Data
    @Default(null) SiteDropdownEntity? siteDropdownData,
    @Default(false) bool isLoadingSiteDropdown,
    @Default(null) String? siteDropdownError,

    // AC List Data (by site) - for all scenarios
    @Default([]) List<PlacementAcsmEntity> placementAcsmBySiteData,
    @Default(false) bool isLoadingPlacementAcsmBySite,
    @Default(false) bool isPollingPlacementAcsmBySite,
    @Default(null) String? placementAcsmBySiteError,

    // Store selected site info for polling
    @Default(null) int? selectedClientId,
    @Default(null) int? selectedSiteId,

    // Track previous selected site to detect changes
    @Default(null) int? previousSelectedSiteId,

    // Toggle AC state - PER AC ID
    @Default(<int>{}) Set<int> loadingToggleAcIds,
    @Default(<int, String>{}) Map<int, String> toggleAcErrors,
    @Default(<int, DateTime>{}) Map<int, DateTime> lastToggleSuccess,
    @Default(<int, String>{}) Map<int, String> toggleAcResponseMessages,
  }) = _HomeState;

  const HomeState._();

  bool get isLoadingAny =>
      isLoadingEmission ||
      isLoadingSiteDropdown ||
      isLoadingPlacementAcsmBySite ||
      loadingToggleAcIds.isNotEmpty;

  bool get hasAnyError =>
      emissionError != null ||
      siteDropdownError != null ||
      placementAcsmBySiteError != null ||
      toggleAcErrors.isNotEmpty;

  // Check if site has changed
  bool get hasSiteChanged =>
      previousSelectedSiteId != null &&
      selectedSiteId != null &&
      previousSelectedSiteId != selectedSiteId;

  // Simplified - always use placementAcsmBySiteData
  List<PlacementAcsmEntity> get currentPlacementData {
    if (hasSiteChanged && isLoadingPlacementAcsmBySite) {
      return [];
    }
    return placementAcsmBySiteData;
  }

  bool get isLoadingCurrentPlacement {
    // HANYA loading jika bukan polling
    return isLoadingPlacementAcsmBySite && !isPollingPlacementAcsmBySite;
  }

  String? get currentPlacementError {
    return placementAcsmBySiteError;
  }

  // NEW: Helper methods untuk per-AC state
  bool isLoadingToggleAc(int acId) {
    return loadingToggleAcIds.contains(acId);
  }

  String? getToggleAcError(int acId) {
    return toggleAcErrors[acId];
  }

  bool hasRecentToggleSuccess(
    int acId, {
    Duration threshold = const Duration(seconds: 3),
  }) {
    final lastSuccess = lastToggleSuccess[acId];
    if (lastSuccess == null) return false;
    return DateTime.now().difference(lastSuccess) < threshold;
  }

  String? getToggleAcResponseMessage(int acId) {
    return toggleAcResponseMessages[acId];
  }
}
