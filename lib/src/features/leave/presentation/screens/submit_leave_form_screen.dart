import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/submit_leave_params.dart';
import 'package:quanta_hris/src/features/leave/presentation/bloc/leave_bloc.dart';
import 'package:quanta_hris/src/features/leave/presentation/bloc/leave_event.dart';
import 'package:quanta_hris/src/features/leave/presentation/bloc/leave_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/app_text_field.dart';
import 'package:quanta_hris/src/shared/widgets/file_picker_widget.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class SubmitLeaveFormScreen extends StatelessWidget {
  const SubmitLeaveFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LeaveBloc>(
      create: (_) => getIt<LeaveBloc>(),
      child: const _SubmitLeaveFormView(),
    );
  }
}

class _SubmitLeaveFormView extends StatefulWidget {
  const _SubmitLeaveFormView();

  @override
  State<_SubmitLeaveFormView> createState() => _SubmitLeaveFormViewState();
}

class _SubmitLeaveFormViewState extends State<_SubmitLeaveFormView> {
  final _formKey = GlobalKey<FormState>();
  final _jenisCutiController = TextEditingController();
  final _tanggalMulaiController = TextEditingController();
  final _tanggalSelesaiController = TextEditingController();
  final _keteranganController = TextEditingController();

  DateTime? _tanggalMulai;
  DateTime? _tanggalSelesai;
  File? _dokumenPendukung;
  String? _selectedJenisCuti;

  final List<String> _jenisCutiOptions = [
    'Cuti Tahunan',
    'Cuti Sakit',
    'Cuti Melahirkan',
    'Cuti Menikah',
    'Cuti Kematian',
  ];

  @override
  void dispose() {
    _jenisCutiController.dispose();
    _tanggalMulaiController.dispose();
    _tanggalSelesaiController.dispose();
    _keteranganController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(
    BuildContext context, {
    required bool isStartDate,
  }) async {
    final initialDate = isStartDate ? _tanggalMulai : _tanggalSelesai;

    // Tanggal mulai minimum adalah besok (tidak boleh hari ini atau sebelumnya)
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final firstDate = isStartDate
        ? DateTime(tomorrow.year, tomorrow.month, tomorrow.day)
        : (_tanggalMulai ??
              DateTime(tomorrow.year, tomorrow.month, tomorrow.day));

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate ?? firstDate,
      firstDate: firstDate,
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _tanggalMulai = picked;
          _tanggalMulaiController.text = DateFormat(
            'dd MMM yyyy',
            'id_ID',
          ).format(picked);
          // Reset tanggal selesai jika lebih awal dari tanggal mulai
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

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (_selectedJenisCuti == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Pilih jenis cuti terlebih dahulu')),
        );
        return;
      }

      if (_tanggalMulai == null || _tanggalSelesai == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Pilih tanggal mulai dan selesai')),
        );
        return;
      }

      final params = SubmitLeaveParams(
        jenisCuti: _selectedJenisCuti!,
        tanggalMulai: DateFormat('yyyy-MM-dd').format(_tanggalMulai!),
        tanggalSelesai: DateFormat('yyyy-MM-dd').format(_tanggalSelesai!),
        keterangan: _keteranganController.text.trim(),
        dokumenPendukungPath: _dokumenPendukung?.path,
      );

      context.read<LeaveBloc>().add(LeaveEvent.submitLeave(params: params));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajukan Cuti')),
      body: BlocConsumer<LeaveBloc, LeaveState>(
        listener: (context, state) {
          if (state.submitSuccessMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.submitSuccessMessage!),
                backgroundColor: AppColors.success,
              ),
            );
            // Navigate back to leave screen
            context.pop();
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
                              // Main Content - Scrollable
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      // Jenis Cuti Dropdown
                                      Text(
                                        'Jenis Cuti',
                                        style: AppTypography.labelLarge
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      const SizedBox(height: AppSpacing.small),
                                      DropdownButtonFormField<String>(
                                        value: _selectedJenisCuti,
                                        decoration: const InputDecoration(
                                          hintText: 'Pilih jenis cuti',
                                          prefixIcon: Icon(Icons.event_note),
                                        ),
                                        items: _jenisCutiOptions.map((jenis) {
                                          return DropdownMenuItem(
                                            value: jenis,
                                            child: Text(jenis),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedJenisCuti = value;
                                            _jenisCutiController.text =
                                                value ?? '';
                                          });
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Jenis cuti harus dipilih';
                                          }
                                          return null;
                                        },
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
                                                  onTap: () => _selectDate(
                                                    context,
                                                    isStartDate: true,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Wajib diisi';
                                                    }
                                                    return null;
                                                  },
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
                                                  onTap: () => _selectDate(
                                                    context,
                                                    isStartDate: false,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Wajib diisi';
                                                    }
                                                    return null;
                                                  },
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
                                        hintText:
                                            'Masukkan alasan/keterangan cuti',
                                        maxLines: 4,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        validator: (value) {
                                          if (value == null ||
                                              value.trim().isEmpty) {
                                            return 'Keterangan harus diisi';
                                          }
                                          if (value.trim().length < 10) {
                                            return 'Keterangan minimal 10 karakter';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: AppSpacing.large),

                                      // Dokumen Pendukung
                                      FilePickerWidget(
                                        label: 'Dokumen Pendukung (Opsional)',
                                        hint: 'PDF, JPG, atau PNG (Maks. 5MB)',
                                        initialFile: _dokumenPendukung,
                                        onFileSelected: (file) {
                                          setState(() {
                                            _dokumenPendukung = file;
                                          });
                                        },
                                        maxSizeInMB: 5,
                                        allowedExtensions: const [
                                          'pdf',
                                          'jpg',
                                          'jpeg',
                                          'png',
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Bottom Section - Fixed Buttons
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  const SizedBox(height: AppSpacing.medium),

                                  // Submit Button
                                  PrimaryButton(
                                    text: 'Simpan',
                                    onPressed: state.isSubmitLoading
                                        ? null
                                        : _submitForm,
                                    isLoading: state.isSubmitLoading,
                                    loadingText: 'Mengirim...',
                                  ),
                                ],
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
