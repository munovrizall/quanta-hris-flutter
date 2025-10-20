import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_today_leaves_response.freezed.dart';
part 'get_today_leaves_response.g.dart';

@freezed
abstract class GetTodayLeavesResponse with _$GetTodayLeavesResponse {
  const factory GetTodayLeavesResponse({
    required int total,
    @JsonKey(name: 'data') required List<LeavePermitModel> leavesData,
  }) = _GetTodayLeavesResponse;

  factory GetTodayLeavesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTodayLeavesResponseFromJson(json);
}

@freezed
abstract class LeavePermitModel with _$LeavePermitModel {
  const factory LeavePermitModel({
    required String nama,
    required String tipe,
    required String alasan,
    required String jenis,
    @JsonKey(name: 'tanggal_mulai') required String tanggalMulai,
    @JsonKey(name: 'tanggal_selesai') required String tanggalSelesai,
  }) = _LeavePermitModel;

  factory LeavePermitModel.fromJson(Map<String, dynamic> json) =>
      _$LeavePermitModelFromJson(json);
}