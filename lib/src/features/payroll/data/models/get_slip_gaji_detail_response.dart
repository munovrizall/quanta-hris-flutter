import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_slip_gaji_detail_response.freezed.dart';
part 'get_slip_gaji_detail_response.g.dart';

/// Response model untuk detail slip gaji karyawan.
@freezed
class GetSlipGajiDetailResponse with _$GetSlipGajiDetailResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GetSlipGajiDetailResponse({
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
    required TunjanganBreakdownResponse tunjanganBreakdown,
    required BpjsBreakdownResponse bpjsBreakdown,
    required int lemburPay,
    required int potonganTotal,
    required int totalGaji,
    required int penyesuaian,
    String? catatanPenyesuaian,
    required Pph21DetailResponse pph21Detail,
    required PotonganDetailResponse potonganDetail,
    required String periodeLabel,
  }) = _GetSlipGajiDetailResponse;

  factory GetSlipGajiDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSlipGajiDetailResponseFromJson(json);
}

@freezed
class TunjanganBreakdownResponse with _$TunjanganBreakdownResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TunjanganBreakdownResponse({
    required List<TunjanganBreakdownItemResponse> breakdown,
    required int total,
    required TunjanganComplianceResponse compliance,
  }) = _TunjanganBreakdownResponse;

  factory TunjanganBreakdownResponse.fromJson(Map<String, dynamic> json) =>
      _$TunjanganBreakdownResponseFromJson(json);
}

@freezed
class TunjanganBreakdownItemResponse with _$TunjanganBreakdownItemResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TunjanganBreakdownItemResponse({
    required String type,
    required String label,
    required int amount,
    required String description,
  }) = _TunjanganBreakdownItemResponse;

  factory TunjanganBreakdownItemResponse.fromJson(Map<String, dynamic> json) =>
      _$TunjanganBreakdownItemResponseFromJson(json);
}

@freezed
class TunjanganComplianceResponse with _$TunjanganComplianceResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TunjanganComplianceResponse({
    required bool isCompliant,
    required int percentage,
    required int totalGaji,
    required String message,
  }) = _TunjanganComplianceResponse;

  factory TunjanganComplianceResponse.fromJson(Map<String, dynamic> json) =>
      _$TunjanganComplianceResponseFromJson(json);
}

@freezed
class BpjsBreakdownResponse with _$BpjsBreakdownResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BpjsBreakdownResponse({
    required List<BpjsBreakdownItemResponse> breakdown,
    required int totalAmount,
  }) = _BpjsBreakdownResponse;

  factory BpjsBreakdownResponse.fromJson(Map<String, dynamic> json) =>
      _$BpjsBreakdownResponseFromJson(json);
}

@freezed
class BpjsBreakdownItemResponse with _$BpjsBreakdownItemResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BpjsBreakdownItemResponse({
    required String label,
    required int amount,
    required String description,
  }) = _BpjsBreakdownItemResponse;

  factory BpjsBreakdownItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BpjsBreakdownItemResponseFromJson(json);
}

@freezed
class Pph21DetailResponse with _$Pph21DetailResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Pph21DetailResponse({
    required int jumlah,
    required String tarifPersen,
    required String golonganPtkp,
    required String kategoriTer,
    required int penghasilanBruto,
  }) = _Pph21DetailResponse;

  factory Pph21DetailResponse.fromJson(Map<String, dynamic> json) =>
      _$Pph21DetailResponseFromJson(json);
}

@freezed
class PotonganDetailResponse with _$PotonganDetailResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PotonganDetailResponse({
    required PotonganSummaryResponse alfa,
    required PotonganSummaryResponse keterlambatan,
    required int bpjs,
    required int pph21,
  }) = _PotonganDetailResponse;

  factory PotonganDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PotonganDetailResponseFromJson(json);
}

@freezed
class PotonganSummaryResponse with _$PotonganSummaryResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PotonganSummaryResponse({
    required int totalPotongan,
    required int potonganPerHari,
  }) = _PotonganSummaryResponse;

  factory PotonganSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$PotonganSummaryResponseFromJson(json);
}
