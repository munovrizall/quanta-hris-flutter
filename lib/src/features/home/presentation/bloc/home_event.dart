import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  /// Perintah untuk memuat semua data awal saat halaman dibuka.
  const factory HomeEvent.fetchInitialData() = _FetchInitialData;

  /// Perintah untuk mengambil/memperbarui data emisi
  const factory HomeEvent.fetchEmissionData() = _FetchEmissionData;

  const factory HomeEvent.fetchSiteDropdownData() = _FetchSiteDropdownData;

  const factory HomeEvent.fetchPlacementAcsmBySiteData({
    required int clientId,
    required int siteId,
    @Default(false) bool isPolling, // ADD THIS
  }) = _FetchPlacementAcsmBySiteData;

  /// Perintah untuk menyalakan/mematikan AC.
  const factory HomeEvent.toggleAcPower({
    required int acId,
    required bool powerState,
  }) = _ToggleAc;
}
