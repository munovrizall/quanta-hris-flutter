import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_attendance_status_response.freezed.dart';
part 'get_attendance_status_response.g.dart';

@freezed
abstract class GetAttendanceStatusResponse with _$GetAttendanceStatusResponse {
  const factory GetAttendanceStatusResponse({
    @JsonKey(name: 'is_clocked_in') required bool isClockedIn,
    @JsonKey(name: 'is_clocked_out') required bool isClockedOut,
  }) = _GetAttendanceStatusResponse;

  factory GetAttendanceStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAttendanceStatusResponseFromJson(json);
}
