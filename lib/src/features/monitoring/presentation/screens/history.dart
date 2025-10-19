import 'package:flutter/material.dart';

import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

class History extends StatelessWidget {
  const History({super.key});

  static const List<_HistoryItemData> _historyItems = [
    _HistoryItemData(
      status: _HistoryStatus.success,
      statusLabel: 'Berhasil',
      actionCode: 'ON_18_FH_SA',
      channel: 'E - Remote',
      userName: 'John Doe',
      timeLabel: '12:00 Hari ini',
    ),
    _HistoryItemData(
      status: _HistoryStatus.success,
      statusLabel: 'Berhasil',
      actionCode: 'OFF',
      channel: 'E - Remote',
      userName: 'John Doe',
      timeLabel: '10:00 Hari ini',
    ),
    _HistoryItemData(
      status: _HistoryStatus.failed,
      statusLabel: 'Gagal',
      actionCode: 'OFF',
      channel: 'E - Remote',
      userName: 'John Doe',
      timeLabel: '09:59 Hari ini',
    ),
    _HistoryItemData(
      status: _HistoryStatus.success,
      statusLabel: 'Berhasil',
      actionCode: 'ON_26_DRY',
      channel: 'E - Remote',
      userName: 'John Doe',
      timeLabel: 'Kemarin',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const _HistoryFilterBar(),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 12),
                  itemCount: _historyItems.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final item = _historyItems[index];
                    return _HistoryCard(item: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MonitoringTabItem extends StatelessWidget {
  const _MonitoringTabItem({required this.label, required this.isActive});

  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppTypography.heading3.copyWith(
      color: isActive ? AppColors.primary300 : AppColors.textPrimary,
      fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: textStyle),
        const SizedBox(height: 6),
        Container(
          height: 3,
          width: 32,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary300 : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
  }
}

class _HistoryFilterBar extends StatelessWidget {
  const _HistoryFilterBar();

  @override
  Widget build(BuildContext context) {
    final TextStyle inactiveStyle = AppTypography.subtitleLarge.copyWith(
      color: AppColors.textSecondary,
      fontWeight: FontWeight.w500,
    );
    final TextStyle activeStyle = AppTypography.subtitleLarge.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    );

    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.primary300,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary300.withOpacity(0.25),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text('Remote', style: activeStyle),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.neutral200),
            ),
            alignment: Alignment.center,
            child: Text('Kondisi', style: inactiveStyle),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.neutral200),
            ),
            alignment: Alignment.center,
            child: Text('Kunjungan', style: inactiveStyle),
          ),
        ),
      ],
    );
  }
}

class _HistoryCard extends StatelessWidget {
  const _HistoryCard({required this.item});

  final _HistoryItemData item;

  Color _statusColor(_HistoryStatus status) {
    switch (status) {
      case _HistoryStatus.success:
        return AppColors.success;
      case _HistoryStatus.failed:
        return AppColors.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color statusColor = _statusColor(item.status);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.neutral200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 6,
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          item.statusLabel,
                          style: AppTypography.subtitleMedium.copyWith(
                            color: statusColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        item.timeLabel,
                        style: AppTypography.caption.copyWith(
                          color: AppColors.textSecondary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item.actionCode,
                    style: AppTypography.heading2.copyWith(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Divider(height: 1, color: AppColors.neutral200),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.channel,
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                      Text(
                        item.userName,
                        style: AppTypography.subtitleMedium.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HistoryItemData {
  const _HistoryItemData({
    required this.status,
    required this.statusLabel,
    required this.actionCode,
    required this.channel,
    required this.userName,
    required this.timeLabel,
  });

  final _HistoryStatus status;
  final String statusLabel;
  final String actionCode;
  final String channel;
  final String userName;
  final String timeLabel;
}

enum _HistoryStatus { success, failed }
