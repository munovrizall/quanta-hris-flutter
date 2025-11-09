import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/overtime/domain/entities/overtime_history_entity.dart';
import 'package:quanta_hris/src/features/overtime/presentation/bloc/overtime_bloc.dart';
import 'package:quanta_hris/src/features/overtime/presentation/bloc/overtime_event.dart';
import 'package:quanta_hris/src/features/overtime/presentation/bloc/overtime_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

class OvertimeScreen extends StatelessWidget {
  const OvertimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<OvertimeBloc>()..add(const OvertimeEvent.fetchHistory()),
      child: const _OvertimeView(),
    );
  }
}

class _OvertimeView extends StatelessWidget {
  const _OvertimeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Lembur')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: BlocBuilder<OvertimeBloc, OvertimeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.error != null) {
                return _OvertimeError(
                  message: state.error!,
                  onRetry: () => context.read<OvertimeBloc>().add(
                    const OvertimeEvent.fetchHistory(),
                  ),
                );
              }

              final histories = state.histories;
              if (histories == null || histories.isEmpty) {
                return const _OvertimeEmpty();
              }

              return _OvertimeContent(histories: histories);
            },
          ),
        ),
      ),
    );
  }
}

class _OvertimeContent extends StatelessWidget {
  final List<OvertimeHistoryEntity> histories;

  const _OvertimeContent({required this.histories});

  @override
  Widget build(BuildContext context) {
    final eligibleCount = histories.where((item) => item.eligibleLembur).length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _OvertimeHeader(total: histories.length, eligible: eligibleCount),
        const SizedBox(height: AppSpacing.large),
        Text('Detail Riwayat', style: AppTypography.heading2),
        const SizedBox(height: AppSpacing.medium),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<OvertimeBloc>().add(
                const OvertimeEvent.fetchHistory(),
              );
            },
            child: ListView.builder(
              itemCount: histories.length,
              itemBuilder: (context, index) {
                final item = histories[index];
                return _OvertimeHistoryCard(item: item);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _OvertimeHeader extends StatelessWidget {
  final int total;
  final int eligible;

  const _OvertimeHeader({required this.total, required this.eligible});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.large),
      decoration: BoxDecoration(
        color: AppColors.primary10,
        borderRadius: BorderRadius.circular(AppRadius.large),
        border: Border.all(color: AppColors.primary200),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.access_time, color: AppColors.primary, size: 40),
              const SizedBox(width: AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Hari Tercatat',
                      style: AppTypography.labelLarge.copyWith(
                        color: AppColors.primary500,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      '$total Hari',
                      style: AppTypography.heading1.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'Eligible lembur: $eligible hari',
                      style: AppTypography.labelMedium.copyWith(
                        color: AppColors.neutral600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OvertimeHistoryCard extends StatelessWidget {
  final OvertimeHistoryEntity item;

  const _OvertimeHistoryCard({required this.item});

  String _formatDate(String date) {
    try {
      return DateFormat('dd MMM yyyy', 'id_ID').format(DateTime.parse(date));
    } catch (_) {
      return date;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      elevation: 2,
      margin: const EdgeInsets.only(bottom: AppSpacing.medium),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatDate(item.tanggal),
                      style: AppTypography.heading3,
                    ),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      'Status Absensi: ${item.statusAbsensi}',
                      style: AppTypography.labelSmall.copyWith(
                        color: AppColors.neutral500,
                      ),
                    ),
                  ],
                ),
                if (item.eligibleLembur)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.medium,
                      vertical: AppSpacing.xs,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.successLight,
                      borderRadius: BorderRadius.circular(AppRadius.medium),
                    ),
                    child: Text(
                      'Eligible',
                      style: AppTypography.labelMedium.copyWith(
                        color: AppColors.success,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: AppSpacing.medium),
            const Divider(),
            const SizedBox(height: AppSpacing.small),
            _OvertimeDetailRow(
              icon: Icons.login,
              label: 'Jam Masuk',
              value: item.jamMasuk ?? '-',
            ),
            const SizedBox(height: AppSpacing.small),
            _OvertimeDetailRow(
              icon: Icons.logout,
              label: 'Jam Pulang',
              value: item.jamPulang ?? '-',
            ),
            const SizedBox(height: AppSpacing.small),
            _OvertimeDetailRow(
              icon: Icons.timer,
              label: 'Durasi Lembur Terhitung',
              value: item.durasiLemburTerhitung ?? '-',
            ),
            const SizedBox(height: AppSpacing.small),
            _OvertimeDetailRow(
              icon: Icons.apartment,
              label: 'Jam Pulang Perusahaan',
              value: item.jamPulangPerusahaan,
            ),
            if (item.lemburPengajuan != null) ...[
              const SizedBox(height: AppSpacing.medium),
              Container(
                padding: const EdgeInsets.all(AppSpacing.medium),
                decoration: BoxDecoration(
                  color: AppColors.neutral100,
                  borderRadius: BorderRadius.circular(AppRadius.medium),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pengajuan Lembur',
                      style: AppTypography.labelLarge.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'ID: ${item.lemburPengajuan!.lemburId}',
                      style: AppTypography.labelSmall.copyWith(
                        color: AppColors.neutral600,
                      ),
                    ),
                    _OvertimeDetailRow(
                      icon: Icons.av_timer,
                      label: 'Durasi Lembur',
                      value: item.lemburPengajuan!.durasiLembur,
                    ),
                    _OvertimeDetailRow(
                      icon: Icons.payments,
                      label: 'Upah Lembur',
                      value: NumberFormat.currency(
                        locale: 'id_ID',
                        symbol: 'Rp',
                        decimalDigits: 0,
                      ).format(item.lemburPengajuan!.upahLembur),
                    ),
                    _OvertimeDetailRow(
                      icon: Icons.update,
                      label: 'Status',
                      value: item.lemburPengajuan!.statusLembur,
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _OvertimeDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _OvertimeDetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.neutral500, size: AppSizes.iconMedium),
        const SizedBox(width: AppSpacing.small),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: AppTypography.labelSmall.copyWith(
                  color: AppColors.neutral500,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                value,
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.neutral900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _OvertimeError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _OvertimeError({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: AppTypography.bodyMedium.copyWith(color: AppColors.error),
          ),
          const SizedBox(height: AppSpacing.medium),
          ElevatedButton(onPressed: onRetry, child: const Text('Coba Lagi')),
        ],
      ),
    );
  }
}

class _OvertimeEmpty extends StatelessWidget {
  const _OvertimeEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Belum ada data lembur.',
        style: AppTypography.bodyMedium.copyWith(color: AppColors.neutral600),
      ),
    );
  }
}
