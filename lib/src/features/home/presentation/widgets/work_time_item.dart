import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

class WorkTimeItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String time;
  final Color color;

  const WorkTimeItem({
    super.key,
    required this.icon,
    required this.label,
    required this.time,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color, size: AppSizes.iconMedium),
        const SizedBox(height: AppSpacing.xs),
        Text(
          label,
          style: AppTypography.labelSmall.copyWith(
            color: color,
          ),
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          time,
          style: AppTypography.heading3.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}