import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/payroll/data/datasources/payroll_remote_data_source.dart';
import 'package:quanta_hris/src/features/payroll/data/models/get_slip_gaji_detail_response.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_detail_entity.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_entity.dart';
import 'package:quanta_hris/src/features/payroll/domain/repositories/payroll_repository.dart';

class PayrollRepositoryImpl implements PayrollRepository {
  final PayrollRemoteDataSource _remoteDataSource;

  PayrollRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<SlipGajiEntity>> getSlipGaji() async {
    try {
      final response = await _remoteDataSource.getSlipGaji();
      final dataList = response.data;

      // Map list of response models to list of entities
      return dataList
          .map(
            (data) => SlipGajiEntity(
              penggajianId: data.penggajianId,
              periodeBulan: data.periodeBulan,
              periodeTahun: data.periodeTahun,
              periodeLabel: data.periodeLabel,
              gajiBersih: data.gajiBersih,
              sudahDitransfer: data.sudahDitransfer,
            ),
          )
          .toList();
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('Terjadi kesalahan saat memuat slip gaji.');
    }
  }

  @override
  Future<SlipGajiDetailEntity> getSlipGajiDetail({
    required int tahun,
    required int bulan,
  }) async {
    try {
      final response = await _remoteDataSource.getSlipGajiDetail(tahun, bulan);
      return _mapDetailResponseToEntity(response.data);
    } on ApiException {
      rethrow;
    } catch (_) {
      throw ApiException('Terjadi kesalahan saat memuat detail slip gaji.');
    }
  }

  SlipGajiDetailEntity _mapDetailResponseToEntity(
    GetSlipGajiDetailResponse data,
  ) {
    return SlipGajiDetailEntity(
      detailId: data.detailId,
      karyawanId: data.karyawanId,
      namaLengkap: data.namaLengkap,
      jabatan: data.jabatan,
      departemen: data.departemen,
      totalHadir: data.totalHadir,
      totalAlfa: data.totalAlfa,
      totalTidakTepat: data.totalTidakTepat,
      totalCuti: data.totalCuti,
      totalIzin: data.totalIzin,
      totalLembur: data.totalLembur,
      totalLemburSessions: data.totalLemburSessions,
      gajiPokok: data.gajiPokok,
      tunjanganTotal: data.tunjanganTotal,
      tunjanganBreakdown: TunjanganBreakdownEntity(
        breakdown: data.tunjanganBreakdown.breakdown
            .map(
              (item) => TunjanganBreakdownItemEntity(
                type: item.type,
                label: item.label,
                amount: item.amount,
                description: item.description,
              ),
            )
            .toList(),
        total: data.tunjanganBreakdown.total,
        compliance: TunjanganComplianceEntity(
          isCompliant: data.tunjanganBreakdown.compliance.isCompliant,
          percentage: data.tunjanganBreakdown.compliance.percentage,
          totalGaji: data.tunjanganBreakdown.compliance.totalGaji,
          message: data.tunjanganBreakdown.compliance.message,
        ),
      ),
      bpjsBreakdown: BpjsBreakdownEntity(
        breakdown: data.bpjsBreakdown.breakdown
            .map(
              (item) => BpjsBreakdownItemEntity(
                label: item.label,
                amount: item.amount,
                description: item.description,
              ),
            )
            .toList(),
        totalAmount: data.bpjsBreakdown.totalAmount,
      ),
      lemburPay: data.lemburPay,
      potonganTotal: data.potonganTotal,
      totalGaji: data.totalGaji,
      penghasilanBruto: data.penghasilanBruto,
      penyesuaian: data.penyesuaian,
      catatanPenyesuaian: data.catatanPenyesuaian,
      pph21Detail: Pph21DetailEntity(
        jumlah: data.pph21Detail.jumlah,
        tarifPersen: data.pph21Detail.tarifPersen,
        golonganPtkp: data.pph21Detail.golonganPtkp,
        kategoriTer: data.pph21Detail.kategoriTer,
        penghasilanBruto: data.pph21Detail.penghasilanBruto,
      ),
      potonganDetail: PotonganDetailEntity(
        alfa: PotonganSummaryEntity(
          totalPotongan: data.potonganDetail.alfa.totalPotongan,
          potonganPerHari: data.potonganDetail.alfa.potonganPerHari,
        ),
        keterlambatan: PotonganSummaryEntity(
          totalPotongan: data.potonganDetail.keterlambatan.totalPotongan,
          potonganPerHari: data.potonganDetail.keterlambatan.potonganPerHari,
        ),
        bpjs: data.potonganDetail.bpjs,
        pph21: data.potonganDetail.pph21,
      ),
      periodeLabel: data.periodeLabel,
    );
  }
}
