import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart'; // <-- Tambahkan ini

@freezed
abstract class  AuthEntity with _$AuthEntity {
  // Tambahkan @JsonSerializable() agar toJson dibuat
  @JsonSerializable()
  const factory AuthEntity({
    required String accessToken,
    required String refreshToken,
    int? expiresAt,
  }) = _AuthEntity;

  // Tambahkan factory fromJson
  factory AuthEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthEntityFromJson(json);
}