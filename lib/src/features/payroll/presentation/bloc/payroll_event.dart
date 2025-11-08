import 'package:freezed_annotation/freezed_annotation.dart';

part 'payroll_event.freezed.dart';

@freezed
abstract class PayrollEvent with _$PayrollEvent {
  const factory PayrollEvent.fetchSlipGaji() = _FetchSlipGaji;
  const factory PayrollEvent.fetchSlipGajiDetail({
    required int tahun,
    required int bulan,
  }) = _FetchSlipGajiDetail;
  const factory PayrollEvent.downloadSlipGaji({
    required int tahun,
    required int bulan,
  }) = _DownloadSlipGaji;
}
