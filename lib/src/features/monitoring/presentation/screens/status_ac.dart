import 'package:flutter/material.dart';

import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

class StatusAC extends StatelessWidget {
  const StatusAC({super.key});

  static const Color _deepBlue = Color(0xFF1B174A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),
              Row(
                children: const [
                  Expanded(
                    child: _PrimaryStatusCard(
                      icon: Icons.show_chart_outlined,
                      iconColor: AppColors.success,
                      iconBackground: Color(0xFFE6F6EF),
                      title: 'Kondisi',
                      values: [
                        _StatusValue(
                          text: 'Normal',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.success,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: _PrimaryStatusCard(
                      icon: Icons.bolt_outlined,
                      iconColor: AppColors.black,
                      iconBackground: Color(0xFFEFF1F5),
                      values: [
                        _StatusValue(
                          text: '600 W',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                        _StatusValue(
                          text: '200 V',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textSecondary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const _DetailedInfoCard(
                leadingIcon: Icons.thermostat_outlined,
                iconColor: AppColors.black,
                iconBackground: Color(0xFFEFF1F5),
                items: [
                  _InfoItem(
                    label: 'Pipa',
                    value: '14°C',
                    valueColor: AppColors.textSecondary,
                  ),
                  _InfoItem(
                    label: 'Hembus',
                    value: '18°C',
                    valueColor: _deepBlue,
                  ),
                  _InfoItem(
                    label: 'Ruang',
                    value: '25°C',
                    valueColor: _deepBlue,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Pemakaian Hari Ini',
                style: AppTypography.heading3.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              const _DetailedInfoCard(
                leadingIcon: Icons.show_chart_outlined,
                iconColor: AppColors.primary500,
                iconBackground: Color(0xFFE6F6F9),
                items: [
                  _InfoItem(
                    label: 'Menyala',
                    value: '6 Jam',
                    valueColor: _deepBlue,
                  ),
                  _InfoItem(
                    label: 'Konsumsi',
                    value: '20 kWh',
                    valueColor: _deepBlue,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Biaya Pemakaian',
                style: AppTypography.heading3.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              const _DetailedInfoCard(
                leadingIcon: Icons.account_balance_wallet_outlined,
                iconColor: AppColors.black,
                iconBackground: Color(0xFFF5F0E8),
                items: [
                  _InfoItem(
                    label: 'Hari Ini',
                    value: 'Rp 34.000',
                    valueColor: AppColors.textSecondary,
                  ),
                  _InfoItem(
                    label: 'Bulan Ini',
                    value: 'Rp 1.020.000',
                    valueColor: _deepBlue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PrimaryStatusCard extends StatelessWidget {
  const _PrimaryStatusCard({
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
    this.title,
    required this.values,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String? title;
  final List<_StatusValue> values;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if ((title ?? '').isNotEmpty) ...[
                  Text(
                    title!,
                    style: AppTypography.labelLarge.copyWith(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                ],
                for (final _StatusValue value in values) ...[
                  Text(
                    value.text,
                    style: AppTypography.heading3.copyWith(
                      fontSize: value.fontSize,
                      fontWeight: value.fontWeight,
                      color: value.color ?? AppColors.black,
                    ),
                  ),
                  if (value != values.last) const SizedBox(height: 2),
                ],
              ],
            ),
          ),
          const SizedBox(width: 12),
          const Icon(Icons.chevron_right, color: AppColors.textSecondary),
        ],
      ),
    );
  }
}

class _DetailedInfoCard extends StatelessWidget {
  const _DetailedInfoCard({
    required this.leadingIcon,
    required this.items,
    this.iconColor,
    this.iconBackground,
  });

  final IconData leadingIcon;
  final List<_InfoItem> items;
  final Color? iconColor;
  final Color? iconBackground;

  @override
  Widget build(BuildContext context) {
    final Color resolvedIconColor = iconColor ?? AppColors.primary500;
    final Color resolvedIconBackground =
        iconBackground ?? AppColors.primary100.withValues(alpha: 0.5);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: resolvedIconBackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(leadingIcon, color: resolvedIconColor, size: 22),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              children: [
                for (int index = 0; index < items.length; index++) ...[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: _InfoSegment(item: items[index]),
                    ),
                  ),
                  if (index != items.length - 1)
                    Container(
                      width: 1,
                      height: 48,
                      color: AppColors.neutral200,
                    ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 12),
          const Icon(Icons.chevron_right, color: AppColors.textSecondary),
        ],
      ),
    );
  }
}

class _InfoSegment extends StatelessWidget {
  const _InfoSegment({required this.item});

  final _InfoItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          item.label,
          style: AppTypography.labelLarge.copyWith(
            color: AppColors.textSecondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          item.value,
          style: AppTypography.heading3.copyWith(
            color: item.valueColor ?? AppColors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _StatusValue {
  const _StatusValue({
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.color,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
}

class _InfoItem {
  const _InfoItem({required this.label, required this.value, this.valueColor});

  final String label;
  final String value;
  final Color? valueColor;
}
