import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/core/utils/date_formatter.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_state.dart';
import 'package:quanta_hris/src/features/home/domain/entities/attendance_status_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/operational_hour_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/today_leaves_entity.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_event.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/absentee_card.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/menu_card.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/work_time_item.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/main_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  final bool shouldRefreshAttendanceStatus;

  const HomeScreen({super.key, this.shouldRefreshAttendanceStatus = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => getIt<HomeBloc>()..add(const HomeEvent.fetchInitialData()),
      child: _HomeView(
        shouldRefreshAttendanceStatus: shouldRefreshAttendanceStatus,
      ),
    );
  }
}

class _HomeView extends StatefulWidget {
  final bool shouldRefreshAttendanceStatus;

  const _HomeView({required this.shouldRefreshAttendanceStatus});

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  final SessionStorageRepository _sessionStorageRepository =
      getIt<SessionStorageRepository>();
  bool _hasFaceEmbedding = false;
  Timer? _clockTimer;
  String _currentTime = '';
  String _currentDate = '';

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('id');
    _loadSessionUser();
    _updateTime();
    _startClockTimer();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (widget.shouldRefreshAttendanceStatus) {
        context.read<HomeBloc>().add(
          const HomeEvent.fetchAttendanceStatusData(),
        );
      }
    });
  }

  @override
  void didUpdateWidget(covariant _HomeView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.shouldRefreshAttendanceStatus &&
        widget.shouldRefreshAttendanceStatus !=
            oldWidget.shouldRefreshAttendanceStatus) {
      context.read<HomeBloc>().add(const HomeEvent.fetchAttendanceStatusData());
    }
  }

  @override
  void dispose() {
    _clockTimer?.cancel();
    super.dispose();
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateFormatter.getCurrentTime();
      _currentDate = DateFormatter.getCurrentDateIndonesian();
    });
  }

  void _startClockTimer() {
    // Update setiap detik
    _clockTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      _updateTime();
    });
  }

  Future<void> _loadSessionUser() async {
    try {
      final user = await _sessionStorageRepository.getUser();

      if (!mounted) return;

      final isValid = _isValidFaceEmbedding(user?.faceEmbedding);

      setState(() {
        _hasFaceEmbedding = isValid;
      });
    } catch (e) {
      AppLogger.e('❌ Error loading session user', error: e);
      if (!mounted) return;
      setState(() {
        _hasFaceEmbedding = false;
      });
    }
  }

  bool _isValidFaceEmbedding(String? faceEmbedding) {
    if (faceEmbedding == null) return false;
    final trimmed = faceEmbedding.trim();
    if (trimmed.isEmpty) return false;
    if (trimmed.toLowerCase() == 'null') return false;
    return true;
  }

  Future<void> _handleMainButtonTap(BuildContext context) async {

    // Jika belum punya face embedding, ke register face
    if (!_hasFaceEmbedding) {
      await context.push('/register-face');
      await _loadSessionUser();
      return;
    }

    // Jika sudah punya face embedding, ke attendance maps screen dulu
    // Tentukan apakah clock in atau clock out berdasarkan attendance status state
    final attendanceStatus = context.read<HomeBloc>().state.attendanceStatus;
    final isClockedIn = attendanceStatus?.isClockedIn ?? false;
    final isClockedOut = attendanceStatus?.isClockedOut ?? false;

    if (isClockedIn && isClockedOut) {
      if (!mounted) return;
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text('Anda telah menyelesaikan absensi hari ini.'),
          ),
        );
      return;
    }

    if (isClockedIn) {
      // Sudah clock in, maka sekarang clock out
      await context.push('/attendance-maps?type=clockOut');
    } else {
      // Belum clock in, maka sekarang clock in
      await context.push('/attendance-maps?type=clockIn');
    }

    // Refetch attendance status after returning from attendance screen
    if (!mounted) return;
    context.read<HomeBloc>().add(const HomeEvent.fetchAttendanceStatusData());
    await _loadSessionUser();
  }

  String formatDateRange(String start, String end) {
    final startDate = DateTime.parse(start);
    final endDate = DateTime.parse(end);

    if (startDate.isAtSameMomentAs(endDate)) {
      return DateFormat('d MMM yyyy', 'id').format(startDate);
    } else {
      return '${DateFormat('d', 'id').format(startDate)} - ${DateFormat('d MMM yyyy', 'id').format(endDate)}';
    }
  }

  Color getColorForType(String tipe) {
    if (tipe == 'Cuti') return AppColors.warning;
    if (tipe == 'Izin') return AppColors.error;
    return AppColors.warning;
  }

  @override
  Widget build(BuildContext context) {
    final userFullName = context.select<SessionBloc, String?>(
      (bloc) => bloc.state.mapOrNull(
        authenticated: (state) => state.user.namaLengkap,
      ),
    );

    final operationalHourData = context
        .select<HomeBloc, OperationalHourEntity?>(
          (bloc) => bloc.state.operationalHourData,
        );

    final todayLeavesData = context.select<HomeBloc, TodayLeavesEntity?>(
      (bloc) => bloc.state.todayLeavesData,
    );

    final isLoadingTodayLeaves = context.select<HomeBloc, bool>(
      (bloc) => bloc.state.isLoadingTodayLeaves,
    );

    // Get attendance status from HomeBloc
    final attendanceStatus = context.select<HomeBloc, AttendanceStatusEntity?>(
      (bloc) => bloc.state.attendanceStatus,
    );

    final isClockedIn = attendanceStatus?.isClockedIn ?? false;
    final isClockedOut = attendanceStatus?.isClockedOut ?? false;
    final hasCompletedAttendance = isClockedIn && isClockedOut;

    // Get loading states
    final isLoadingAttendanceStatus = context.select<HomeBloc, bool>(
      (bloc) => bloc.state.isLoadingAttendanceStatus,
    );

    // Check if session is still loading (initial state)
    final isSessionLoading = context.select<SessionBloc, bool>(
      (bloc) => bloc.state.maybeWhen(initial: () => true, orElse: () => false),
    );

    // Button should be disabled if loading attendance status or session
    final isButtonLoading = isLoadingAttendanceStatus || isSessionLoading;

    // Extract working hours from API data or use defaults if not available
    final startTime = operationalHourData?.workingHours.startTime ?? '--';
    final endTime = operationalHourData?.workingHours.endTime ?? '--';

    // Format time to HH:mm (remove seconds if present)
    final formattedStartTime = startTime != '--'
        ? startTime.split(':').take(2).join(':')
        : '--';
    final formattedEndTime = endTime != '--'
        ? endTime.split(':').take(2).join(':')
        : '--';

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (errorState) {
            final messenger = ScaffoldMessenger.of(context);
            messenger
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(errorState.message),
                  backgroundColor: AppColors.error,
                ),
              );
          },
          loggedOut: (_) {
            context.go('/login');
          },
        );
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
                                    _currentTime,
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: AppSpacing.xs),
                                  Text(
                                    _currentDate,
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
                                time: formattedStartTime,
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
                                time: formattedEndTime,
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
                  child: Builder(
                    builder: (context) {
                      // Tentukan apakah button enabled
                      // Prioritas: Jika belum punya face embedding, SELALU enabled untuk register
                      // Jika sudah punya face embedding, cek hasCompletedAttendance dan isButtonLoading
                      final isButtonEnabled =
                          !_hasFaceEmbedding ||
                          (!hasCompletedAttendance && !isButtonLoading);

                      return Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(AppRadius.xl),
                        child: InkWell(
                          onTap: !isButtonEnabled
                              ? null
                              : () async {
                                  await _handleMainButtonTap(context);
                                },
                          borderRadius: BorderRadius.circular(AppRadius.xl),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.large,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: isButtonLoading
                                    ? [
                                        AppColors.neutral400,
                                        AppColors.neutral300,
                                      ]
                                    : !_hasFaceEmbedding
                                    ? [AppColors.primary, AppColors.primary200]
                                    : hasCompletedAttendance
                                    ? [
                                        AppColors.success,
                                        AppColors.successLight,
                                      ]
                                    : isClockedIn
                                    ? [
                                        AppColors.warning,
                                        AppColors.warningLight,
                                      ]
                                    : [AppColors.primary, AppColors.primary200],
                              ),
                              borderRadius: BorderRadius.circular(AppRadius.xl),
                            ),
                            child: Column(
                              children: [
                                if (isButtonLoading)
                                  const SizedBox(
                                    width: AppSizes.iconHuge,
                                    height: AppSizes.iconHuge,
                                    child: CircularProgressIndicator(
                                      color: AppColors.white,
                                      strokeWidth: 3,
                                    ),
                                  )
                                else
                                  Icon(
                                    !_hasFaceEmbedding
                                        ? Icons.person_add_alt_1
                                        : hasCompletedAttendance
                                        ? Icons.bedtime
                                        : isClockedIn
                                        ? Icons.logout
                                        : Icons.fingerprint,
                                    size: AppSizes.iconHuge,
                                    color: AppColors.white,
                                  ),
                                const SizedBox(height: AppSpacing.xs),
                                Text(
                                  isButtonLoading
                                      ? 'Memuat...'
                                      : !_hasFaceEmbedding
                                      ? AppStrings.home.registerFaceButtonText
                                      : hasCompletedAttendance
                                      ? 'Selamat beristirahat'
                                      : isClockedIn
                                      ? AppStrings.home.checkOutButtonText
                                      : AppStrings.home.checkInButtonText,
                                  style: AppTypography.buttonLarge.copyWith(
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.xs),
                                Text(
                                  isButtonLoading
                                      ? 'Mohon tunggu sebentar...'
                                      : !_hasFaceEmbedding
                                      ? AppStrings.home.registerFaceSubtitle
                                      : hasCompletedAttendance
                                      ? 'Anda telah menyelesaikan absensi hari ini'
                                      : isClockedIn
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
                      );
                    },
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
                              icon: Icons.access_time_filled,
                              label: AppStrings.home.overtimeRequestLabel,
                              color: AppColors.green200,
                              onTap: () {
                                context.push('/overtime');
                              },
                            ),
                          ),
                          const SizedBox(width: AppSpacing.medium),
                          Expanded(
                            child: MenuCard(
                              icon: Icons.event_available,
                              label: AppStrings.home.leaveRequestLabel,
                              color: AppColors.warning,
                              onTap: () {
                                context.push('/leave');
                              },
                            ),
                          ),
                          const SizedBox(width: AppSpacing.medium),
                          Expanded(
                            child: MenuCard(
                              icon: Icons.assignment,
                              label: AppStrings.home.permissionRequestLabel,
                              color: AppColors.secondary,
                              onTap: () {
                                context.push('/permission');
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
                      if (isLoadingTodayLeaves)
                        const Center(child: CircularProgressIndicator())
                      else if (todayLeavesData != null &&
                          todayLeavesData.leavesData.isNotEmpty)
                        ...todayLeavesData.leavesData.map(
                          (item) => Padding(
                            padding: const EdgeInsets.only(
                              bottom: AppSpacing.small,
                            ),
                            child: AbsenteeCard(
                              name: item.nama,
                              type: item.jenis,
                              date: formatDateRange(
                                item.tanggalMulai,
                                item.tanggalSelesai,
                              ),
                              color: getColorForType(item.tipe),
                            ),
                          ),
                        )
                      else
                        const Center(
                          child: Text('Tidak ada data cuti/izin hari ini'),
                        ),
                    ],
                  ),
                ),

                const SizedBox(height: AppSpacing.xl),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MainBottomNavBar(
          currentIndex: 0,
          onTap: (index) => _onBottomNavTapped(context, index),
        ),
      ),
    );
  }

  void _onBottomNavTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        // Already on home screen
        break;
      case 1:
        context.go('/history');
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
