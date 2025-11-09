import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/submit_permission_params.dart';
import 'package:quanta_hris/src/features/permission/presentation/bloc/permission_bloc.dart';
import 'package:quanta_hris/src/features/permission/presentation/bloc/permission_event.dart';
import 'package:quanta_hris/src/features/permission/presentation/bloc/permission_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/app_text_field.dart';
import 'package:quanta_hris/src/shared/widgets/file_picker_widget.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class SubmitPermissionFormScreen extends StatelessWidget {
  const SubmitPermissionFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PermissionBloc>(
      create: (_) => getIt<PermissionBloc>(),
      child: const _SubmitPermissionFormView(),
    );
  }
}

class _SubmitPermissionFormView extends StatefulWidget {
  const _SubmitPermissionFormView();

  @override
  State<_SubmitPermissionFormView> createState() =>
      _SubmitPermissionFormViewState();
}

class _SubmitPermissionFormViewState extends State<_SubmitPermissionFormView> {
  final _formKey = GlobalKey<FormState>();
  final _jenisIzinController = TextEditingController();
  final _tanggalMulaiController = TextEditingController();
  final _tanggalSelesaiController = TextEditingController();
  final _keteranganController = TextEditingController();

  DateTime? _tanggalMulai;
  DateTime? _tanggalSelesai;
  File? _dokumenPendukung;
  String? _selectedJenisIzin;

  final List<String> _jenisIzinOptions = [
    'Izin Sakit',
    'Izin Pribadi',
    'Izin Keluarga',
    'Izin Kepentingan Mendesak',
  ];

  @override
  void dispose() {
    _jenisIzinController.dispose();
    _tanggalMulaiController.dispose();
    _tanggalSelesaiController.dispose();
    _keteranganController.dispose();
    super.dispose();
  }

  Future<void> _pickDate(BuildContext context, {required bool isStart}) async {
    final initialDate = isStart ? _tanggalMulai : _tanggalSelesai;
    final today = DateTime.now();
    final firstDate = isStart ? today : (_tanggalMulai ?? today);

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate ?? firstDate,
      firstDate: firstDate,
      lastDate: today.add(const Duration(days: 365)),
    );

    if (picked != null) {
      setState(() {
        if (isStart) {
          _tanggalMulai = picked;
          _tanggalMulaiController.text = DateFormat(
            'dd MMM yyyy',
            'id_ID',
          ).format(picked);
          if (_tanggalSelesai != null && _tanggalSelesai!.isBefore(picked)) {
            _tanggalSelesai = null;
            _tanggalSelesaiController.clear();
          }
        } else {
          _tanggalSelesai = picked;
          _tanggalSelesaiController.text = DateFormat(
            'dd MMM yyyy',
            'id_ID',
          ).format(picked);
        }
      });
    }
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    if (_selectedJenisIzin == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pilih jenis izin terlebih dahulu')),
      );
      return;
    }

    if (_tanggalMulai == null || _tanggalSelesai == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Lengkapi tanggal mulai dan selesai')),
      );
      return;
    }

    final params = SubmitPermissionParams(
      jenisIzin: _selectedJenisIzin!,
      tanggalMulai: DateFormat('yyyy-MM-dd').format(_tanggalMulai!),
      tanggalSelesai: DateFormat('yyyy-MM-dd').format(_tanggalSelesai!),
      keterangan: _keteranganController.text.trim(),
      dokumenPendukungPath: _dokumenPendukung?.path,
    );

    context.read<PermissionBloc>().add(
      PermissionEvent.submitPermission(params: params),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajukan Izin')),
      body: BlocConsumer<PermissionBloc, PermissionState>(
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: AppSpacing.large,
                          right: AppSpacing.large,
                          top: AppSpacing.large,
                          bottom:
                              AppSpacing.large +
                              MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Jenis Izin',
                                        style: AppTypography.labelLarge
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      const SizedBox(height: AppSpacing.small),
                                      DropdownButtonFormField<String>(
                                        initialValue: _selectedJenisIzin,
                                        decoration: const InputDecoration(
                                          hintText: 'Pilih jenis izin',
                                          prefixIcon: Icon(Icons.event_note),
                                        ),
                                        items: _jenisIzinOptions
                                            .map(
                                              (item) => DropdownMenuItem(
                                                value: item,
                                                child: Text(item),
                                              ),
                                            )
                                            .toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedJenisIzin = value;
                                          });
                                        },
                                        validator: (value) => value == null
                                            ? 'Pilih jenis izin'
                                            : null,
                                      ),
                                      const SizedBox(height: AppSpacing.large),

                                      // Tanggal Mulai dan Selesai (2 Kolom)
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Tanggal Mulai
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tanggal Mulai',
                                                  style: AppTypography
                                                      .labelLarge
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  height: AppSpacing.small,
                                                ),
                                                AppTextField(
                                                  controller:
                                                      _tanggalMulaiController,
                                                  hintText: 'Pilih tanggal',
                                                  prefixIcon: const Icon(
                                                    Icons.calendar_today,
                                                  ),
                                                  readOnly: true,
                                                  onTap: () => _pickDate(
                                                    context,
                                                    isStart: true,
                                                  ),
                                                  validator: (value) =>
                                                      value == null ||
                                                          value.isEmpty
                                                      ? 'Wajib diisi'
                                                      : null,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: AppSpacing.medium,
                                          ),
                                          // Tanggal Selesai
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tanggal Selesai',
                                                  style: AppTypography
                                                      .labelLarge
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  height: AppSpacing.small,
                                                ),
                                                AppTextField(
                                                  controller:
                                                      _tanggalSelesaiController,
                                                  hintText: 'Pilih tanggal',
                                                  prefixIcon: const Icon(
                                                    Icons.event,
                                                  ),
                                                  readOnly: true,
                                                  onTap: () => _pickDate(
                                                    context,
                                                    isStart: false,
                                                  ),
                                                  validator: (value) =>
                                                      value == null ||
                                                          value.isEmpty
                                                      ? 'Wajib diisi'
                                                      : null,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: AppSpacing.large),

                                      // Keterangan
                                      Text(
                                        'Keterangan',
                                        style: AppTypography.labelLarge
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      const SizedBox(height: AppSpacing.small),
                                      AppTextField(
                                        controller: _keteranganController,
                                        hintText: 'Tuliskan alasan izin',
                                        maxLines: 4,
                                        validator: (value) =>
                                            value == null ||
                                                value.trim().isEmpty
                                            ? 'Keterangan wajib diisi'
                                            : null,
                                      ),
                                      const SizedBox(height: AppSpacing.large),
                                      Text(
                                        'Dokumen Pendukung (Opsional)',
                                        style: AppTypography.labelLarge
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      const SizedBox(height: AppSpacing.small),
                                      FilePickerWidget(
                                        hint:
                                            'Format pdf/jpg/png, ukuran maksimal 5MB',
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
                              const SizedBox(height: AppSpacing.large),
                              PrimaryButton(
                                text: 'Simpan',
                                isLoading: state.isSubmitLoading,
                                onPressed: state.isSubmitLoading
                                    ? null
                                    : _submit,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
