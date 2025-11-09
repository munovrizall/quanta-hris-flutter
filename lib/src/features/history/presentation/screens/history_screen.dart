import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/history/domain/entities/attendance_history_entity.dart';
import 'package:quanta_hris/src/features/history/presentation/bloc/history_bloc.dart';
import 'package:quanta_hris/src/features/history/presentation/bloc/history_event.dart';
import 'package:quanta_hris/src/features/history/presentation/bloc/history_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/main_bottom_navbar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HistoryBloc>(
      create: (_) =>
          getIt<HistoryBloc>()
            ..add(const HistoryEvent.fetchAttendanceHistory()),
      child: const _HistoryView(),
    );
  }
}

class _HistoryView extends StatelessWidget {
  const _HistoryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Absensi')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: BlocBuilder<HistoryBloc, HistoryState>(
            builder: (context, state) {
              if (state.isLoadingAttendanceHistory) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.attendanceHistoryError != null) {
                return _HistoryError(
                  message: state.attendanceHistoryError!,
                  onRetry: () => context.read<HistoryBloc>().add(
                    const HistoryEvent.fetchAttendanceHistory(),
                  ),
                );
              }

              final attendanceHistory = state.attendanceHistory;
              if (attendanceHistory == null ||
                  attendanceHistory.attendanceHistory.isEmpty) {
                return const _HistoryEmpty();
              }

              return _HistoryContent(
                attendanceHistory: attendanceHistory.attendanceHistory,
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: MainBottomNavBar(
        currentIndex: 1,
        onTap: (index) => _handleNavigationTap(context, index),
      ),
    );
  }

  void _handleNavigationTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        break;
      case 2:
        context.go('/payroll');
        break;
      case 3:
        context.go('/profile');
        break;
    }
  }
}

class _HistoryContent extends StatelessWidget {
  final List<AttendanceHistoryEntity> attendanceHistory;

  const _HistoryContent({required this.attendanceHistory});

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('EEEE, d MMMM yyyy', 'id_ID').format(date);
    } catch (_) {
      return dateString;
    }
  }

  String _formatTime(String? timeString) {
    if (timeString == null) return '-';
    try {
      // Time is in format HH:mm:ss, we just need HH:mm
      final parts = timeString.split(':');
      if (parts.length >= 2) {
        return '${parts[0]}:${parts[1]}';
      }
      return timeString;
    } catch (_) {
      return timeString;
    }
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'hadir':
        return AppColors.success;
      case 'tidak tepat':
        return AppColors.warning;
      case 'alfa':
        return AppColors.error;
      default:
        return AppColors.neutral600;
    }
  }

  Color _getDetailStatusColor(String? status) {
    if (status == null) return AppColors.neutral400;
    switch (status.toLowerCase()) {
      case 'tepat waktu':
        return AppColors.success;
      case 'telat':
        return AppColors.warning;
      case 'pulang cepat':
        return AppColors.warning;
      default:
        return AppColors.neutral600;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: attendanceHistory.length,
        itemBuilder: (context, index) {
          final attendance = attendanceHistory[index];
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
                  // Tanggal
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          _formatDate(attendance.tanggal),
                          style: AppTypography.heading3.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.small,
                          vertical: AppSpacing.xxs,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor(
                            attendance.statusAbsensi,
                          ).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(
                            AppRadius.small,
                          ),
                          border: Border.all(
                            color: _getStatusColor(
                              attendance.statusAbsensi,
                            ),
                          ),
                        ),
                        child: Text(
                          attendance.statusAbsensi,
                          style: AppTypography.labelSmall.copyWith(
                            color: _getStatusColor(
                              attendance.statusAbsensi,
                            ),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.medium),
    
                  // Clock In
                  _AttendanceTimeRow(
                    icon: Icons.login,
                    label: 'Masuk',
                    time: _formatTime(attendance.jamMasuk),
                    status: attendance.statusMasuk ?? '-',
                    statusColor: _getDetailStatusColor(
                      attendance.statusMasuk,
                    ),
                  ),
    
                  const SizedBox(height: AppSpacing.small),
                  const Divider(),
                  const SizedBox(height: AppSpacing.small),
    
                  // Clock Out
                  _AttendanceTimeRow(
                    icon: Icons.logout,
                    label: 'Pulang',
                    time: _formatTime(attendance.jamPulang),
                    status: attendance.statusPulang ?? '-',
                    statusColor: _getDetailStatusColor(
                      attendance.statusPulang,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _AttendanceTimeRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String time;
  final String status;
  final Color statusColor;

  const _AttendanceTimeRow({
    required this.icon,
    required this.label,
    required this.time,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(AppSpacing.small),
          decoration: BoxDecoration(
            color: statusColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppRadius.small),
          ),
          child: Icon(icon, color: statusColor, size: 20),
        ),
        const SizedBox(width: AppSpacing.medium),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: AppTypography.labelMedium.copyWith(
                  color: AppColors.neutral600,
                ),
              ),
              const SizedBox(height: AppSpacing.xxs),
              Row(
                children: [
                  Text(
                    time,
                    style: AppTypography.bodyLarge.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.neutral900,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.small),
                  Text(
                    '•',
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.neutral400,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.small),
                  Text(
                    status,
                    style: AppTypography.bodySmall.copyWith(
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _HistoryError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _HistoryError({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: AppColors.error),
          const SizedBox(height: AppSpacing.medium),
          Text(
            message,
            style: AppTypography.bodyMedium.copyWith(color: AppColors.error),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.medium),
          ElevatedButton(onPressed: onRetry, child: const Text('Coba Lagi')),
        ],
      ),
    );
  }
}

class _HistoryEmpty extends StatelessWidget {
  const _HistoryEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.history, size: 64, color: AppColors.neutral400),
          const SizedBox(height: AppSpacing.medium),
          Text(
            'Belum ada riwayat absensi.',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.neutral600,
            ),
          ),
        ],
      ),
    );
  }
}
