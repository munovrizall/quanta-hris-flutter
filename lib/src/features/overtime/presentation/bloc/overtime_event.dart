import 'package:freezed_annotation/freezed_annotation.dart';

part 'overtime_event.freezed.dart';

@freezed
class OvertimeEvent with _$OvertimeEvent {
  const factory OvertimeEvent.fetchHistory() = _FetchHistory;
}
