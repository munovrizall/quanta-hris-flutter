import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/attendance/domain/usecases/get_company_branches_usecase.dart';
import 'package:quanta_hris/src/features/attendance/domain/usecases/post_clock_in_usecase.dart';
import 'package:quanta_hris/src/features/attendance/domain/usecases/update_profile_usecase.dart';

import 'attendance_event.dart';
import 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final GetCompanyBranchesUseCase _getCompanyBranchesUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;
  final PostClockInUseCase _postClockInUseCase;

  AttendanceBloc({
    required UpdateProfileUseCase updateProfileUseCase,
    required GetCompanyBranchesUseCase getCompanyBranchesUseCase,
    required PostClockInUseCase postClockInUseCase,
  }) : _updateProfileUseCase = updateProfileUseCase,
       _getCompanyBranchesUseCase = getCompanyBranchesUseCase,
       _postClockInUseCase = postClockInUseCase,
       super(const AttendanceState()) {
    // Register event handlers
    on<AttendanceEvent>((event, emit) async {
      await event.when(
        fetchCompanyBranches: () => _onFetchCompanyBranches(emit),
        updateProfileRegisterFace: (embedding, image) =>
            _onUpdateProfileRegisterFace(embedding, emit),
        postClockIn: (latitude, longitude, fotoMasuk) =>
            _onPostClockIn(latitude, longitude, fotoMasuk, emit),
      );
    });
  }

  Future<void> _onFetchCompanyBranches(Emitter<AttendanceState> emit) async {
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
    Emitter<AttendanceState> emit,
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

  Future<void> _onPostClockIn(
    double latitude,
    double longitude,
    String? fotoMasuk,
    Emitter<AttendanceState> emit,
  ) async {
    AppLogger.d(
      '🎯 Bloc: Starting clock-in with lat=$latitude, lng=$longitude',
    );

    emit(
      state.copyWith(
        isClockInLoading: true,
        clockInError: null,
        clockInSuccessMessage: null,
      ),
    );

    try {
      final result = await _postClockInUseCase(
        latitude: latitude,
        longitude: longitude,
        fotoMasuk: fotoMasuk,
      );

      AppLogger.d(
        '✅ Bloc: Clock-in successful for ID ${result.clockIn.absensiId}',
      );

      emit(
        state.copyWith(
          isClockInLoading: false,
          clockInData: result.clockIn,
          clockInSuccessMessage: result.message,
        ),
      );
    } on ApiException catch (error) {
      AppLogger.d('❌ Bloc ApiException (clock-in): ${error.message}');
      emit(
        state.copyWith(isClockInLoading: false, clockInError: error.message),
      );
    } catch (error, stackTrace) {
      AppLogger.d('❌ Bloc unexpected error (clock-in): $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      emit(
        state.copyWith(
          isClockInLoading: false,
          clockInError: 'Terjadi kesalahan yang tidak terduga',
        ),
      );
    }
  }
}
