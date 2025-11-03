import 'dart:io';

import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/leave/data/datasources/leave_remote_data_source.dart';
import 'package:quanta_hris/src/features/leave/data/models/submit_leave_request.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_application_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_submission_entity.dart';
import 'package:quanta_hris/src/features/leave/domain/repositories/leave_repository.dart';

class LeaveRepositoryImpl implements LeaveRepository {
  final LeaveRemoteDataSource _remoteDataSource;

  LeaveRepositoryImpl(this._remoteDataSource);

  @override
  Future<LeaveSubmissionEntity> submitLeave({
    required String jenisCuti,
    required String tanggalMulai,
    required String tanggalSelesai,
    required String keterangan,
    String? dokumenPendukungPath,
  }) async {
    try {
      final request = SubmitLeaveRequest(
        jenisCuti: jenisCuti,
        tanggalMulai: tanggalMulai,
        tanggalSelesai: tanggalSelesai,
        keterangan: keterangan,
        dokumenPendukung:
            dokumenPendukungPath != null && dokumenPendukungPath.isNotEmpty
            ? File(dokumenPendukungPath)
            : null,
      );

      final response = await _remoteDataSource.submitLeave(request: request);

      final data = response.data;
      final leave = LeaveApplicationEntity(
        cutiId: data.cutiId,
        karyawanId: data.karyawanId,
        jenisCuti: data.jenisCuti,
        tanggalMulai: data.tanggalMulai,
        tanggalSelesai: data.tanggalSelesai,
        keterangan: data.keterangan,
        statusCuti: data.statusCuti,
        dokumenPendukung: data.dokumenPendukung,
        durasiHari: data.durasiHari,
        createdAt: data.createdAt,
      );

      return LeaveSubmissionEntity(leave: leave, message: response.message);
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('An unexpected error occurred in the repository.');
    }
  }
}
