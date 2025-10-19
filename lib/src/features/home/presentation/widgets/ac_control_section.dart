import 'dart:math' as math;

import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/features/home/domain/entities/placement_acsm_entity.dart';
import 'package:quanta_hris/src/features/home/domain/entities/site_dropdown_entity.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_event.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_state.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/ac_card.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/site_dropdown_widget.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/chip_tab_bar.dart';
import 'package:quanta_hris/src/shared/widgets/segmented_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AcControlSection extends StatefulWidget {
  const AcControlSection({super.key});

  @override
  State<AcControlSection> createState() => _AcControlSectionState();
}

class _AcControlSectionState extends State<AcControlSection>
    with TickerProviderStateMixin {
  TabController? _siteTab;
  TabController? _roomTab;

  int _prevSiteLen = 0;
  int _prevRoomLen = 0;

  @override
  void dispose() {
    _siteTab?.dispose();
    _roomTab?.dispose();
    super.dispose();
  }

  void _ensureSiteController(List<SiteDropdownItemEntity> sites) {
    final len = sites.length;

    if (_siteTab == null || _prevSiteLen != len) {
      _siteTab?.dispose();
      _siteTab = TabController(length: math.max(len, 1), vsync: this);
      _siteTab!.addListener(() => setState(() {}));
      _prevSiteLen = len;
    }

    // Ensure index is within bounds
    if (len > 0 && _siteTab!.index >= len) {
      _siteTab!.index = 0;
    }
  }

  void _ensureRoomController(List<PlacementRoomEntity> rooms) {
    final len = rooms.length;
    if (_roomTab == null || _prevRoomLen != len) {
      _roomTab?.dispose();
      _roomTab = TabController(length: math.max(len, 1), vsync: this);
      _roomTab?.addListener(() => setState(() {}));
      _prevRoomLen = len;
    }
    if (len > 0 && _roomTab!.index >= len) {
      _roomTab!.index = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (p, c) =>
          p.currentPlacementData != c.currentPlacementData ||
          p.isLoadingCurrentPlacement != c.isLoadingCurrentPlacement ||
          p.currentPlacementError != c.currentPlacementError ||
          p.siteDropdownData != c.siteDropdownData ||
          p.selectedClientId != c.selectedClientId ||
          p.selectedSiteId != c.selectedSiteId ||
          p.hasSiteChanged != c.hasSiteChanged ||
          p.isLoadingSiteDropdown != c.isLoadingSiteDropdown,
      builder: (context, state) {
        // 1. HANYA show loading jika site dropdown masih loading (initial load)
        if (state.isLoadingSiteDropdown) {
          return const _LoadingState();
        }

        // 2. Show error if site dropdown failed
        if (state.siteDropdownError != null) {
          return _ErrorState(
            message: state.siteDropdownError!,
            onRetry: () => context.read<HomeBloc>().add(
              const HomeEvent.fetchSiteDropdownData(),
            ),
          );
        }

        // 3. Show loading jika tidak ada site dropdown data dan loading
        if (state.siteDropdownData == null && state.isLoadingAny) {
          return const _LoadingState();
        }

        // 4. Success content - selalu render site dropdown dan room tabs
        if (state.siteDropdownData == null) {
          return const _LoadingState();
        }

        final siteDropdown = state.siteDropdownData!;
        final hasSites = siteDropdown.sites.isNotEmpty;
        final showSiteSelector = hasSites && siteDropdown.sites.length > 1;
        final useDropdown = showSiteSelector && siteDropdown.sites.length > 3;

        // kontrol TabController hanya saat TIDAK pakai dropdown
        if (showSiteSelector && !useDropdown) {
          _ensureSiteController(siteDropdown.sites);

          // >>> Sinkron index dengan selectedSiteId dari state <<<
          final selectedId = state.selectedSiteId;
          if (selectedId != null && _siteTab != null) {
            final idx = siteDropdown.sites.indexWhere(
              (s) => s.siteId == selectedId,
            );
            if (idx >= 0 && _siteTab!.index != idx) {
              _siteTab!.animateTo(idx);
            }
          }
        } else {
          // dropdown mode → pastikan TabController dibersihkan
          if (_siteTab != null) {
            _siteTab!.dispose();
            _siteTab = null;
            _prevSiteLen = 0;
          }
        }

        return _SuccessContent(
          siteTab: (!useDropdown && showSiteSelector) ? _siteTab : null,
          state: state,
          showSiteDropdown: showSiteSelector,
          useDropdown: useDropdown,
          onSiteChanged: (siteIndex) =>
              _onSiteChanged(context, state, siteIndex),
          onRequireRoomController: (rooms) {
            _ensureRoomController(rooms);
            return _roomTab;
          },
        );
      },
    );
  }

  void _onSiteChanged(BuildContext context, HomeState state, int siteIndex) {
    final data = state.siteDropdownData;
    if (data == null || siteIndex < 0 || siteIndex >= data.sites.length) return;

    final selected = data.sites[siteIndex];
    // update data + polling akan diurus handler by site
    context.read<HomeBloc>().add(
      HomeEvent.fetchPlacementAcsmBySiteData(
        clientId: selected.clientId,
        siteId: selected.siteId,
      ),
    );
  }
}

