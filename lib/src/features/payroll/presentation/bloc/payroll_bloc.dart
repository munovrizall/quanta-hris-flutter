import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_filex/open_filex.dart';
import 'package:quanta_hris/src/core/error/app_exception.dart';
import 'package:quanta_hris/src/features/payroll/domain/usecases/download_slip_gaji_usecase.dart';
import 'package:quanta_hris/src/features/payroll/domain/usecases/get_slip_gaji_detail_usecase.dart';
import 'package:quanta_hris/src/features/payroll/domain/usecases/get_slip_gaji_usecase.dart';

import 'payroll_event.dart';
import 'payroll_state.dart';

class PayrollBloc extends Bloc<PayrollEvent, PayrollState> {
  final GetSlipGajiUseCase _getSlipGajiUseCase;
  final GetSlipGajiDetailUseCase _getSlipGajiDetailUseCase;
  final DownloadSlipGajiUseCase _downloadSlipGajiUseCase;

  PayrollBloc({
    required GetSlipGajiUseCase getSlipGajiUseCase,
    required GetSlipGajiDetailUseCase getSlipGajiDetailUseCase,
    required DownloadSlipGajiUseCase downloadSlipGajiUseCase,
  }) : _getSlipGajiUseCase = getSlipGajiUseCase,
       _getSlipGajiDetailUseCase = getSlipGajiDetailUseCase,
       _downloadSlipGajiUseCase = downloadSlipGajiUseCase,
       super(const PayrollState()) {
    on<PayrollEvent>((event, emit) async {
      await event.when(
        fetchSlipGaji: () => _onFetchSlipGaji(emit),
        fetchSlipGajiDetail: (tahun, bulan) =>
            _onFetchSlipGajiDetail(emit, tahun, bulan),
        downloadSlipGaji: (tahun, bulan) =>
            _onDownloadSlipGaji(emit, tahun, bulan),
      );
    });
  }

  Future<void> _onFetchSlipGaji(Emitter<PayrollState> emit) async {
    emit(state.copyWith(isLoadingSlipGaji: true, slipGajiError: null));

    try {
      final slipGaji = await _getSlipGajiUseCase();
      emit(state.copyWith(isLoadingSlipGaji: false, slipGaji: slipGaji));
    } on ApiException catch (error) {
      emit(
        state.copyWith(isLoadingSlipGaji: false, slipGajiError: error.message),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isLoadingSlipGaji: false,
          slipGajiError: 'Terjadi kesalahan saat memuat slip gaji.',
        ),
      );
    }
  }

  Future<void> _onFetchSlipGajiDetail(
    Emitter<PayrollState> emit,
    int tahun,
    int bulan,
  ) async {
    emit(
      state.copyWith(isLoadingSlipGajiDetail: true, slipGajiDetailError: null),
    );

    try {
      final slipGajiDetail = await _getSlipGajiDetailUseCase(
        tahun: tahun,
        bulan: bulan,
      );
      emit(
        state.copyWith(
          isLoadingSlipGajiDetail: false,
          slipGajiDetail: slipGajiDetail,
        ),
      );
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isLoadingSlipGajiDetail: false,
          slipGajiDetailError: error.message,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isLoadingSlipGajiDetail: false,
          slipGajiDetailError:
              'Terjadi kesalahan saat memuat detail slip gaji.',
        ),
      );
    }
  }

  Future<void> _onDownloadSlipGaji(
    Emitter<PayrollState> emit,
    int tahun,
    int bulan,
  ) async {
    emit(
      state.copyWith(
        isDownloadingSlipGaji: true,
        downloadSlipGajiError: null,
        downloadSlipGajiPath: null,
      ),
    );

    try {
      final path = await _downloadSlipGajiUseCase(tahun: tahun, bulan: bulan);
      final result = await OpenFilex.open(path);

      if (result.type == ResultType.done) {
        emit(
          state.copyWith(
            isDownloadingSlipGaji: false,
            downloadSlipGajiPath: path,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isDownloadingSlipGaji: false,
            downloadSlipGajiPath: path,
            downloadSlipGajiError: result.message ?? 'Gagal membuka file PDF.',
          ),
        );
      }
    } on ApiException catch (error) {
      emit(
        state.copyWith(
          isDownloadingSlipGaji: false,
          downloadSlipGajiError: error.message,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          isDownloadingSlipGaji: false,
          downloadSlipGajiError: 'Gagal mengunduh slip gaji.',
        ),
      );
    }
  }
}
