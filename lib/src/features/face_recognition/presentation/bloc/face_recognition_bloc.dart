import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/usecases/update_profile_usecase.dart';

import 'face_recognition_event.dart';
import 'face_recognition_state.dart';

class FaceRecognitionBloc
    extends Bloc<FaceRecognitionEvent, FaceRecognitionState> {
  final UpdateProfileUseCase _updateProfileUseCase;

  FaceRecognitionBloc({required UpdateProfileUseCase updateProfileUseCase})
    : _updateProfileUseCase = updateProfileUseCase,
      super(const FaceRecognitionState()) {
    // Register event handlers
    on<FaceRecognitionEvent>((event, emit) async {
      await event.when(
        updateProfileRegisterFace: (embedding, image) =>
            _onUpdateProfileRegisterFace(embedding, emit),
      );
    });
  }

  Future<void> _onUpdateProfileRegisterFace(
    String embedding,
    Emitter<FaceRecognitionState> emit,
  ) async {
    AppLogger.d('🎯 Bloc: Starting face registration');
    AppLogger.d('📊 Embedding length: ${embedding.length}');

    emit(state.copyWith(isRegisterFaceLoading: true, registerFaceError: null));

    try {
      final updatedUser = await _updateProfileUseCase(faceEmbedding: embedding);

      AppLogger.d('✅ Bloc: Face registration successful');
      AppLogger.d('👤 Updated user: ${updatedUser.namaLengkap}');

      emit(
        state.copyWith(
          registeredFaceData: updatedUser,
          isRegisterFaceLoading: false,
        ),
      );
    } on ApiException catch (error) {
      AppLogger.d('❌ Bloc ApiException: ${error.message}');
      emit(
        state.copyWith(
          isRegisterFaceLoading: false,
          registerFaceError: error.message,
        ),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ Bloc unexpected error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      emit(
        state.copyWith(
          isRegisterFaceLoading: false,
          registerFaceError: 'Terjadi kesalahan yang tidak terduga',
        ),
      );
    }
  }
}
