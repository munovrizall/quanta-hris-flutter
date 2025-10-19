import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart'; // <-- Tambahkan ini

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  // Tambahkan @JsonSerializable() agar toJson dibuat
  @JsonSerializable()
  const factory ProfileEntity({
    required int id,
    required String firstName,
    String? lastName,
    required String email,
    String? phoneNumber,
  }) = _ProfileEntity;

  // Tambahkan factory fromJson
  factory ProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntityFromJson(json);
}
