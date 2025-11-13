import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

/// Simple dialog to surface attendance failures with server-provided messages.
class AttendanceFailureDialog extends StatelessWidget {
  final String title;
  final String message;
  final String? subtitle;

  const AttendanceFailureDialog({
    super.key,
    this.title = 'Absensi Gagal',
    required this.message,
    this.subtitle,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppSpacing.medium),
              decoration: BoxDecoration(
                color: AppColors.error.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.error_rounded,
                size: 64,
                color: AppColors.error,
              ),
            ),
            const SizedBox(height: AppSpacing.large),
            Text(
              title,
              style: AppTypography.heading2.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.neutral900,
              ),
              textAlign: TextAlign.center,
            ),
            if (subtitle != null) ...[
              const SizedBox(height: AppSpacing.small),
              Text(
                subtitle!,
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.neutral600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: AppSpacing.small),
            Text(
              message,
              style: AppTypography.bodyLarge.copyWith(
                color: AppColors.neutral800,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.large),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => Navigator.of(context).pop(),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.error,
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacing.medium,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.large),
                  ),
                ),
                child: const Text(
                  'Mengerti',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
