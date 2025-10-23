import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_is_clocked_in_response.freezed.dart';
part 'get_is_clocked_in_response.g.dart';

@freezed
abstract class GetIsClockedInResponse with _$GetIsClockedInResponse {
  const factory GetIsClockedInResponse({
    @JsonKey(name: 'is_clocked_in') required bool isClockedIn,
  }) = _GetIsClockedInResponse;

  factory GetIsClockedInResponse.fromJson(Map<String, dynamic> json) =>
      _$GetIsClockedInResponseFromJson(json);
}

