import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_slip_gaji_response.freezed.dart';
part 'get_slip_gaji_response.g.dart';

/// Response model untuk daftar slip gaji
@freezed
abstract class GetSlipGajiResponse with _$GetSlipGajiResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetSlipGajiResponse({
    required String penggajianId,
    required int periodeBulan,
    required int periodeTahun,
    required String periodeLabel,
    required int gajiBersih,
    required bool sudahDitransfer,
  }) = _GetSlipGajiResponse;

  factory GetSlipGajiResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSlipGajiResponseFromJson(json);
}
