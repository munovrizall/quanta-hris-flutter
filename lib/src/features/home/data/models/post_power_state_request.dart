import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_power_state_request.freezed.dart';
part 'post_power_state_request.g.dart';

@freezed
abstract class PostPowerStateRequest with _$PostPowerStateRequest {
  const factory PostPowerStateRequest({
    @JsonKey(name: 'power_state') required bool powerState,
  }) = _PostPowerStateRequest;

  factory PostPowerStateRequest.fromJson(Map<String, dynamic> json) =>
      _$PostPowerStateRequestFromJson(json);
}
