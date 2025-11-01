import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/attendance/domain/usecases/get_company_branches_usecase.dart';
import 'package:quanta_hris/src/features/attendance/domain/usecases/update_profile_usecase.dart';

import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/face_recognition_event.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/face_recognition_state.dart';

class FaceRecognitionBloc extends Bloc<FaceRecognitionEvent, FaceRecognitionState> {
  final GetCompanyBranchesUseCase _getCompanyBranchesUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;

  FaceRecognitionBloc({
    required UpdateProfileUseCase updateProfileUseCase,
    required GetCompanyBranchesUseCase getCompanyBranchesUseCase,
  })  : _updateProfileUseCase = updateProfileUseCase,
        _getCompanyBranchesUseCase = getCompanyBranchesUseCase,
        super(const FaceRecognitionState()) {
    on<FaceRecognitionEvent>((event, emit) async {
      await event.when(
        fetchCompanyBranches: () => _onFetchCompanyBranches(emit),
        updateProfileRegisterFace: (embedding, image) =>
            _onUpdateProfileRegisterFace(embedding, emit),
      );
    });
  }

  Future<void> _onFetchCompanyBranches(
    Emitter<FaceRecognitionState> emit,
  ) async {
    AppLogger.d('🎯 Bloc: Fetching company branches');

    emit(
      state.copyWith(
        isCompanyBranchesLoading: true,
        companyBranchesError: null,
      ),
    );

    try {
      final branches = await _getCompanyBranchesUseCase();

      AppLogger.d(
        '✅ Bloc: Company branches fetched (${branches.branches.length} items)',
      );

      emit(
        state.copyWith(
          companyBranches: branches,
          isCompanyBranchesLoading: false,
        ),
      );
    } on ApiException catch (error) {
      AppLogger.d('❌ Bloc ApiException: ${error.message}');
      emit(
        state.copyWith(
          isCompanyBranchesLoading: false,
          companyBranchesError: error.message,
        ),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ Bloc unexpected error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      emit(
        state.copyWith(
          isCompanyBranchesLoading: false,
          companyBranchesError: 'Terjadi kesalahan yang tidak terduga',
        ),
      );
    }
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
