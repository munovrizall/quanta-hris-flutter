import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  /// Perintah untuk memuat semua data awal saat halaman dibuka.
  const factory HomeEvent.fetchInitialData() = _FetchInitialData;

  /// Perintah untuk mengambil/memperbarui data jam operasional
  const factory HomeEvent.fetchOperationalHourData() =
      _FetchOperationalHourData;

  /// Perintah untuk mengambil/memperbarui data cuti dan izin hari ini
  const factory HomeEvent.fetchTodayLeavesData() = _FetchTodayLeavesData;

  /// Perintah untuk mengambil/memperbarui status apakah pengguna sudah clock-in hari ini
  const factory HomeEvent.fetchIsClockedInData() = _FetchIsClockedIn;
}
