import 'dart:async';

import 'package:quanta_hris/src/features/home/presentation/bloc/home_state.dart';
import 'package:quanta_hris/src/features/home/presentation/widgets/site_picker_sheet.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';

class SiteDropdownWidget extends StatefulWidget {
  final HomeState state;
  final void Function(int)? onSiteChanged;

  const SiteDropdownWidget({
    super.key,
    required this.state,
    this.onSiteChanged,
  });

  @override
  State<SiteDropdownWidget> createState() => _SiteDropdownWidgetState();
}

class _SiteDropdownWidgetState extends State<SiteDropdownWidget> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    final sites = widget.state.siteDropdownData!.sites;
    _selectedIndex = 0;
    if (widget.state.selectedSiteId != null) {
      final idx = sites.indexWhere(
        (s) => s.siteId == widget.state.selectedSiteId,
      );
      if (idx >= 0) _selectedIndex = idx;
    }
  }

  @override
  void didUpdateWidget(covariant SiteDropdownWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Sinkron saat state berubah (mis. polling) → tetap reflect selectedSiteId
    final sites = widget.state.siteDropdownData!.sites;
    final selectedId = widget.state.selectedSiteId;
    if (selectedId != null) {
      final idx = sites.indexWhere((s) => s.siteId == selectedId);
      if (idx >= 0 && idx != _selectedIndex) {
        _selectedIndex = idx;
      }
    }
  }

  Future<void> _openSheet() async {
    final sites = widget.state.siteDropdownData!.sites;
    final result = await showModalBottomSheet<int>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) =>
          SitePickerSheet(sites: sites, initialIndex: _selectedIndex),
    );

    if (result != null && result != _selectedIndex) {
      setState(() => _selectedIndex = result);
      widget.onSiteChanged?.call(result); // trigger fetchBySite + polling
    }
  }

  @override
  Widget build(BuildContext context) {
    final sites = widget.state.siteDropdownData!.sites;
    final label = sites[_selectedIndex].siteName;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppRadius.large),
        onTap: _openSheet,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.neutral100,
            borderRadius: BorderRadius.circular(AppRadius.large),
            border: Border.all(color: AppColors.neutral300),
          ),
          child: Row(
            children: [
              const Icon(Icons.place_outlined, size: 20, color: Colors.black54),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.bodyMedium.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.neutral900,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.neutral200,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  '${sites.length} sites',
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.neutral700,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.expand_more_rounded,
                size: 22,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
