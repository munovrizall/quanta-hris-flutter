import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data_model.freezed.dart';
part 'profile_data_model.g.dart';

@freezed
abstract class ProfileDataModel with _$ProfileDataModel {
  const factory ProfileDataModel({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _ProfileDataModel;

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataModelFromJson(json);
}
