import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/submit_overtime_params.dart';
import 'package:quanta_hris/src/features/overtime/presentation/bloc/overtime_bloc.dart';
import 'package:quanta_hris/src/features/overtime/presentation/bloc/overtime_event.dart';
import 'package:quanta_hris/src/features/overtime/presentation/bloc/overtime_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/app_text_field.dart';
import 'package:quanta_hris/src/shared/widgets/file_picker_widget.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class SubmitOvertimeFormScreen extends StatelessWidget {
  final OvertimeHistoryEntity history;

  const SubmitOvertimeFormScreen({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OvertimeBloc>(),
      child: _SubmitOvertimeFormView(history: history),
    );
  }
}

class _SubmitOvertimeFormView extends StatefulWidget {
  final OvertimeHistoryEntity history;

  const _SubmitOvertimeFormView({required this.history});

  @override
  State<_SubmitOvertimeFormView> createState() =>
      _SubmitOvertimeFormViewState();
}

class _SubmitOvertimeFormViewState extends State<_SubmitOvertimeFormView> {
  final _formKey = GlobalKey<FormState>();
  final _deskripsiController = TextEditingController();
  File? _dokumenPendukung;

  @override
  void dispose() {
    _deskripsiController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (!_formKey.currentState!.validate()) return;

    final absensiId = widget.history.absensiId;
    if (absensiId == null || absensiId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('ID absensi tidak tersedia.')),
      );
      return;
    }

    final params = SubmitOvertimeParams(
      absensiId: absensiId,
      deskripsiPekerjaan: _deskripsiController.text.trim(),
      dokumenPendukungPath: _dokumenPendukung?.path,
    );

    context.read<OvertimeBloc>().add(
      OvertimeEvent.submitOvertime(params: params),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengajuan Lembur')),
      body: BlocConsumer<OvertimeBloc, OvertimeState>(
        listener: (context, state) {
          if (state.submitSuccessMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.submitSuccessMessage!),
                backgroundColor: AppColors.success,
              ),
            );
            context.pop(true);
          }

          if (state.submitError != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.submitError!),
                backgroundColor: AppColors.error,
              ),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Deskripsi Pekerjaan',
                          style: AppTypography.labelLarge.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.small),
                        AppTextField(
                          controller: _deskripsiController,
                          hintText: 'Tuliskan aktivitas lembur yang dilakukan',
                          maxLines: 4,
                          validator: (value) =>
                              value == null || value.trim().isEmpty
                              ? 'Deskripsi wajib diisi'
                              : null,
                        ),
                        const SizedBox(height: AppSpacing.large),
                        Text(
                          'Dokumen Pendukung (Opsional)',
                          style: AppTypography.labelLarge.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.small),
                        FilePickerWidget(
                          hint: 'Unggah bukti lembur (pdf/jpg/png, maks 5MB)',
                          initialFile: _dokumenPendukung,
                          onFileSelected: (file) {
                            setState(() {
                              _dokumenPendukung = file;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  child: PrimaryButton(
                    text: 'Simpan',
                    isLoading: state.isSubmitLoading,
                    onPressed: state.isSubmitLoading ? null : _onSubmit,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
