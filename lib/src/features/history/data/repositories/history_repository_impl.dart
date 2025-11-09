import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/history/data/datasources/history_remote_data_source.dart';
import 'package:quanta_hris/src/features/history/data/models/get_attendance_history_response.dart';
import 'package:quanta_hris/src/features/history/domain/entities/attendance_history_entity.dart';
import 'package:quanta_hris/src/features/history/domain/repositories/history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final HistoryRemoteDataSource _remoteDataSource;

  HistoryRepositoryImpl(this._remoteDataSource);

  @override
  Future<AttendanceHistoryListEntity> getAttendanceHistory() async {
    try {
      final response = await _remoteDataSource.getAttendanceHistory();

      // Convert list of response to list of entities using extension
      final entity = response.data.toEntity();

      return entity;
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }
}
