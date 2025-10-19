import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';

/// UseCase yang bertanggung jawab untuk satu tugas: melakukan login.
class PostPowerStateUsecase {
  final HomeRepository _repository;

  PostPowerStateUsecase(this._repository);

  /// Method 'call' memungkinkan class ini dipanggil seperti fungsi.
  Future<String> call({required int acId, required bool powerState}) {
    return _repository.postPowerStateByAc(acId: acId, powerState: powerState);
  }
}
