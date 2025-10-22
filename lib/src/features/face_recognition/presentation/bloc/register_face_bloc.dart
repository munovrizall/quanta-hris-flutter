import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/usecases/update_profile_usecase.dart';

import 'register_face_event.dart';
import 'register_face_state.dart';

class RegisterFaceBloc extends Bloc<RegisterEvent, RegisterFaceState> {
  final UpdateProfileUseCase _updateProfileUseCase;

  RegisterFaceBloc({required UpdateProfileUseCase updateProfileUseCase})
    : _updateProfileUseCase = updateProfileUseCase,
      super(const RegisterFaceState()) {
    // Register event handlers
    on<RegisterEvent>((event, emit) async {
      await event.when(
        updateProfileRegisterFace: (embedding, image) =>
            _onUpdateProfileRegisterFace(embedding, emit),
      );
    });
  }

  Future<void> _onUpdateProfileRegisterFace(
    String embedding,
    Emitter<RegisterFaceState> emit,
  ) async {
    emit(state.copyWith(isRegisterFaceLoading: true, registerFaceError: null));

    try {
      final updatedUser = await _updateProfileUseCase(faceEmbedding: embedding);
      emit(
        state.copyWith(
          registeredFaceData: updatedUser,
          isRegisterFaceLoading: false,
        ),
      );
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isRegisterFaceLoading: false,
          registerFaceError: error.message,
        ),
      );
    }
  }
}
