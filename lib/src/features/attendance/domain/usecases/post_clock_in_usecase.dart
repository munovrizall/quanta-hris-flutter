import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/clock_in_entity.dart';
import 'package:quanta_hris/src/features/attendance/domain/repositories/attendance_repository.dart';

class PostClockInUseCase {
  final AttendanceRepository _repository;

  PostClockInUseCase(this._repository);

  Future<ClockInSubmissionEntity> call({
    required double latitude,
    required double longitude,
    String? fotoMasuk,
  }) async {
    AppLogger.d(
      '🎯 PostClockInUseCase: Clock-in lat=$latitude, lng=$longitude',
    );

    final result = await _repository.postClockIn(
      latitude: latitude,
      longitude: longitude,
      fotoMasuk: fotoMasuk,
    );

    AppLogger.d(
      '✅ PostClockInUseCase: Clock-in saved with ID ${result.clockIn.absensiId}',
    );

    return result;
  }
}
