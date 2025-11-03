import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/clock_out_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/repositories/attendance_repository.dart';

class PostClockOutUseCase {
  final AttendanceRepository _repository;

  PostClockOutUseCase(this._repository);

  Future<ClockOutSubmissionEntity> call({
    required double latitude,
    required double longitude,
    String? fotoPulang,
  }) async {
    AppLogger.d(
      '🎯 PostClockOutUseCase: Clock-out lat=$latitude, lng=$longitude',
    );

    final result = await _repository.postClockOut(
      latitude: latitude,
      longitude: longitude,
      fotoPulang: fotoPulang,
    );

    AppLogger.d(
      '✅ PostClockOutUseCase: Clock-out saved with ID ${result.clockOut.absensiId}',
    );

    return result;
  }
}
