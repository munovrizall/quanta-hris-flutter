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
    final firstDate = isStartDate
        ? DateTime.now()
        : (_tanggalMulai ?? DateTime.now());

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

  Future<void> _pickDocument() async {
    // TODO: Implement file picker when file_picker package is added
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Fitur upload dokumen akan segera tersedia'),
        ),
      );
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
        dokumenPendukungPath: null, // File picker not implemented yet
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
            // Navigate back to leave screen and refresh
            context.go('/leave');
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
            child: Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.large),
                children: [
                  // Header Info
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.medium),
                    decoration: BoxDecoration(
                      color: AppColors.primary10,
                      borderRadius: BorderRadius.circular(AppRadius.medium),
                      border: Border.all(color: AppColors.primary200),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, color: AppColors.primary),
                        const SizedBox(width: AppSpacing.small),
                        Expanded(
                          child: Text(
                            'Pastikan semua data yang diisi sudah benar sebelum mengajukan permohonan cuti',
                            style: AppTypography.bodySmall.copyWith(
                              color: AppColors.primary500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  // Jenis Cuti Dropdown
                  Text(
                    'Jenis Cuti',
                    style: AppTypography.labelLarge.copyWith(
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
                      return DropdownMenuItem(value: jenis, child: Text(jenis));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedJenisCuti = value;
                        _jenisCutiController.text = value ?? '';
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

                  // Tanggal Mulai
                  Text(
                    'Tanggal Mulai',
                    style: AppTypography.labelLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.small),
                  AppTextField(
                    controller: _tanggalMulaiController,
                    hintText: 'Pilih tanggal mulai cuti',
                    prefixIcon: const Icon(Icons.calendar_today),
                    readOnly: true,
                    onTap: () => _selectDate(context, isStartDate: true),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tanggal mulai harus diisi';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSpacing.large),

                  // Tanggal Selesai
                  Text(
                    'Tanggal Selesai',
                    style: AppTypography.labelLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.small),
                  AppTextField(
                    controller: _tanggalSelesaiController,
                    hintText: 'Pilih tanggal selesai cuti',
                    prefixIcon: const Icon(Icons.event),
                    readOnly: true,
                    onTap: () => _selectDate(context, isStartDate: false),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tanggal selesai harus diisi';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: AppSpacing.large),

                  // Keterangan
                  Text(
                    'Keterangan',
                    style: AppTypography.labelLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.small),
                  AppTextField(
                    controller: _keteranganController,
                    hintText: 'Masukkan alasan/keterangan cuti',
                    prefixIcon: const Icon(Icons.notes),
                    maxLines: 4,
                    textCapitalization: TextCapitalization.sentences,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
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
                  Text(
                    'Dokumen Pendukung (Opsional)',
                    style: AppTypography.labelLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.small),
                  OutlinedButton.icon(
                    onPressed: _pickDocument,
                    icon: const Icon(Icons.attach_file),
                    label: const Text('Pilih Dokumen (Segera Hadir)'),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSpacing.medium,
                        horizontal: AppSpacing.large,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xxl),

                  // Submit Button
                  PrimaryButton(
                    text: 'Ajukan Cuti',
                    onPressed: state.isSubmitLoading ? null : _submitForm,
                    isLoading: state.isSubmitLoading,
                    loadingText: 'Mengirim...',
                  ),
                  const SizedBox(height: AppSpacing.medium),

                  // Cancel Button
                  PrimaryButton(
                    text: 'Batal',
                    variant: PrimaryButtonVariant.outline,
                    onPressed: state.isSubmitLoading
                        ? null
                        : () => context.pop(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
