import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/core/utils/currency_formatter.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnergySummaryCard extends StatelessWidget {
  const EnergySummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dailyKwhText = context.select<HomeBloc, String?>(
      (bloc) => bloc.state.emissionData != null
          ? '${bloc.state.emissionData!.dailySummary.kwh.toStringAsFixed(1)} kWh'
          : null,
    );

    final dailyKwhCost = context.select<HomeBloc, String?>(
      (bloc) => bloc.state.emissionData != null
          ? CurrencyFormatter.formatRupiah(
              bloc.state.emissionData!.dailySummary.cost,
            )
          : null,
    );

    final monthlyKwhText = context.select<HomeBloc, String?>(
      (bloc) => bloc.state.emissionData != null
          ? '${bloc.state.emissionData!.summary.currentMonth.kwh.toStringAsFixed(1)} kWh'
          : null,
    );

    final monthlyKwhCost = context.select<HomeBloc, String?>(
      (bloc) => bloc.state.emissionData != null
          ? CurrencyFormatter.formatRupiah(
              bloc.state.emissionData!.summary.currentMonth.cost,
            )
          : null,
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
      padding: const EdgeInsets.all(AppSpacing.medium),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.large),
        border: Border.all(color: AppColors.border),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const Icon(
              Icons.flash_on,
              color: AppColors.primary,
              size: AppSizes.iconLarge,
            ),

            const SizedBox(width: AppSpacing.medium),

            // Bagian kiri
            Expanded(
              flex: 2,
              child: _buildEnergyInfo(
                AppStrings.home.titleEnergySummaryDaily,
                dailyKwhText ?? '-- kWh',
                dailyKwhCost ?? 'Rp --',
              ),
            ),

            // Divider di tengah
            Container(
              width: 1,
              margin: const EdgeInsets.symmetric(horizontal: AppSpacing.small),
              child: VerticalDivider(
                color: AppColors.border,
                thickness: 1,
                width: 1,
              ),
            ),

            // Bagian kanan
            Expanded(
              flex: 3,
              child: _buildEnergyInfo(
                AppStrings.home.titleEnergySummaryMonthly,
                monthlyKwhText ?? '-- kWh',
                monthlyKwhCost ?? 'Rp --',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEnergyInfo(String title, String value, String cost) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.bodyMedium.copyWith(color: AppColors.primary),
          maxLines: 2,
          overflow: TextOverflow.visible,
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          value,
          style: AppTypography.heading3,
          maxLines: 2,
          overflow: TextOverflow.visible,
        ),
        const SizedBox(height: AppSpacing.xxs),
        Text(
          cost,
          style: AppTypography.bodyMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
