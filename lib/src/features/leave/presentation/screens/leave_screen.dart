import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/leave/domain/entities/leave_history_entity.dart';
import 'package:quanta_hris/src/features/leave/presentation/bloc/leave_bloc.dart';
import 'package:quanta_hris/src/features/leave/presentation/bloc/leave_event.dart';
import 'package:quanta_hris/src/features/leave/presentation/bloc/leave_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/main_bottom_navbar.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LeaveBloc>(
      create: (_) =>
          getIt<LeaveBloc>()..add(const LeaveEvent.getLeaveHistory()),
      child: const _LeaveView(),
    );
  }
}

class _LeaveView extends StatelessWidget {
  const _LeaveView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Cuti')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: BlocBuilder<LeaveBloc, LeaveState>(
            builder: (context, state) {
              if (state.isHistoryLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.historyError != null) {
                return _LeaveError(
                  message: state.historyError!,
                  onRetry: () => context.read<LeaveBloc>().add(
                    const LeaveEvent.getLeaveHistory(),
                  ),
                );
              }

              final leaveHistory = state.leaveHistory;
              if (leaveHistory == null || leaveHistory.riwayat.isEmpty) {
                return const _LeaveEmpty();
              }

              return _LeaveContent(leaveHistory: leaveHistory);
            },
          ),
        ),
      ),
    );
  }
}

class _LeaveContent extends StatelessWidget {
  final LeaveHistoryEntity leaveHistory;

  const _LeaveContent({required this.leaveHistory});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _LeaveHeaderInfo(leaveHistory: leaveHistory),
        const SizedBox(height: AppSpacing.large),
        Text('Daftar Pengajuan Cuti', style: AppTypography.heading2),
        const SizedBox(height: AppSpacing.medium),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              context.read<LeaveBloc>().add(const LeaveEvent.getLeaveHistory());
            },
            child: ListView.builder(
              itemCount: leaveHistory.riwayat.length,
              itemBuilder: (context, index) {
                final item = leaveHistory.riwayat[index];
                return _LeaveHistoryCard(item: item);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _LeaveHeaderInfo extends StatelessWidget {
  final LeaveHistoryEntity leaveHistory;

  const _LeaveHeaderInfo({required this.leaveHistory});

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
              Icon(Icons.info_outline, color: AppColors.primary, size: 40),
              const SizedBox(width: AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sisa Kuota Cuti',
                      style: AppTypography.labelLarge.copyWith(
                        color: AppColors.primary500,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xxs),
                    Text(
                      '${leaveHistory.sisaKuotaCuti} Hari',
                      style: AppTypography.heading1.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'Total Pengajuan: ${leaveHistory.totalPengajuan}',
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
            text: 'Tambah Pengajuan Cuti',
            icon: const ButtonIconData(Icons.add),
            onPressed: () {
              // TODO: Navigate to submit leave form
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Fitur pengajuan cuti akan segera hadir'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _LeaveHistoryCard extends StatelessWidget {
  final LeaveHistoryItemEntity item;

  const _LeaveHistoryCard({required this.item});

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('dd MMM yyyy', 'id_ID').format(date);
    } catch (e) {
      return dateString;
    }
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'disetujui':
        return AppColors.success;
      case 'ditolak':
        return AppColors.error;
      case 'menunggu':
      case 'pending':
        return AppColors.warning;
      default:
        return AppColors.neutral500;
    }
  }

  IconData _getStatusIcon(String status) {
    switch (status.toLowerCase()) {
      case 'disetujui':
        return Icons.check_circle;
      case 'ditolak':
        return Icons.cancel;
      case 'menunggu':
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
            // Header: Jenis Cuti & Status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.jenisCuti, style: AppTypography.heading3),
                      const SizedBox(height: AppSpacing.xxs),
                      Text(
                        'ID: ${item.cutiId}',
                        style: AppTypography.labelSmall.copyWith(
                          color: AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                ),
                _StatusChip(
                  status: item.statusCuti,
                  color: _getStatusColor(item.statusCuti),
                  icon: _getStatusIcon(item.statusCuti),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.medium),
            const Divider(),
            const SizedBox(height: AppSpacing.small),

            // Detail Tanggal
            _LeaveDetailRow(
              icon: Icons.calendar_today,
              label: 'Tanggal Mulai',
              value: _formatDate(item.tanggalMulai),
            ),
            const SizedBox(height: AppSpacing.small),
            _LeaveDetailRow(
              icon: Icons.event,
              label: 'Tanggal Selesai',
              value: _formatDate(item.tanggalSelesai),
            ),
            const SizedBox(height: AppSpacing.small),
            _LeaveDetailRow(
              icon: Icons.access_time,
              label: 'Durasi',
              value: '${item.durasiHari} Hari',
            ),

            // Dokumen Pendukung (jika ada)
            if (item.dokumenPendukung != null &&
                item.dokumenPendukung!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.small),
              _LeaveDetailRow(
                icon: Icons.attach_file,
                label: 'Dokumen',
                value: 'Tersedia',
                valueColor: AppColors.primary,
              ),
            ],

            // Alasan Penolakan (jika ditolak)
            if (item.alasanPenolakan != null &&
                item.alasanPenolakan!.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.medium),
              Container(
                padding: const EdgeInsets.all(AppSpacing.medium),
                decoration: BoxDecoration(
                  color: AppColors.errorLight,
                  borderRadius: BorderRadius.circular(AppRadius.medium),
                  border: Border.all(color: AppColors.error),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: AppColors.error, size: 20),
                    const SizedBox(width: AppSpacing.small),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alasan Penolakan',
                            style: AppTypography.labelMedium.copyWith(
                              color: AppColors.error,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xxs),
                          Text(
                            item.alasanPenolakan!,
                            style: AppTypography.bodySmall.copyWith(
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],

            // Footer: Tanggal Dibuat
            const SizedBox(height: AppSpacing.medium),
            const Divider(),
            const SizedBox(height: AppSpacing.small),
            Text(
              'Diajukan pada ${_formatDate(item.dibuatPada)}',
              style: AppTypography.labelSmall.copyWith(
                color: AppColors.neutral500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LeaveDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? valueColor;

  const _LeaveDetailRow({
    required this.icon,
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.neutral500),
        const SizedBox(width: AppSpacing.small),
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: AppTypography.labelMedium.copyWith(
              color: AppColors.neutral600,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: AppTypography.bodyMedium.copyWith(
              color: valueColor ?? AppColors.neutral900,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.right,
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
        vertical: AppSpacing.small,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppRadius.full),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: AppSpacing.xs),
          Text(
            status,
            style: AppTypography.labelMedium.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _LeaveError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _LeaveError({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: AppColors.error),
          const SizedBox(height: AppSpacing.large),
          Text(
            'Terjadi Kesalahan',
            style: AppTypography.heading3.copyWith(color: AppColors.error),
          ),
          const SizedBox(height: AppSpacing.small),
          Text(
            message,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.neutral600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.large),
          ElevatedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh),
            label: const Text('Coba Lagi'),
          ),
        ],
      ),
    );
  }
}

class _LeaveEmpty extends StatelessWidget {
  const _LeaveEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.event_busy, size: 80, color: AppColors.neutral400),
          const SizedBox(height: AppSpacing.large),
          Text(
            'Belum Ada Riwayat Cuti',
            style: AppTypography.heading3.copyWith(color: AppColors.neutral600),
          ),
          const SizedBox(height: AppSpacing.small),
          Text(
            'Anda belum pernah mengajukan cuti',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.neutral500,
            ),
          ),
        ],
      ),
    );
  }
}