class _SuccessContent extends StatelessWidget {
  final TabController? siteTab;
  final HomeState state;
  final bool showSiteDropdown;
  final bool useDropdown;
  final void Function(int)? onSiteChanged;
  final TabController? Function(List<PlacementRoomEntity>)
  onRequireRoomController;

  const _SuccessContent({
    required this.siteTab,
    required this.state,
    required this.showSiteDropdown,
    required this.useDropdown,
    this.onSiteChanged,
    required this.onRequireRoomController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionHeader(title: 'AC Kamu'),
        if (showSiteDropdown) ...[
          const SizedBox(height: AppSpacing.xs),
          if (useDropdown)
            SiteDropdownWidget(state: state, onSiteChanged: onSiteChanged)
          else if (siteTab != null)
            SegmentedTabBar<SiteDropdownItemEntity>(
              controller: siteTab!,
              items: state.siteDropdownData!.sites,
              getLabel: (site) => site.siteName,
              onTap: onSiteChanged,
            ),
          const SizedBox(height: AppSpacing.small),
        ],
        _PlacementContent(
          state: state,
          siteTab: siteTab,
          onRequireRoomController: onRequireRoomController,
        ),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
      child: Row(children: [Text(title, style: AppTypography.heading2)]),
    );
  }
}

class _PlacementContent extends StatelessWidget {
  final HomeState state;
  final TabController? siteTab;
  final TabController? Function(List<PlacementRoomEntity>)
  onRequireRoomController;

  const _PlacementContent({
    required this.state,
    required this.siteTab,
    required this.onRequireRoomController,
  });

  @override
  Widget build(BuildContext context) {
    final siteDropdown = state.siteDropdownData;
    final hasMultipleSites =
        siteDropdown != null && siteDropdown.sites.length > 1;

    if (hasMultipleSites && siteTab != null) {
      // mode segmented tabs
      final tabChildren = siteDropdown.sites.map((siteDropdownItem) {
        return KeyedSubtree(
          key: ValueKey(siteDropdownItem.siteId),
          child: _SiteContentStateHandler(
            state: state,
            siteDropdownItem: siteDropdownItem,
            onRequireRoomController: onRequireRoomController,
          ),
        );
      }).toList();

      return SegmentedTabBarView(controller: siteTab!, children: tabChildren);
    } else if (hasMultipleSites && siteTab == null) {
      // mode dropdown: render satu site yang terpilih
      final selectedSiteId =
          state.selectedSiteId ?? siteDropdown.sites.first.siteId;

      final selectedSiteDropdownItem = siteDropdown.sites.firstWhere(
        (s) => s.siteId == selectedSiteId,
        orElse: () => siteDropdown.sites.first,
      );

      return ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 200),
        child: _SiteContentStateHandler(
          state: state,
          siteDropdownItem: selectedSiteDropdownItem,
          onRequireRoomController: onRequireRoomController,
        ),
      );
    } else {
      // SIMPLIFIED: single site - langsung ambil dari currentPlacementData
      final placementData = state.currentPlacementData;

      // Show loading hanya jika data kosong dan sedang loading
      if (placementData.isEmpty && state.isLoadingCurrentPlacement) {
        return const _AcLoadingState();
      }

      if (placementData.isEmpty) {
        return const _EmptyState(
          icon: Icons.ac_unit,
          title: 'Belum ada AC terdaftar',
        );
      }

      final site = placementData.first;
      return _SiteContent(
        site: site,
        onRequireRoomController: onRequireRoomController,
      );
    }
  }
}

class _SiteContentStateHandler extends StatelessWidget {
  final HomeState state;
  final SiteDropdownItemEntity siteDropdownItem;
  final TabController? Function(List<PlacementRoomEntity>)
  onRequireRoomController;

  const _SiteContentStateHandler({
    required this.state,
    required this.siteDropdownItem,
    required this.onRequireRoomController,
  });

  @override
  Widget build(BuildContext context) {
    final placementData = state.currentPlacementData;

    // >>> PRIORITAS LOADING: Jika sedang loading placement, selalu tampilkan loading <<<
    if (state.isLoadingCurrentPlacement) {
      // >>> SIMPLIFIED: Jika loading, selalu tampilkan loading state <<<
      // Kecuali jika ada data dan bukan site change (polling)
      if (placementData.isNotEmpty && !state.hasSiteChanged) {
        final siteData = placementData.firstWhere(
          (p) => p.siteId == siteDropdownItem.siteId,
          orElse: () => PlacementAcsmEntity(
            siteId: siteDropdownItem.siteId,
            siteName: siteDropdownItem.siteName,
            rooms: [],
          ),
        );

        // Tampilkan struktur dengan loading hanya jika ada room data
        if (siteData.rooms.isNotEmpty) {
          final roomTab = onRequireRoomController(siteData.rooms)!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChipTabBar<PlacementRoomEntity>(
                controller: roomTab,
                items: siteData.rooms,
                getLabel: (room) => room.roomName,
                getIcon: (room) => Icons.meeting_room_rounded,
                getBadgeText: (room) => room.placements.length.toString(),
                onTap: (index) {
                  roomTab.index = index;
                },
                sheetTitle: 'Pilih Ruangan',
              ),
              const SizedBox(height: AppSpacing.small),
              const _AcLoadingState(),
            ],
          );
        }
      }

