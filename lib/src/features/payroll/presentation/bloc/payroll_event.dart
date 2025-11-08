import 'package:freezed_annotation/freezed_annotation.dart';

part 'payroll_event.freezed.dart';

@freezed
abstract class PayrollEvent with _$PayrollEvent {
  const factory PayrollEvent.fetchSlipGaji() = _FetchSlipGaji;
}
