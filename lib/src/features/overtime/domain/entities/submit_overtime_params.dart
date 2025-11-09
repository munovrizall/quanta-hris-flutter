import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_overtime_params.freezed.dart';

@freezed
abstract class SubmitOvertimeParams with _$SubmitOvertimeParams {
  const factory SubmitOvertimeParams({
    required String absensiId,
    required String deskripsiPekerjaan,
    String? dokumenPendukungPath,
  }) = _SubmitOvertimeParams;
}
