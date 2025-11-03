import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_event.freezed.dart';

@freezed
abstract class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.fetchCompanyBranches() =
      _FetchCompanyBranches;
  const factory AttendanceEvent.updateProfileRegisterFace(
    String embedding,
    XFile? image,
  ) = _UpdateProfileRegisterFace;
}
