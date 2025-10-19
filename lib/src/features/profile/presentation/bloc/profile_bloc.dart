import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/profile/domain/usecases/profile_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase _profileUseCase;

  ProfileBloc({required ProfileUseCase profileUseCase})
    : _profileUseCase = profileUseCase,
      super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(profileFetched: () => _onProfileFetched(emit));
    });
  }

  Future<void> _onProfileFetched(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    try {
      final profile = await _profileUseCase();
      emit(ProfileState.success(profile: profile));
    } on ApiException catch (e) {
      emit(ProfileState.failure(error: e));
    }
  }
}
