import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/history/domain/entities/attendance_history_entity.dart';

part 'get_attendance_history_response.freezed.dart';
part 'get_attendance_history_response.g.dart';

/// Response model untuk item attendance history
@freezed
abstract class AttendanceHistoryItemResponse
    with _$AttendanceHistoryItemResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AttendanceHistoryItemResponse({
    required String tanggal,
    String? jamMasuk,
    String? statusMasuk,
    String? jamPulang,
    String? statusPulang,
    required String statusAbsensi,
  }) = _AttendanceHistoryItemResponse;

  factory AttendanceHistoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceHistoryItemResponseFromJson(json);
}

/// Extension untuk konversi dari response model ke entity
extension AttendanceHistoryItemResponseX on AttendanceHistoryItemResponse {
  AttendanceHistoryEntity toEntity() {
    return AttendanceHistoryEntity(
      tanggal: tanggal,
      jamMasuk: jamMasuk,
      statusMasuk: statusMasuk,
      jamPulang: jamPulang,
      statusPulang: statusPulang,
      statusAbsensi: statusAbsensi,
    );
  }
}

/// Extension untuk konversi list response ke list entity
extension AttendanceHistoryListResponseX
    on List<AttendanceHistoryItemResponse> {
  List<AttendanceHistoryEntity> toEntityList() {
    return map((item) => item.toEntity()).toList();
  }

  AttendanceHistoryListEntity toEntity() {
    return AttendanceHistoryListEntity(attendanceHistory: toEntityList());
  }
}
