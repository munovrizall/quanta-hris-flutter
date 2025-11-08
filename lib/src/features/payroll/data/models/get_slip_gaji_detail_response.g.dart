// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_slip_gaji_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSlipGajiDetailResponse _$GetSlipGajiDetailResponseFromJson(
  Map<String, dynamic> json,
) => _GetSlipGajiDetailResponse(
  detailId: json['detail_id'] as String,
  karyawanId: json['karyawan_id'] as String,
  namaLengkap: json['nama_lengkap'] as String,
  jabatan: json['jabatan'] as String,
  departemen: json['departemen'] as String,
  totalHadir: (json['total_hadir'] as num).toInt(),
  totalAlfa: (json['total_alfa'] as num).toInt(),
  totalTidakTepat: (json['total_tidak_tepat'] as num).toInt(),
  totalCuti: (json['total_cuti'] as num).toInt(),
  totalIzin: (json['total_izin'] as num).toInt(),
  totalLembur: (json['total_lembur'] as num).toInt(),
  totalLemburSessions: (json['total_lembur_sessions'] as num).toInt(),
  gajiPokok: (json['gaji_pokok'] as num).toInt(),
  tunjanganTotal: (json['tunjangan_total'] as num).toInt(),
  tunjanganBreakdown: TunjanganBreakdownResponse.fromJson(
    json['tunjangan_breakdown'] as Map<String, dynamic>,
  ),
  bpjsBreakdown: BpjsBreakdownResponse.fromJson(
    json['bpjs_breakdown'] as Map<String, dynamic>,
  ),
  lemburPay: (json['lembur_pay'] as num).toInt(),
  potonganTotal: (json['potongan_total'] as num).toInt(),
  totalGaji: (json['total_gaji'] as num).toInt(),
  penyesuaian: (json['penyesuaian'] as num).toInt(),
  catatanPenyesuaian: json['catatan_penyesuaian'] as String?,
  pph21Detail: Pph21DetailResponse.fromJson(
    json['pph21_detail'] as Map<String, dynamic>,
  ),
  potonganDetail: PotonganDetailResponse.fromJson(
    json['potongan_detail'] as Map<String, dynamic>,
  ),
  periodeLabel: json['periode_label'] as String,
);

Map<String, dynamic> _$GetSlipGajiDetailResponseToJson(
  _GetSlipGajiDetailResponse instance,
) => <String, dynamic>{
  'detail_id': instance.detailId,
  'karyawan_id': instance.karyawanId,
  'nama_lengkap': instance.namaLengkap,
  'jabatan': instance.jabatan,
  'departemen': instance.departemen,
  'total_hadir': instance.totalHadir,
  'total_alfa': instance.totalAlfa,
  'total_tidak_tepat': instance.totalTidakTepat,
  'total_cuti': instance.totalCuti,
  'total_izin': instance.totalIzin,
  'total_lembur': instance.totalLembur,
  'total_lembur_sessions': instance.totalLemburSessions,
  'gaji_pokok': instance.gajiPokok,
  'tunjangan_total': instance.tunjanganTotal,
  'tunjangan_breakdown': instance.tunjanganBreakdown.toJson(),
  'bpjs_breakdown': instance.bpjsBreakdown.toJson(),
  'lembur_pay': instance.lemburPay,
  'potongan_total': instance.potonganTotal,
  'total_gaji': instance.totalGaji,
  'penyesuaian': instance.penyesuaian,
  'catatan_penyesuaian': instance.catatanPenyesuaian,
  'pph21_detail': instance.pph21Detail.toJson(),
  'potongan_detail': instance.potonganDetail.toJson(),
  'periode_label': instance.periodeLabel,
};

