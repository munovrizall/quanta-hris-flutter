import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_params.dart';

part 'overtime_event.freezed.dart';

@freezed
class OvertimeEvent with _$OvertimeEvent {
  const factory OvertimeEvent.fetchHistory() = _FetchHistory;
  const factory OvertimeEvent.submitOvertime({
    required SubmitOvertimeParams params,
  }) = _SubmitOvertime;
}
