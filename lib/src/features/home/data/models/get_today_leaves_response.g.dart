// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_today_leaves_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetTodayLeavesResponse _$GetTodayLeavesResponseFromJson(
  Map<String, dynamic> json,
) => _GetTodayLeavesResponse(
  total: (json['total'] as num).toInt(),
  leavesData: (json['data'] as List<dynamic>)
      .map((e) => LeavePermitModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetTodayLeavesResponseToJson(
  _GetTodayLeavesResponse instance,
) => <String, dynamic>{'total': instance.total, 'data': instance.leavesData};

_LeavePermitModel _$LeavePermitModelFromJson(Map<String, dynamic> json) =>
    _LeavePermitModel(
      nama: json['nama'] as String,
      tipe: json['tipe'] as String,
      alasan: json['alasan'] as String,
      jenis: json['jenis'] as String,
      tanggalMulai: json['tanggal_mulai'] as String,
      tanggalSelesai: json['tanggal_selesai'] as String,
    );

Map<String, dynamic> _$LeavePermitModelToJson(_LeavePermitModel instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'tipe': instance.tipe,
      'alasan': instance.alasan,
      'jenis': instance.jenis,
      'tanggal_mulai': instance.tanggalMulai,
      'tanggal_selesai': instance.tanggalSelesai,
    };
