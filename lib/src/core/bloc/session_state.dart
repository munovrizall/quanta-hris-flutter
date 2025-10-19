import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/user_entity.dart';
part 'session_state.freezed.dart';

@freezed
abstract class SessionState with _$SessionState {
  const factory SessionState.initial() = _Initial;
  const factory SessionState.authenticated({required UserEntity user}) =
      _Authenticated;
  const factory SessionState.unauthenticated({String? message}) =
      _Unauthenticated;
}
