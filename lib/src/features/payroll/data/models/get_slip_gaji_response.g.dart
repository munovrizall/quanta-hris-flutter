// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_slip_gaji_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSlipGajiResponse _$GetSlipGajiResponseFromJson(Map<String, dynamic> json) =>
    _GetSlipGajiResponse(
      penggajianId: json['penggajian_id'] as String,
      periodeBulan: (json['periode_bulan'] as num).toInt(),
      periodeTahun: (json['periode_tahun'] as num).toInt(),
      periodeLabel: json['periode_label'] as String,
      gajiBersih: (json['gaji_bersih'] as num).toInt(),
      sudahDitransfer: json['sudah_ditransfer'] as bool,
    );

Map<String, dynamic> _$GetSlipGajiResponseToJson(
  _GetSlipGajiResponse instance,
) => <String, dynamic>{
  'penggajian_id': instance.penggajianId,
  'periode_bulan': instance.periodeBulan,
  'periode_tahun': instance.periodeTahun,
  'periode_label': instance.periodeLabel,
  'gaji_bersih': instance.gajiBersih,
  'sudah_ditransfer': instance.sudahDitransfer,
};
