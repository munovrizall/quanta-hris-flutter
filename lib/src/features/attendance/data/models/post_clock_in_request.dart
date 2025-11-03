import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_clock_in_request.freezed.dart';
part 'post_clock_in_request.g.dart';

@freezed
abstract class PostClockInRequest with _$PostClockInRequest {
  const factory PostClockInRequest({
    required double latitude,
    required double longitude,
    @JsonKey(name: 'foto_masuk') String? fotoMasuk,
  }) = _PostClockInRequest;

  factory PostClockInRequest.fromJson(Map<String, dynamic> json) =>
      _$PostClockInRequestFromJson(json);
}
