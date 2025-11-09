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
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

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
    final eligibleHistories = histories
        .where((item) => item.eligibleLembur)
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: eligibleHistories.isEmpty
              ? const _OvertimeEmpty(
                  message: 'Belum ada data lembur yang eligible.',
                )
              : RefreshIndicator(
                  onRefresh: () async {
                    context.read<OvertimeBloc>().add(
                      const OvertimeEvent.fetchHistory(),
                    );
                  },
                  child: ListView.builder(
                    itemCount: eligibleHistories.length,
                    itemBuilder: (context, index) {
                      final item = eligibleHistories[index];
                      return _OvertimeHistoryCard(item: item);
                    },
                  ),
                ),
        ),
      ],
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
                const _StatusChip(
                  label: 'Eligible',
                  color: AppColors.success,
                  icon: Icons.check_circle,
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
            const SizedBox(height: AppSpacing.medium),
            if (item.lemburPengajuan != null)
              _OvertimeSubmissionSummary(submission: item.lemburPengajuan!)
            else
              PrimaryButton(
                text: 'Ajukan Lembur',
                variant: PrimaryButtonVariant.outline,
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Form pengajuan lembur belum tersedia untuk versi ini.',
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class _OvertimeSubmissionSummary extends StatelessWidget {
  final OvertimeSubmissionEntity submission;

  const _OvertimeSubmissionSummary({required this.submission});

  Color _statusColor(String status) {
    switch (status.toLowerCase()) {
      case 'disetujui':
        return AppColors.success;
      case 'ditolak':
        return AppColors.error;
      default:
        return AppColors.warning;
    }
  }

  IconData _statusIcon(String status) {
    switch (status.toLowerCase()) {
      case 'disetujui':
        return Icons.check_circle;
      case 'ditolak':
        return Icons.cancel;
      default:
        return Icons.schedule;
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _statusColor(submission.statusLembur);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.medium),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary10, AppColors.primary10.withOpacity(0.4)],
        ),
        borderRadius: BorderRadius.circular(AppRadius.large),
        border: Border.all(color: AppColors.primary200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pengajuan Lembur',
                style: AppTypography.heading3.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              _StatusChip(
                label: submission.statusLembur,
                color: statusColor,
                icon: _statusIcon(submission.statusLembur),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.small),
          Text(
            'ID: ${submission.lemburId}',
            style: AppTypography.labelSmall.copyWith(
              color: AppColors.neutral600,
            ),
          ),
          const SizedBox(height: AppSpacing.small),
          _OvertimeDetailRow(
            icon: Icons.av_timer,
            label: 'Durasi Lembur',
            value: submission.durasiLembur,
          ),
          _OvertimeDetailRow(
            icon: Icons.payments,
            label: 'Upah Lembur',
            value: NumberFormat.currency(
              locale: 'id_ID',
              symbol: 'Rp',
              decimalDigits: 0,
            ).format(submission.upahLembur),
          ),
          if (submission.processedAt != null)
            _OvertimeDetailRow(
              icon: Icons.update,
              label: 'Diproses pada',
              value: submission.processedAt!,
            ),
        ],
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

class _StatusChip extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;

  const _StatusChip({
    required this.label,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.medium,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: AppSizes.iconSmall),
          const SizedBox(width: AppSpacing.xs),
          Text(
            label,
            style: AppTypography.labelMedium.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
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
  final String? message;

  const _OvertimeEmpty({this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message ?? 'Belum ada data lembur.',
        style: AppTypography.bodyMedium.copyWith(color: AppColors.neutral600),
      ),
    );
  }
}
