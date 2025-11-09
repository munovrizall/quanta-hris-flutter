import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/permission/domain/entities/permission_history_entity.dart';
import 'package:quanta_hris/src/features/permission/presentation/bloc/permission_bloc.dart';
import 'package:quanta_hris/src/features/permission/presentation/bloc/permission_event.dart';
import 'package:quanta_hris/src/features/permission/presentation/bloc/permission_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<PermissionBloc>()
            ..add(const PermissionEvent.fetchPermissionHistory()),
      child: const _PermissionView(),
    );
  }
}

class _PermissionView extends StatelessWidget {
  const _PermissionView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Izin')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: BlocBuilder<PermissionBloc, PermissionState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.error != null) {
                return _PermissionError(
                  message: state.error!,
                  onRetry: () => context.read<PermissionBloc>().add(
                    const PermissionEvent.fetchPermissionHistory(),
                  ),
                );
              }

              final history = state.history;
              if (history == null || history.riwayat.isEmpty) {
                return const _PermissionEmpty();
              }

              return _PermissionContent(history: history);
            },
          ),
        ),
      ),
    );
  }
}

class _PermissionContent extends StatelessWidget {
  final PermissionHistoryEntity history;

  const _PermissionContent({required this.history});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _PermissionHeaderInfo(history: history),
        const SizedBox(height: AppSpacing.large),
        Text('Daftar Pengajuan Izin', style: AppTypography.heading2),
        const SizedBox(height: AppSpacing.medium),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<PermissionBloc>().add(
                const PermissionEvent.fetchPermissionHistory(),
              );
            },
            child: ListView.builder(
              itemCount: history.riwayat.length,
              itemBuilder: (context, index) {
                final item = history.riwayat[index];
                return _PermissionHistoryCard(item: item);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _PermissionHeaderInfo extends StatelessWidget {
  final PermissionHistoryEntity history;

  const _PermissionHeaderInfo({required this.history});

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
              Icon(Icons.assignment, color: AppColors.primary, size: 40),
              const SizedBox(width: AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Pengajuan Izin',
                      style: AppTypography.labelLarge.copyWith(
                        color: AppColors.primary500,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      '${history.totalPengajuan}',
                      style: AppTypography.heading1.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'Karyawan ID: ${history.karyawanId}',
                      style: AppTypography.labelMedium.copyWith(
                        color: AppColors.neutral600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.large),
          PrimaryButton(
            text: 'Ajukan Izin',
            icon: const ButtonIconData(Icons.add),
            onPressed: () {
              // TODO: navigate to permission submission form
            },
          ),
        ],
      ),
    );
  }
}

class _PermissionHistoryCard extends StatelessWidget {
  final PermissionHistoryItemEntity item;

  const _PermissionHistoryCard({required this.item});

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd MMM yyyy', 'id_ID').format(date);
    } catch (_) {
      return dateString;
    }
  }

  Color _statusColor(String status) {
    switch (status.toLowerCase()) {
      case 'disetujui':
        return AppColors.success;
      case 'ditolak':
        return AppColors.error;
      case 'diajukan':
      case 'pending':
        return AppColors.warning;
      default:
        return AppColors.neutral500;
    }
  }

  IconData _statusIcon(String status) {
    switch (status.toLowerCase()) {
      case 'disetujui':
        return Icons.check_circle;
      case 'ditolak':
        return Icons.cancel;
      case 'diajukan':
      case 'pending':
        return Icons.schedule;
      default:
        return Icons.help_outline;
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.jenisIzin, style: AppTypography.heading3),
                      const SizedBox(height: AppSpacing.xxs),
                      Text(
                        'ID: ${item.izinId}',
                        style: AppTypography.labelSmall.copyWith(
                          color: AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                ),
                _StatusChip(
                  status: item.statusIzin,
                  color: _statusColor(item.statusIzin),
                  icon: _statusIcon(item.statusIzin),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.medium),
            const Divider(),
            const SizedBox(height: AppSpacing.small),
            _PermissionDetailRow(
              icon: Icons.calendar_today,
              label: 'Tanggal Mulai',
              value: _formatDate(item.tanggalMulai),
            ),
            const SizedBox(height: AppSpacing.small),
            _PermissionDetailRow(
              icon: Icons.event,
              label: 'Tanggal Selesai',
              value: _formatDate(item.tanggalSelesai),
            ),
            const SizedBox(height: AppSpacing.small),
            if (item.diprosesOleh != null)
              _PermissionDetailRow(
                icon: Icons.person,
                label: 'Diproses Oleh',
                value: item.diprosesOleh!,
              ),
            if (item.alasanPenolakan != null) ...[
              const SizedBox(height: AppSpacing.small),
              _PermissionDetailRow(
                icon: Icons.info_outline,
                label: 'Alasan Penolakan',
                value: item.alasanPenolakan!,
              ),
            ],
            if (item.dokumenPendukung != null) ...[
              const SizedBox(height: AppSpacing.small),
              _PermissionDetailRow(
                icon: Icons.attachment,
                label: 'Dokumen Pendukung',
                value: item.dokumenPendukung!,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _PermissionDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _PermissionDetailRow({
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
  final String status;
  final Color color;
  final IconData icon;

  const _StatusChip({
    required this.status,
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
            status,
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

class _PermissionError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _PermissionError({required this.message, required this.onRetry});

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

class _PermissionEmpty extends StatelessWidget {
  const _PermissionEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Belum ada pengajuan izin.',
        style: AppTypography.bodyMedium.copyWith(color: AppColors.neutral600),
      ),
    );
  }
}
