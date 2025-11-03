import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_clock_out_request.freezed.dart';
part 'post_clock_out_request.g.dart';

@freezed
abstract class PostClockOutRequest with _$PostClockOutRequest {
  const factory PostClockOutRequest({
    required double latitude,
    required double longitude,
    @JsonKey(name: 'foto_pulang') String? fotoPulang,
  }) = _PostClockOutRequest;

  factory PostClockOutRequest.fromJson(Map<String, dynamic> json) =>
      _$PostClockOutRequestFromJson(json);
}