_TunjanganBreakdownResponse _$TunjanganBreakdownResponseFromJson(
  Map<String, dynamic> json,
) => _TunjanganBreakdownResponse(
  breakdown: (json['breakdown'] as List<dynamic>)
      .map(
        (e) =>
            TunjanganBreakdownItemResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  total: (json['total'] as num).toInt(),
  compliance: TunjanganComplianceResponse.fromJson(
    json['compliance'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TunjanganBreakdownResponseToJson(
  _TunjanganBreakdownResponse instance,
) => <String, dynamic>{
  'breakdown': instance.breakdown.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'compliance': instance.compliance.toJson(),
};

_TunjanganBreakdownItemResponse _$TunjanganBreakdownItemResponseFromJson(
  Map<String, dynamic> json,
) => _TunjanganBreakdownItemResponse(
  type: json['type'] as String,
  label: json['label'] as String,
  amount: (json['amount'] as num).toInt(),
  description: json['description'] as String,
);

Map<String, dynamic> _$TunjanganBreakdownItemResponseToJson(
  _TunjanganBreakdownItemResponse instance,
) => <String, dynamic>{
  'type': instance.type,
  'label': instance.label,
  'amount': instance.amount,
  'description': instance.description,
};

_TunjanganComplianceResponse _$TunjanganComplianceResponseFromJson(
  Map<String, dynamic> json,
) => _TunjanganComplianceResponse(
  isCompliant: json['is_compliant'] as bool,
  percentage: (json['percentage'] as num).toInt(),
  totalGaji: (json['total_gaji'] as num).toInt(),
  message: json['message'] as String,
);

Map<String, dynamic> _$TunjanganComplianceResponseToJson(
  _TunjanganComplianceResponse instance,
) => <String, dynamic>{
  'is_compliant': instance.isCompliant,
  'percentage': instance.percentage,
  'total_gaji': instance.totalGaji,
  'message': instance.message,
};

_BpjsBreakdownResponse _$BpjsBreakdownResponseFromJson(
  Map<String, dynamic> json,
) => _BpjsBreakdownResponse(
  breakdown: (json['breakdown'] as List<dynamic>)
      .map((e) => BpjsBreakdownItemResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalAmount: (json['total_amount'] as num).toInt(),
);

Map<String, dynamic> _$BpjsBreakdownResponseToJson(
  _BpjsBreakdownResponse instance,
) => <String, dynamic>{
  'breakdown': instance.breakdown.map((e) => e.toJson()).toList(),
  'total_amount': instance.totalAmount,
};

_BpjsBreakdownItemResponse _$BpjsBreakdownItemResponseFromJson(
  Map<String, dynamic> json,
) => _BpjsBreakdownItemResponse(
  label: json['label'] as String,
  amount: (json['amount'] as num).toInt(),
  description: json['description'] as String,
);

Map<String, dynamic> _$BpjsBreakdownItemResponseToJson(
  _BpjsBreakdownItemResponse instance,
) => <String, dynamic>{
  'label': instance.label,
  'amount': instance.amount,
  'description': instance.description,
};

_Pph21DetailResponse _$Pph21DetailResponseFromJson(Map<String, dynamic> json) =>
    _Pph21DetailResponse(
      jumlah: (json['jumlah'] as num).toInt(),
      tarifPersen: json['tarif_persen'] as String,
      golonganPtkp: json['golongan_ptkp'] as String,
      kategoriTer: json['kategori_ter'] as String,
      penghasilanBruto: (json['penghasilan_bruto'] as num).toInt(),
    );

Map<String, dynamic> _$Pph21DetailResponseToJson(
  _Pph21DetailResponse instance,
) => <String, dynamic>{
  'jumlah': instance.jumlah,
  'tarif_persen': instance.tarifPersen,
  'golongan_ptkp': instance.golonganPtkp,
  'kategori_ter': instance.kategoriTer,
  'penghasilan_bruto': instance.penghasilanBruto,
};

_PotonganDetailResponse _$PotonganDetailResponseFromJson(
  Map<String, dynamic> json,
) => _PotonganDetailResponse(
  alfa: PotonganSummaryResponse.fromJson(json['alfa'] as Map<String, dynamic>),
  keterlambatan: PotonganSummaryResponse.fromJson(
    json['keterlambatan'] as Map<String, dynamic>,
  ),
  bpjs: (json['bpjs'] as num).toInt(),
  pph21: (json['pph21'] as num).toInt(),
);

Map<String, dynamic> _$PotonganDetailResponseToJson(
  _PotonganDetailResponse instance,
) => <String, dynamic>{
  'alfa': instance.alfa.toJson(),
  'keterlambatan': instance.keterlambatan.toJson(),
  'bpjs': instance.bpjs,
  'pph21': instance.pph21,
};

_PotonganSummaryResponse _$PotonganSummaryResponseFromJson(
  Map<String, dynamic> json,
) => _PotonganSummaryResponse(
  totalPotongan: (json['total_potongan'] as num).toInt(),
  potonganPerHari: (json['potongan_per_hari'] as num).toInt(),
);

Map<String, dynamic> _$PotonganSummaryResponseToJson(
  _PotonganSummaryResponse instance,
) => <String, dynamic>{
  'total_potongan': instance.totalPotongan,
  'potongan_per_hari': instance.potonganPerHari,
};
