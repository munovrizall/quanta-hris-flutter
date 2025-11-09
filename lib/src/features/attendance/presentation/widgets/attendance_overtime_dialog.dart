import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

/// Dialog untuk menampilkan status absensi pulang yang eligible untuk lembur
/// dengan opsi untuk mengajukan lembur atau tidak
class AttendanceOvertimeDialog extends StatelessWidget {
  final String message;
  final String? waktuAbsensi;
  final String? statusTerlambat;
  final String? durasiTerlambat;
  final String? jarak;
  final VoidCallback onSubmitOvertime;
  final VoidCallback onDismiss;

  const AttendanceOvertimeDialog({
    super.key,
    required this.message,
    this.waktuAbsensi,
    this.statusTerlambat,
    this.durasiTerlambat,
    this.jarak,
    required this.onSubmitOvertime,
    required this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.xl),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon dengan animasi
            Container(
              padding: const EdgeInsets.all(AppSpacing.medium),
              decoration: BoxDecoration(
                color: AppColors.success.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle,
                size: 64,
                color: AppColors.success,
              ),
            ),
            const SizedBox(height: AppSpacing.large),

            // Title
            Text(
              'Absensi Pulang Berhasil!',
              style: AppTypography.heading2.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.neutral900,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.small),

            // Message
            Text(
              message,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.neutral600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.large),

            // Detail informasi
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.medium),
              decoration: BoxDecoration(
                color: AppColors.neutral100,
                borderRadius: BorderRadius.circular(AppRadius.medium),
                border: Border.all(color: AppColors.border),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (waktuAbsensi != null)
                    _buildInfoRow(
                      icon: Icons.access_time,
                      label: 'Waktu Absensi',
                      value: waktuAbsensi!,
                    ),
                  if (statusTerlambat != null) ...[
                    const SizedBox(height: AppSpacing.small),
                    _buildInfoRow(
                      icon: Icons.info_outline,
                      label: 'Status',
                      value: statusTerlambat!,
                      valueColor: statusTerlambat == 'Tepat Waktu'
                          ? AppColors.success
                          : AppColors.warning,
                    ),
                  ],
                  if (durasiTerlambat != null &&
                      durasiTerlambat != '00:00:00') ...[
                    const SizedBox(height: AppSpacing.small),
                    _buildInfoRow(
                      icon: Icons.timer,
                      label: 'Durasi Terlambat',
                      value: durasiTerlambat!,
                      valueColor: AppColors.warning,
                    ),
                  ],
                  if (jarak != null) ...[
                    const SizedBox(height: AppSpacing.small),
                    _buildInfoRow(
                      icon: Icons.location_on,
                      label: 'Jarak dari Kantor',
                      value: jarak!,
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.large),

            // Overtime info
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.medium),
              decoration: BoxDecoration(
                color: AppColors.primary10,
                borderRadius: BorderRadius.circular(AppRadius.medium),
                border: Border.all(color: AppColors.primary200),
              ),
              child: Row(
                children: [
                  Icon(Icons.work_history, color: AppColors.primary, size: 24),
                  const SizedBox(width: AppSpacing.small),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anda Eligible untuk Lembur',
                          style: AppTypography.labelLarge.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Apakah ingin mengajukan lembur?',
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.neutral600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.large),

            // Action buttons
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    text: 'Tidak',
                    onPressed: onDismiss,
                    variant: PrimaryButtonVariant.outline,
                  ),
                ),
                const SizedBox(width: AppSpacing.medium),
                Expanded(
                  child: PrimaryButton(
                    text: 'Ajukan Lembur',
                    onPressed: onSubmitOvertime,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.neutral600),
        const SizedBox(width: AppSpacing.xs),
        Expanded(
          child: Text(
            label,
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.neutral600,
            ),
          ),
        ),
        const SizedBox(width: AppSpacing.small),
        Text(
          value,
          style: AppTypography.bodyMedium.copyWith(
            fontWeight: FontWeight.w600,
            color: valueColor ?? AppColors.neutral900,
          ),
        ),
      ],
    );
  }
}
