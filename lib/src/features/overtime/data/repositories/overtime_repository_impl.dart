import 'dart:io';

import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/overtime/data/datasources/overtime_remote_data_source.dart';
import 'package:quanta_hris/src/features/overtime/data/models/submit_overtime_request.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_params.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_result_entity.dart';
import 'package:quanta_hris/src/features/overtime/domain/repositories/overtime_repository.dart';

class OvertimeRepositoryImpl implements OvertimeRepository {
  final OvertimeRemoteDataSource _remoteDataSource;

  OvertimeRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<OvertimeHistoryEntity>> getOvertimeHistory() async {
    try {
      final response = await _remoteDataSource.getOvertimeHistory();
      return response.data
          .map(
            (item) => OvertimeHistoryEntity(
              tanggal: item.tanggal,
              absensiId: item.absensiId,
              jamMasuk: item.jamMasuk,
              statusMasuk: item.statusMasuk,
              jamPulang: item.jamPulang,
              statusPulang: item.statusPulang,
              statusAbsensi: item.statusAbsensi,
              eligibleLembur: item.eligibleLembur,
              durasiLemburTerhitung: item.durasiLemburTerhitung,
              jamPulangPerusahaan: item.jamPulangPerusahaan,
              lemburPengajuan: item.lemburPengajuan == null
                  ? null
                  : OvertimeSubmissionEntity(
                      lemburId: item.lemburPengajuan!.lemburId,
                      statusLembur: item.lemburPengajuan!.statusLembur,
                      durasiLembur: item.lemburPengajuan!.durasiLembur,
                      upahLembur: item.lemburPengajuan!.upahLembur,
                      processedAt: item.lemburPengajuan!.processedAt,
                    ),
            ),
          )
          .toList();
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('Terjadi kesalahan saat memuat riwayat lembur.');
    }
  }

  @override
  Future<SubmitOvertimeResultEntity> submitOvertime({
    required SubmitOvertimeParams params,
  }) async {
    try {
      final request = SubmitOvertimeRequest(
        absensiId: params.absensiId,
        deskripsiPekerjaan: params.deskripsiPekerjaan,
        dokumenPendukung: params.dokumenPendukungPath != null
            ? File(params.dokumenPendukungPath!)
            : null,
      );

      final response = await _remoteDataSource.submitOvertime(request: request);
      final data = response.data;

      return SubmitOvertimeResultEntity(
        lemburId: data.lemburId,
        karyawanId: data.karyawanId,
        absensiId: data.absensiId,
        tanggalLembur: data.tanggalLembur,
        durasiLembur: data.durasiLembur,
        deskripsiPekerjaan: data.deskripsiPekerjaan,
        statusLembur: data.statusLembur,
        dokumenPendukung: data.dokumenPendukung,
        createdAt: data.createdAt,
        message: response.message,
      );
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('Terjadi kesalahan saat mengajukan lembur.');
    }
  }
}
