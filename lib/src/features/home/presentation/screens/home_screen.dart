import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_state.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_event.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/home_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// Import semua widget yang sudah dipisah
import '../widgets/ac_control_section.dart';
import '../widgets/energy_summary_card.dart';
import '../widgets/home_header.dart';

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

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final userFullName = context.select<SessionBloc, String?>(
      (bloc) =>
          bloc.state.mapOrNull(authenticated: (state) => state.user.fullName),
    );

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(loggedOut: (_) => context.go('/login'));
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Stack(
          children: [
            // LAPISAN 1: Latar Belakang Header (Gambar) - Fixed
            const HomeHeader(),

            // LAPISAN 2: Scrollable Content
            SingleChildScrollView(
              child: Column(
                children: [
                  // Spacer untuk memberi ruang bagi konten header
                  const SizedBox(height: 160),

                  // Container putih dengan semua konten
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 160,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSpacing.xl),
                        // Greeting Section
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.medium,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${AppStrings.home.titleWelcome} ${userFullName ?? 'Pengguna'}!',
                                style: AppTypography.heading2,
                              ),
                              const SizedBox(height: AppSpacing.xs),
                              Text(
                                AppStrings.home.bodyWelcome,
                                style: AppTypography.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xl),

                        // Energy Summary Card
                        const EnergySummaryCard(),

                        const SizedBox(height: AppSpacing.xl),

                        // AC Control Section
                        const AcControlSection(),

                        const SizedBox(height: AppSpacing.large),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const HomeBottomNavBar(),
      ),
    );
  }
}