      // >>> DEFAULT: Loading state untuk site change atau first fetch <<<
      return const _AcLoadingState();
    }

    // Show error dengan context
    if (state.currentPlacementError != null) {
      return _ErrorState(
        message: state.currentPlacementError!,
        onRetry: () {
          context.read<HomeBloc>().add(
            HomeEvent.fetchPlacementAcsmBySiteData(
              clientId: siteDropdownItem.clientId,
              siteId: siteDropdownItem.siteId,
            ),
          );
        },
      );
    }

    // Normal content - hanya tampil jika tidak loading
    final siteData = placementData.firstWhere(
      (p) => p.siteId == siteDropdownItem.siteId,
      orElse: () => PlacementAcsmEntity(
        siteId: siteDropdownItem.siteId,
        siteName: siteDropdownItem.siteName,
        rooms: [],
      ),
    );

    return _SiteContent(
      site: siteData,
      onRequireRoomController: onRequireRoomController,
    );
  }
}

class _SiteContent extends StatelessWidget {
  final PlacementAcsmEntity site;
  final TabController? Function(List<PlacementRoomEntity>)
  onRequireRoomController;

  const _SiteContent({
    required this.site,
    required this.onRequireRoomController,
  });

  @override
  Widget build(BuildContext context) {
    if (site.rooms.isEmpty) {
      return _EmptyState(
        icon: Icons.meeting_room_outlined,
        title: AppStrings.home.errorNoRoomInSite,
      );
    }

    final roomTab = onRequireRoomController(site.rooms)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Gunakan ChipTabBar langsung
        ChipTabBar<PlacementRoomEntity>(
          controller: roomTab,
          items: site.rooms,
          getLabel: (room) => room.roomName,
          getIcon: (room) => Icons.meeting_room_rounded,
          getBadgeText: (room) => room.placements.length.toString(),
          onTap: (index) {
            roomTab.index = index;
          },
          sheetTitle: AppStrings.home.titleRoomPickerSheet,
          searchHint: AppStrings.home.hintSearchRoom, // ADD THIS
        ),
        const SizedBox(height: AppSpacing.small),
        Builder(
          builder: (context) {
            final idx = roomTab.index;
            if (idx < site.rooms.length) {
              final room = site.rooms[idx];
              return _AcGrid(placements: room.placements);
            }
            return _EmptyState(
              icon: Icons.ac_unit,
              title: AppStrings.home.errorNoAcInRoom,
            );
          },
        ),
      ],
    );
  }
}

// Loading state yang lebih kecil hanya untuk AC grid
class _AcLoadingState extends StatelessWidget {
  const _AcLoadingState();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.all(AppSpacing.large),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: AppSpacing.medium),
            Text(
              'Memuat data AC...',
              style: AppTypography.bodyMedium.copyWith(
                color: AppColors.neutral600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AcGrid extends StatelessWidget {
  final List<PlacementItemEntity> placements;
  const _AcGrid({required this.placements});

  @override
  Widget build(BuildContext context) {
    if (placements.isEmpty) {
      return _EmptyState(
        icon: Icons.ac_unit,
        title: AppStrings.home.errorNoAcInRoom,
      );
    }

    return Padding(
      padding: const EdgeInsets.all(AppSpacing.large),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final double itemWidth =
              (constraints.maxWidth - AppSpacing.medium) / 2;

          return Wrap(
            spacing: AppSpacing.medium,
            runSpacing: AppSpacing.medium,
            children: placements.map((p) {
              return SizedBox(
                width: itemWidth,
                child: AcCard(placement: p),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(AppSpacing.large),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: AppSpacing.medium),
            Text(AppStrings.home.loadingAcData),
          ],
        ),
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorState({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: AppSizes.avatarHuge,
              color: AppColors.error,
            ),
            const SizedBox(height: AppSpacing.medium),
            Text(
              AppStrings.home.errorLoadAcData,
              style: AppTypography.bodyLarge.copyWith(
                color: AppColors.error,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: AppSpacing.small),
            Text(
              message,
              style: AppTypography.bodySmall.copyWith(
                color: AppColors.neutral600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.medium),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(AppStrings.globalTryAgain),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;

  const _EmptyState({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 260,
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: AppSizes.avatarLarge, color: AppColors.neutral300),
            const SizedBox(height: AppSpacing.medium),
            Text(
              title,
              style: AppTypography.bodyLarge.copyWith(
                color: AppColors.neutral600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
