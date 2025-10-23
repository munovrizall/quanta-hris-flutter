import 'package:freezed_annotation/freezed_annotation.dart';

part 'is_clocked_in_entity.freezed.dart';

@freezed
abstract class IsClockedInEntity with _$IsClockedInEntity {
  const factory IsClockedInEntity({
    required bool isClockedIn,
  }) = _IsClockedInEntity;
}
