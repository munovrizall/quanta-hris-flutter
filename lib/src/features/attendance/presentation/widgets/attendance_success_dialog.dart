import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

/// Dialog untuk menampilkan status absensi yang berhasil
/// Auto-dismiss setelah 4 detik
class AttendanceSuccessDialog extends StatelessWidget {
  final String title;
  final String message;
  final String? waktuAbsensi;
  final String? statusTerlambat;
  final String? durasiTerlambat;
  final String? jarak;
  final IconData icon;
  final Color iconColor;

  const AttendanceSuccessDialog({
    super.key,
    required this.title,
    required this.message,
    this.waktuAbsensi,
    this.statusTerlambat,
    this.durasiTerlambat,
    this.jarak,
    this.icon = Icons.check_circle,
    this.iconColor = AppColors.success,
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
                color: iconColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 64, color: iconColor),
            ),
            const SizedBox(height: AppSpacing.large),

            // Title
            Text(
              title,
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
            const SizedBox(height: AppSpacing.medium),

            // Loading indicator untuk countdown
            const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
              ),
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
