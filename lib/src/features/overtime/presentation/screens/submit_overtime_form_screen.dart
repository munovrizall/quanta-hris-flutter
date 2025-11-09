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
      appBar: AppBar(title: const Text('Ajukan Lembur')),
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
          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                left: AppSpacing.large,
                right: AppSpacing.large,
                top: AppSpacing.large,
                bottom:
                    AppSpacing.large + MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _OvertimeInfoCard(history: widget.history),
                    const SizedBox(height: AppSpacing.xl),
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
                    const SizedBox(height: AppSpacing.xl),
                    PrimaryButton(
                      text: 'Kirim Pengajuan',
                      isLoading: state.isSubmitLoading,
                      onPressed: state.isSubmitLoading ? null : _onSubmit,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _OvertimeInfoCard extends StatelessWidget {
  final OvertimeHistoryEntity history;

  const _OvertimeInfoCard({required this.history});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.medium),
      decoration: BoxDecoration(
        color: AppColors.primary10,
        borderRadius: BorderRadius.circular(AppRadius.medium),
        border: Border.all(color: AppColors.primary200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_month, color: AppColors.primary),
              const SizedBox(width: AppSpacing.small),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(history.tanggal, style: AppTypography.heading3),
                    Text(
                      'Status Absensi: ${history.statusAbsensi}',
                      style: AppTypography.labelSmall.copyWith(
                        color: AppColors.neutral600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.medium),
          _InfoRow(label: 'Jam masuk', value: history.jamMasuk ?? '-'),
          _InfoRow(label: 'Jam pulang', value: history.jamPulang ?? '-'),
          _InfoRow(
            label: 'Durasi lembur terhitung',
            value: history.durasiLemburTerhitung ?? '-',
          ),
          _InfoRow(
            label: 'Jam pulang perusahaan',
            value: history.jamPulangPerusahaan,
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.small),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: AppTypography.labelSmall.copyWith(
                color: AppColors.neutral600,
              ),
            ),
          ),
          Text(value, style: AppTypography.bodyMedium),
        ],
      ),
    );
  }
}
