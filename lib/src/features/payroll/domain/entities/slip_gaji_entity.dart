import 'package:freezed_annotation/freezed_annotation.dart';

part 'slip_gaji_entity.freezed.dart';

/// Entity untuk slip gaji karyawan
@freezed
abstract class SlipGajiEntity with _$SlipGajiEntity {
  const factory SlipGajiEntity({
    required String penggajianId,
    required int periodeBulan,
    required int periodeTahun,
    required String periodeLabel,
    required int gajiBersih,
    required bool sudahDitransfer,
  }) = _SlipGajiEntity;
}
