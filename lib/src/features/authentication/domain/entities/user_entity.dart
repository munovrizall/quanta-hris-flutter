import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  // Tambahkan @JsonSerializable()
  @JsonSerializable()
  const factory UserEntity({
    required int id,
    required String firstName,
    String? lastName,
    required String email,
    required String roleName,
    required int clientId,
  }) = _UserEntity;
  
  const UserEntity._();
  String get fullName => '$firstName ${lastName ?? ''}'.trim();

  // Tambahkan factory fromJson
  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}