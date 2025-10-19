import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/profile/domain/entities/profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  /// State awal, saat halaman baru dimuat.
  const factory ProfileState.initial() = _Initial;

  /// State saat sedang memproses login, UI harus menampilkan loading indicator.
  const factory ProfileState.loading() = _Loading;

  /// State saat login berhasil, membawa data pengguna.
  const factory ProfileState.success({required ProfileEntity profile}) =
      _Success;

  /// State saat login gagal, membawa pesan error untuk ditampilkan.
  const factory ProfileState.failure({required ApiException error}) = _Failure;
}
