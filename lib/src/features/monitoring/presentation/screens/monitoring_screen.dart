import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/features/monitoring/presentation/screens/history.dart';
import 'package:quanta_hris/src/features/monitoring/presentation/screens/status_ac.dart';
import 'package:quanta_hris/src/features/monitoring/presentation/widgets/remote_tab.dart'; // Tambahkan import ini
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui' as ui show lerpDouble;

// Tambahkan import untuk bloc jika diperlukan, misalnya:
// import 'package:quanta_hris/src/features/monitoring/presentation/bloc/monitoring_bloc.dart';
// import 'package:quanta_hris/src/features/monitoring/presentation/bloc/monitoring_event.dart';
// import 'package:quanta_hris/src/core/di/injector.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class MonitoringScreen extends StatelessWidget {
  const MonitoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
    final acId = extra?['acId'] as int?;
    final deviceId = extra?['deviceId'] as int?;

    // Asumsikan ada MonitoringBloc, jika tidak ada, hapus BlocProvider ini
    // return BlocProvider<MonitoringBloc>(
    //   create: (_) => getIt<MonitoringBloc>()..add(const MonitoringEvent.fetchInitialData()),
    //   child: const _MonitoringView(),
    // );
    // Untuk sekarang, langsung return _MonitoringView jika tidak ada bloc
    return _MonitoringView(acId: acId, deviceId: deviceId);
  }
}

class _MonitoringView extends StatefulWidget {
  final int? acId;
  final int? deviceId;

  const _MonitoringView({this.acId, this.deviceId});

  @override
  State<_MonitoringView> createState() => _MonitoringViewState();
}

class _MonitoringViewState extends State<_MonitoringView>
    with SingleTickerProviderStateMixin {
  static const monitoringStrings = AppStrings.monitoring;
  bool _isSwitched = true;
  double _sliderValue = 22.0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  double get _t {
    final anim = _tabController.animation;
    return anim?.value ?? _tabController.index.toDouble();
  }

  // Parallax offset gambar: 0->1->2 : -80 -> 0 -> +80
  double _imageOffsetX(double t) {
    if (t <= 1.0) {
      return ui.lerpDouble(80.0, 0.0, t)!; // 0..1
    } else {
      return ui.lerpDouble(0.0, -80.0, t - 1.0)!; // 1..2
    }
  }

  // Opacity teks kiri: penuh di tab 0, hilang di tab lain (fade saat swipe)
  double _leftTextOpacity(double t) {
    // 1.0 di t=0, turun linier sampai 0.0 di t>=1
    final v = 1.0 - t.clamp(0.0, 1.0);
    // sedikit kurva biar halus
    return Curves.easeInOut.transform(v);
  }

  // (opsional) sedikit scale biar gambar hidup dikit
  double _imageScale(double t) {
    final distFromNearest = (t - t.roundToDouble()).abs();
    return ui.lerpDouble(
      0.98,
      1.0,
      1.0 - (distFromNearest * 2).clamp(0.0, 1.0),
    )!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          monitoringStrings.title,
          style: AppTypography.heading2.copyWith(color: AppColors.white),
        ),
        backgroundColor: AppColors.primary,
        leading: const BackButton(color: AppColors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: AppColors.white),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        color: AppColors.primary,
        child: Column(
          children: [
            // ======== HEADER DENGAN ANIMASI HALUS =========
            AnimatedBuilder(
              animation: _tabController.animation ?? _tabController,
              builder: (context, _) {
                final t = _t;
                final imgOffset = _imageOffsetX(t);
                final txtOpacity = _leftTextOpacity(t);
                final scale = _imageScale(t);

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Kolom teks kiri — fade & ignore tap saat hilang
                      Expanded(
                        child: IgnorePointer(
                          ignoring: txtOpacity < 0.05,
                          child: AnimatedOpacity(
                            // AnimatedOpacity untuk smooth ketika lompat tab
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeOut,
                            opacity: txtOpacity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.ac_unit,
                                      color: AppColors.white,
                                      size: 28,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      monitoringStrings.ON,
                                      style: AppTypography.heading2.copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  monitoringStrings.StatusAC,
                                  style: AppTypography.subtitleMedium.copyWith(
                                    color: AppColors.white.withOpacity(0.7),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.show_chart,
                                      color: AppColors.white,
                                      size: 28,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      monitoringStrings.Normal,
                                      style: AppTypography.heading2.copyWith(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  monitoringStrings.KondisiAC,
                                  style: AppTypography.subtitleMedium.copyWith(
                                    color: AppColors.white.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Gambar kanan — parallax + scale
                      ClipRect(
                        child: Transform.translate(
                          offset: Offset(imgOffset, 0),
                          child: Transform.scale(
                            scale: scale,
                            alignment: Alignment.center,
                            child: Image.asset(
                              AppImages.monitor.acWallmounted,
                              height: 200,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            // ======== TAB BAR ========
            Container(
              color: AppColors.white,
              child: TabBar(
                controller: _tabController,
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.neutral600,
                labelStyle: AppTypography.subtitleLarge.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: AppTypography.subtitleLarge.copyWith(
                  color: AppColors.neutral600,
                ),
                indicatorColor: AppColors.primary,
                tabs: [
                  Tab(text: monitoringStrings.Remote),
                  Tab(text: monitoringStrings.StatusAC),
                  Tab(text: monitoringStrings.Histori),
                ],
              ),
            ),

            // ======== TAB CONTENT ========
            Expanded(
              child: Container(
                color: AppColors.white,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    RemoteTab(
                      acId: widget.acId,
                      deviceId: widget.deviceId,
                      isSwitched: _isSwitched,
                      sliderValue: _sliderValue,
                      onSwitchChanged: (value) => setState(() {
                        _isSwitched = value;
                      }),
                      onSliderChanged: (value) => setState(() {
                        _sliderValue = value;
                      }),
                    ),
                    const StatusAC(),
                    const History(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
