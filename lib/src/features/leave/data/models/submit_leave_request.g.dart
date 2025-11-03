// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_leave_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitLeaveRequest _$SubmitLeaveRequestFromJson(Map<String, dynamic> json) =>
    _SubmitLeaveRequest(
      jenisCuti: json['jenis_cuti'] as String,
      tanggalMulai: json['tanggal_mulai'] as String,
      tanggalSelesai: json['tanggal_selesai'] as String,
      keterangan: json['keterangan'] as String,
    );

Map<String, dynamic> _$SubmitLeaveRequestToJson(_SubmitLeaveRequest instance) =>
    <String, dynamic>{
      'jenis_cuti': instance.jenisCuti,
      'tanggal_mulai': instance.tanggalMulai,
      'tanggal_selesai': instance.tanggalSelesai,
      'keterangan': instance.keterangan,
    };
