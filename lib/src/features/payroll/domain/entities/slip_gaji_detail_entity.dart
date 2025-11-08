import 'package:freezed_annotation/freezed_annotation.dart';

part 'slip_gaji_detail_entity.freezed.dart';

/// Entity domain untuk detail slip gaji karyawan.
@freezed
abstract class SlipGajiDetailEntity with _$SlipGajiDetailEntity {
  const factory SlipGajiDetailEntity({
    required String detailId,
    required String karyawanId,
    required String namaLengkap,
    required String jabatan,
    required String departemen,
    required int totalHadir,
    required int totalAlfa,
    required int totalTidakTepat,
    required int totalCuti,
    required int totalIzin,
    required int totalLembur,
    required int totalLemburSessions,
    required int gajiPokok,
    required int tunjanganTotal,
    required TunjanganBreakdownEntity tunjanganBreakdown,
    required BpjsBreakdownEntity bpjsBreakdown,
    required int lemburPay,
    required int potonganTotal,
    required int totalGaji,
    required int penghasilanBruto,
    required int penyesuaian,
    String? catatanPenyesuaian,
    required Pph21DetailEntity pph21Detail,
    required PotonganDetailEntity potonganDetail,
    required String periodeLabel,
  }) = _SlipGajiDetailEntity;
}

@freezed
abstract class TunjanganBreakdownEntity with _$TunjanganBreakdownEntity {
  const factory TunjanganBreakdownEntity({
    required List<TunjanganBreakdownItemEntity> breakdown,
    required int total,
    required TunjanganComplianceEntity compliance,
  }) = _TunjanganBreakdownEntity;
}

@freezed
abstract class TunjanganBreakdownItemEntity with _$TunjanganBreakdownItemEntity {
  const factory TunjanganBreakdownItemEntity({
    required String type,
    required String label,
    required int amount,
    required String description,
  }) = _TunjanganBreakdownItemEntity;
}

@freezed
abstract class TunjanganComplianceEntity with _$TunjanganComplianceEntity {
  const factory TunjanganComplianceEntity({
    required bool isCompliant,
    required int percentage,
    required int totalGaji,
    required String message,
  }) = _TunjanganComplianceEntity;
}

@freezed
abstract class BpjsBreakdownEntity with _$BpjsBreakdownEntity {
  const factory BpjsBreakdownEntity({
    required List<BpjsBreakdownItemEntity> breakdown,
    required int totalAmount,
  }) = _BpjsBreakdownEntity;
}

@freezed
abstract class BpjsBreakdownItemEntity with _$BpjsBreakdownItemEntity {
  const factory BpjsBreakdownItemEntity({
    required String label,
    required int amount,
    required String description,
  }) = _BpjsBreakdownItemEntity;
}

@freezed
abstract class Pph21DetailEntity with _$Pph21DetailEntity {
  const factory Pph21DetailEntity({
    required int jumlah,
    required String tarifPersen,
    required String golonganPtkp,
    required String kategoriTer,
    required int penghasilanBruto,
  }) = _Pph21DetailEntity;
}

@freezed
abstract class PotonganDetailEntity with _$PotonganDetailEntity {
  const factory PotonganDetailEntity({
    required PotonganSummaryEntity alfa,
    required PotonganSummaryEntity keterlambatan,
    required int bpjs,
    required int pph21,
  }) = _PotonganDetailEntity;
}

@freezed
abstract class PotonganSummaryEntity with _$PotonganSummaryEntity {
  const factory PotonganSummaryEntity({
    required int totalPotongan,
    required int potonganPerHari,
  }) = _PotonganSummaryEntity;
}
