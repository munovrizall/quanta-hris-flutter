import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_detail_entity.dart';
import 'package:quanta_hris/src/features/payroll/presentation/bloc/payroll_bloc.dart';
import 'package:quanta_hris/src/features/payroll/presentation/bloc/payroll_event.dart';
import 'package:quanta_hris/src/features/payroll/presentation/bloc/payroll_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class PayrollDetailScreen extends StatelessWidget {
  final int tahun;
  final int bulan;
  final String periodeLabel;

  const PayrollDetailScreen({
    super.key,
    required this.tahun,
    required this.bulan,
    required this.periodeLabel,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<PayrollBloc>()
            ..add(PayrollEvent.fetchSlipGajiDetail(tahun: tahun, bulan: bulan)),
      child: _PayrollDetailView(
        periodeLabel: periodeLabel,
        tahun: tahun,
        bulan: bulan,
      ),
    );
  }
}

class _PayrollDetailView extends StatelessWidget {
  final String periodeLabel;
  final int tahun;
  final int bulan;

  const _PayrollDetailView({
    required this.periodeLabel,
    required this.tahun,
    required this.bulan,
  });

  @override
  Widget build(BuildContext context) {
    final title = periodeLabel.isNotEmpty
        ? 'Slip Gaji $periodeLabel'
        : 'Slip Gaji';
    return BlocListener<PayrollBloc, PayrollState>(
      listenWhen: (previous, current) =>
          previous.downloadSlipGajiError != current.downloadSlipGajiError ||
          previous.downloadSlipGajiPath != current.downloadSlipGajiPath,
      listener: (context, state) {
        if (state.downloadSlipGajiError != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.downloadSlipGajiError!),
              backgroundColor: AppColors.error,
            ),
          );
        } else if (state.downloadSlipGajiPath != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Slip gaji tersimpan di: ${state.downloadSlipGajiPath}',
              ),
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.large),
            child: BlocBuilder<PayrollBloc, PayrollState>(
              builder: (context, state) {
                if (state.isLoadingSlipGajiDetail) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.slipGajiDetailError != null) {
                  return _PayrollDetailError(
                    message: state.slipGajiDetailError!,
                    onRetry: () => context.read<PayrollBloc>().add(
                      PayrollEvent.fetchSlipGajiDetail(
                        tahun: tahun,
                        bulan: bulan,
                      ),
                    ),
                  );
                }

                final detail = state.slipGajiDetail;
                if (detail == null) {
                  return const _PayrollDetailEmpty();
                }

                return _PayrollDetailContent(
                  detail: detail,
                  periodeLabel: periodeLabel,
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          minimum: const EdgeInsets.all(AppSpacing.large),
          child: BlocBuilder<PayrollBloc, PayrollState>(
            builder: (context, state) {
              return PrimaryButton(
                text: 'Unduh PDF',
                isLoading: state.isDownloadingSlipGaji,
                onPressed: state.isDownloadingSlipGaji
                    ? null
                    : () => context.read<PayrollBloc>().add(
                        PayrollEvent.downloadSlipGaji(
                          tahun: tahun,
                          bulan: bulan,
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _PayrollDetailContent extends StatelessWidget {
  _PayrollDetailContent({required this.detail, required this.periodeLabel});

  final SlipGajiDetailEntity detail;
  final String periodeLabel;
  final NumberFormat _currencyFormatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp',
    decimalDigits: 0,
  );

  String _currency(num value) => _currencyFormatter.format(value);

  @override
  Widget build(BuildContext context) {
    final displayPeriode = detail.periodeLabel.isNotEmpty
        ? detail.periodeLabel
        : periodeLabel;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSpacing.large),
          _SummaryCard(
            detail: detail,
            periodeLabel: displayPeriode,
            currencyFormatter: _currency,
          ),
          _SectionCard(
            title: 'Pendapatan',
            subtitle: 'Gabungan seluruh komponen penerimaan.',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _InfoRow(
                  label: 'Gaji Pokok',
                  value: _currency(detail.gajiPokok),
                ),
                _InfoRow(
                  label: 'Total Tunjangan',
                  value: _currency(detail.tunjanganBreakdown.total),
                ),
                const SizedBox(height: AppSpacing.small),
                ...detail.tunjanganBreakdown.breakdown.map(
                  (item) => _BreakdownTile(
                    title: item.label,
                    subtitle: item.description,
                    trailing: _currency(item.amount),
                  ),
                ),
                const Divider(height: AppSpacing.xl),
                _InfoRow(
                  label: 'Lembur Dibayarkan',
                  value: _currency(detail.lemburPay),
                ),
                _InfoRow(
                  label: 'Penyesuaian',
                  value: _currency(detail.penyesuaian),
                ),
                _InfoRow(
                  label: 'Catatan Penyesuaian',
                  value: detail.catatanPenyesuaian ?? '-',
                ),
                const Divider(height: AppSpacing.xl),
                _InfoRow(
                  label: 'Penghasilan Bruto',
                  value: _currency(detail.penghasilanBruto),
                ),
              ],
            ),
          ),
          _SectionCard(
            title: 'Potongan',
            subtitle: 'Potongan berkala dan penalti absensi.',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _InfoRow(
                  label: 'Potongan Alfa',
                  value:
                      '${_currency(detail.potonganDetail.alfa.totalPotongan)} (${_currency(detail.potonganDetail.alfa.potonganPerHari)}/hari)',
                ),
                _InfoRow(
                  label: 'Potongan Keterlambatan',
                  value:
                      '${_currency(detail.potonganDetail.keterlambatan.totalPotongan)} (${_currency(detail.potonganDetail.keterlambatan.potonganPerHari)}/hari)',
                ),
                _InfoRow(
                  label: 'Potongan BPJS',
                  value: _currency(detail.potonganDetail.bpjs),
                ),
                _InfoRow(
                  label: 'Potongan PPh21',
                  value: _currency(detail.potonganDetail.pph21),
                ),
                const SizedBox(height: AppSpacing.medium),
                Text(
                  'Rincian BPJS',
                  style: AppTypography.labelLarge.copyWith(
                    color: AppColors.neutral700,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                ...detail.bpjsBreakdown.breakdown.map(
                  (item) => _BreakdownTile(
                    title: item.label,
                    subtitle: item.description,
                    trailing: _currency(item.amount),
                  ),
                ),
                const Divider(),
                _InfoRow(
                  label: 'Total Potongan',
                  value: _currency(detail.potonganTotal),
                ),
              ],
            ),
          ),
          _SectionCard(
            title: 'Kehadiran',
            subtitle: 'Gambaran singkat aktivitas absensi.',
            child: LayoutBuilder(
              builder: (context, constraints) {
                final metricWidth =
                    ((constraints.maxWidth - AppSpacing.medium) / 2).clamp(
                      140.0,
                      double.infinity,
                    );

                final metrics = [
                  ('Hadir', detail.totalHadir.toString()),
                  ('Alfa', detail.totalAlfa.toString()),
                  ('Tidak Tepat', detail.totalTidakTepat.toString()),
                  ('Cuti', detail.totalCuti.toString()),
                  ('Izin', detail.totalIzin.toString()),
                  ('Lembur (Jam)', detail.totalLembur.toString()),
                  ('Sesi Lembur', detail.totalLemburSessions.toString()),
                ];

                return Wrap(
                  spacing: AppSpacing.medium,
                  runSpacing: AppSpacing.medium,
                  children: metrics
                      .map(
                        (metric) => _MetricTile(
                          label: metric.$1,
                          value: metric.$2,
                          width: metricWidth,
                        ),
                      )
                      .toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final SlipGajiDetailEntity detail;
  final String periodeLabel;
  final String Function(num value) currencyFormatter;

  const _SummaryCard({
    required this.detail,
    required this.periodeLabel,
    required this.currencyFormatter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: AppSpacing.large),
      padding: const EdgeInsets.all(AppSpacing.large),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary300, AppColors.primary400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppRadius.xl),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary300.withOpacity(0.25),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            periodeLabel,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.white.withOpacity(0.85),
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            currencyFormatter(detail.totalGaji),
            style: AppTypography.heading1.copyWith(
              color: AppColors.white,
              fontSize: 32,
            ),
          ),
          const SizedBox(height: AppSpacing.small),
          Text(
            detail.namaLengkap,
            style: AppTypography.heading3.copyWith(color: AppColors.white),
          ),
          Text(
            '${detail.jabatan} • ${detail.departemen}',
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.white.withOpacity(0.85),
            ),
          ),
          const SizedBox(height: AppSpacing.medium),
          Wrap(
            spacing: AppSpacing.large,
            runSpacing: AppSpacing.small,
            children: [
              _HighlightValue(
                label: 'Penghasilan',
                value: currencyFormatter(detail.penghasilanBruto),
              ),
              _HighlightValue(
                label: 'Potongan',
                value: currencyFormatter(detail.potonganTotal),
              ),
              _HighlightValue(
                label: 'Gaji Bersih',
                value: currencyFormatter(detail.totalGaji),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HighlightValue extends StatelessWidget {
  final String label;
  final String value;

  const _HighlightValue({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.bodySmall.copyWith(
            color: AppColors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          value,
          style: AppTypography.heading3.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget child;

  const _SectionCard({required this.title, this.subtitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      margin: const EdgeInsets.only(bottom: AppSpacing.large),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTypography.heading3),
            if (subtitle != null) ...[
              const SizedBox(height: AppSpacing.xs),
              Text(
                subtitle!,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.neutral600,
                ),
              ),
            ],
            const SizedBox(height: AppSpacing.medium),
            child,
          ],
        ),
      ),
    );
  }
}

class _TotalTakeHomeCard extends StatelessWidget {
  final String totalGaji;
  final String subtitle;

  const _TotalTakeHomeCard({required this.totalGaji, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.neutral100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Gaji Bersih',
              style: AppTypography.labelLarge.copyWith(
                color: AppColors.neutral700,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              totalGaji,
              style: AppTypography.heading2.copyWith(
                color: AppColors.neutral900,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              subtitle,
              style: AppTypography.bodySmall.copyWith(
                color: AppColors.neutral600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: AppTypography.labelLarge.copyWith(
                color: AppColors.neutral600,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              value,
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.neutral900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MetricTile extends StatelessWidget {
  final String label;
  final String value;
  final double width;

  const _MetricTile({
    required this.label,
    required this.value,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.medium),
        decoration: BoxDecoration(
          color: AppColors.neutral100,
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: AppTypography.labelLarge),
            const SizedBox(height: AppSpacing.xs),
            Text(
              value,
              style: AppTypography.heading3.copyWith(
                color: AppColors.neutral900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BreakdownTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailing;

  const _BreakdownTile({
    required this.title,
    required this.subtitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.small),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTypography.bodyMedium),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  subtitle,
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.neutral600,
                  ),
                ),
              ],
            ),
          ),
          Text(
            trailing,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.neutral900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _PayrollDetailError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _PayrollDetailError({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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

class _PayrollDetailEmpty extends StatelessWidget {
  const _PayrollDetailEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Detail slip gaji tidak tersedia.',
        style: AppTypography.bodyMedium.copyWith(color: AppColors.neutral600),
      ),
    );
  }
}
