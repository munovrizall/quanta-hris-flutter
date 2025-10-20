import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/utils/date_formatter.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_state.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_event.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/absentee_card.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/menu_card.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/work_time_item.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/home_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => getIt<HomeBloc>()..add(const HomeEvent.fetchInitialData()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  bool isCheckedIn = false;

  @override
  Widget build(BuildContext context) {
    final userFullName = context.select<SessionBloc, String?>(
      (bloc) => bloc.state.mapOrNull(
        authenticated: (state) => state.user.namaLengkap,
      ),
    );

    final currentTime = DateFormatter.getCurrentTime();
    final currentDate = DateFormatter.getCurrentDateIndonesian();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(loggedOut: (_) => context.go('/login'));
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header dengan gradient
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.primary,
                        AppColors.primary.withOpacity(0.8),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.large),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sapaan
                        Text(
                          '${AppStrings.home.greetingPrefix}${userFullName ?? AppStrings.home.greetingDefaultUser}${AppStrings.home.greetingSuffix}',
                          style: AppTypography.heading2.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          AppStrings.home.greetingSubtitle,
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.white.withOpacity(0.9),
                          ),
                        ),
                        const SizedBox(height: AppSpacing.large),

                        // Card Jam dan Tanggal
                        Container(
                          padding: const EdgeInsets.all(AppSpacing.medium),
                          decoration: BoxDecoration(
                            color: AppColors.primary10,
                            borderRadius: BorderRadius.circular(
                              AppRadius.large,
                            ),
                            border: Border.all(
                              color: AppColors.white.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentTime,
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: AppSpacing.xs),
                                  Text(
                                    currentDate,
                                    style: AppTypography.bodySmall.copyWith(
                                      color: AppColors.white.withOpacity(0.9),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(AppSpacing.small),
                                decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(
                                    AppRadius.medium,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.access_time,
                                  color: AppColors.white,
                                  size: AppSizes.iconXL,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AppSpacing.medium),

                        // Jam Kerja
                        Container(
                          padding: const EdgeInsets.all(AppSpacing.medium),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(
                              AppRadius.large,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              WorkTimeItem(
                                icon: Icons.login,
                                label: AppStrings.home.workTimeInLabel,
                                time: AppStrings.home.defaultInTime,
                                color: AppColors.success,
                              ),
                              Container(
                                width: 1,
                                height: AppSizes.buttonMedium,
                                color: AppColors.border,
                              ),
                              WorkTimeItem(
                                icon: Icons.logout,
                                label: AppStrings.home.workTimeOutLabel,
                                time: AppStrings.home.defaultOutTime,
                                color: AppColors.warning,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: AppSpacing.large),

                // Button Absen Utama
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.large,
                  ),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(AppRadius.xl),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isCheckedIn = !isCheckedIn;
                        });
                        // TODO: Implement attendance logic
                      },
                      borderRadius: BorderRadius.circular(AppRadius.xl),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.large,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: isCheckedIn
                                ? [AppColors.warning, AppColors.warningLight]
                                : [AppColors.primary, AppColors.primary200],
                          ),
                          borderRadius: BorderRadius.circular(AppRadius.xl),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              isCheckedIn ? Icons.logout : Icons.fingerprint,
                              size: AppSizes.iconHuge,
                              color: AppColors.white,
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              isCheckedIn
                                  ? AppStrings.home.checkOutButtonText
                                  : AppStrings.home.checkInButtonText,
                              style: AppTypography.buttonLarge.copyWith(
                                letterSpacing: 1.2,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              isCheckedIn
                                  ? AppStrings.home.checkOutSubtitle
                                  : AppStrings.home.checkInSubtitle,
                              style: AppTypography.bodySmall.copyWith(
                                color: AppColors.white.withOpacity(0.9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: AppSpacing.xl),

                // Menu Administrasi
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.large,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.home.adminMenuTitle,
                        style: AppTypography.heading3.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.medium),
                      Row(
                        children: [
                          Expanded(
                            child: MenuCard(
                              icon: Icons.event_available,
                              label: AppStrings.home.leaveRequestLabel,
                              color: AppColors.primary,
                              onTap: () {
                                // TODO: Navigate to leave request
                              },
                            ),
                          ),
                          const SizedBox(width: AppSpacing.medium),
                          Expanded(
                            child: MenuCard(
                              icon: Icons.access_time_filled,
                              label: AppStrings.home.overtimeRequestLabel,
                              color: AppColors.secondary,
                              onTap: () {
                                // TODO: Navigate to overtime request
                              },
                            ),
                          ),
                          const SizedBox(width: AppSpacing.medium),
                          Expanded(
                            child: MenuCard(
                              icon: Icons.assignment,
                              label: AppStrings.home.permissionRequestLabel,
                              color: AppColors.warning,
                              onTap: () {
                                // TODO: Navigate to permission request
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.xl),

                // Karyawan Cuti/Izin Hari Ini
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.large,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.home.absentTodayTitle,
                            style: AppTypography.heading3.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // TODO: Navigate to full list
                            },
                            child: Text(
                              AppStrings.home.viewAllText,
                              style: AppTypography.buttonSmall,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.medium),
                      AbsenteeCard(
                        name: 'Ahmad Fauzi',
                        type: 'Cuti Tahunan',
                        date: '20 - 22 Okt 2025',
                        color: AppColors.primary,
                      ),
                      const SizedBox(height: AppSpacing.small),
                      AbsenteeCard(
                        name: 'Siti Nurhaliza',
                        type: 'Izin Sakit',
                        date: '20 Okt 2025',
                        color: AppColors.error,
                      ),
                      const SizedBox(height: AppSpacing.small),
                      AbsenteeCard(
                        name: 'Budi Santoso',
                        type: 'Cuti Penting',
                        date: '20 Okt 2025',
                        color: AppColors.warning,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.xl),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const HomeBottomNavBar(),
      ),
    );
  }
}
