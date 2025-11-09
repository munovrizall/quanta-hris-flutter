import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/payroll/domain/entities/slip_gaji_entity.dart';
import 'package:quanta_hris/src/features/payroll/presentation/bloc/payroll_bloc.dart';
import 'package:quanta_hris/src/features/payroll/presentation/bloc/payroll_event.dart';
import 'package:quanta_hris/src/features/payroll/presentation/bloc/payroll_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/main_bottom_navbar.dart';

class PayrollScreen extends StatelessWidget {
  const PayrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PayrollBloc>(
      create: (_) =>
          getIt<PayrollBloc>()..add(const PayrollEvent.fetchSlipGaji()),
      child: const _PayrollView(),
    );
  }
}

class _PayrollView extends StatelessWidget {
  const _PayrollView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slip Gaji')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: BlocBuilder<PayrollBloc, PayrollState>(
            builder: (context, state) {
              if (state.isLoadingSlipGaji) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.slipGajiError != null) {
                return _PayrollError(
                  message: state.slipGajiError!,
                  onRetry: () => context.read<PayrollBloc>().add(
                    const PayrollEvent.fetchSlipGaji(),
                  ),
                );
              }

              final slipGaji = state.slipGaji;
              if (slipGaji == null) {
                return const _PayrollEmpty();
              }

              return _PayrollContent(slipGaji: slipGaji);
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
        // Already on payroll screen.
        break;
      case 2:
        context.go('/profile');
        break;
    }
  }
}

class _PayrollContent extends StatelessWidget {
  final List<SlipGajiEntity> slipGaji;

  const _PayrollContent({required this.slipGaji});

  String _formatCurrency(int value) {
    final formatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    );
    return formatter.format(value);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: slipGaji.length,
        itemBuilder: (context, index) {
          final slip = slipGaji[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.large),
            ),
            elevation: 2,
            margin: const EdgeInsets.only(bottom: AppSpacing.medium),
            child: InkWell(
              borderRadius: BorderRadius.circular(AppRadius.large),
              onTap: () => _openSlipDetail(context, slip),
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            slip.periodeLabel,
                            style: AppTypography.heading3,
                          ),
                        ),
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.small),
                    _PayrollDetailRow(
                      label: 'Gaji Bersih',
                      value: _formatCurrency(slip.gajiBersih),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _openSlipDetail(BuildContext context, SlipGajiEntity slip) {
    context.pushNamed(
      'payroll-detail',
      pathParameters: {
        'year': slip.periodeTahun.toString(),
        'month': slip.periodeBulan.toString(),
      },
      extra: slip.periodeLabel,
    );
  }
}

class _PayrollDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _PayrollDetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _PayrollError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _PayrollError({required this.message, required this.onRetry});

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

class _PayrollEmpty extends StatelessWidget {
  const _PayrollEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Belum ada data slip gaji.',
        style: AppTypography.bodyMedium.copyWith(color: AppColors.neutral600),
      ),
    );
  }
}
