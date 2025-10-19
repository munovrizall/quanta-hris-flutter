import 'package:quanta_hris/src/features/authentication/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
abstract class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required UserModel user,
    required String token,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'role_name') required String roleName,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'expires_at') required int expiresAt,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
