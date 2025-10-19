import 'dart:async';

import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/features/home/domain/entities/site_dropdown_entity.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';

class SitePickerSheet extends StatefulWidget {
  final List<SiteDropdownItemEntity> sites;
  final int initialIndex;

  const SitePickerSheet({
    super.key,
    required this.sites,
    required this.initialIndex,
  });

  @override
  State<SitePickerSheet> createState() => _SitePickerSheetState();
}

class _SitePickerSheetState extends State<SitePickerSheet> {
  final TextEditingController _search = TextEditingController();
  final FocusNode _focus = FocusNode();
  List<int> _filteredIdx = [];
  late int _selectedIndex;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
    _filteredIdx = List.generate(widget.sites.length, (i) => i);
    _search.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _search.removeListener(_onSearchChanged);
    _search.dispose();
    _focus.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 180), () {
      final q = _search.text.trim().toLowerCase();
      setState(() {
        if (q.isEmpty) {
          _filteredIdx = List.generate(widget.sites.length, (i) => i);
        } else {
          _filteredIdx = [];
          for (var i = 0; i < widget.sites.length; i++) {
            final s = widget.sites[i].siteName.toLowerCase();
            // (opsional) tambahkan field lain untuk dicari (clientId dsb.)
            if (s.contains(q)) _filteredIdx.add(i);
          }
        }
      });
    });
  }

  void _select(int idx) {
    Navigator.of(context).pop(idx);
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Container(
      height: mq.size.height * 0.75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppRadius.large),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          // drag handle
          Container(
            width: 44,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(AppRadius.full),
            ),
          ),
          const SizedBox(height: AppSpacing.small),

          // header + close
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
            child: Row(
              children: [
                Text(
                  AppStrings.home.titleSitePickerSheet,
                  style: AppTypography.heading2,
                ),
                const Spacer(),
                IconButton(
                  tooltip: 'Tutup',
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xs),

          // search field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.small),
            child: TextField(
              controller: _search,
              focusNode: _focus,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: AppStrings.home.hintSearchSite,
                prefixIcon: const Icon(Icons.search_rounded),
                isDense: true,
                contentPadding: const EdgeInsets.all(AppSpacing.small),
                filled: true,
                fillColor: AppColors.neutral100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppRadius.huge),
                  borderSide: BorderSide(color: AppColors.border),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppRadius.huge),
                  borderSide: BorderSide(color: AppColors.primary, width: 1.4),
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.small),

          // list
          Expanded(
            child: _filteredIdx.isEmpty
                ? Center(
                    child: Text(
                      AppStrings.home.errorSiteNotFound,
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.neutral600,
                      ),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(AppSpacing.small),
                    itemCount: _filteredIdx.length,
                    separatorBuilder: (_, __) =>
                        const SizedBox(height: AppSpacing.small),
                    itemBuilder: (context, i) {
                      final idx = _filteredIdx[i];
                      final item = widget.sites[idx];
                      final selected = idx == _selectedIndex;

                      return InkWell(
                        borderRadius: BorderRadius.circular(AppRadius.card),
                        onTap: () => _select(idx),
                        child: Container(
                          padding: const EdgeInsets.all(AppSpacing.small),
                          decoration: BoxDecoration(
                            color: selected
                                ? AppColors.primary10
                                : Colors.white,
                            borderRadius: BorderRadius.circular(AppRadius.card),
                            border: Border.all(
                              color: selected
                                  ? AppColors.primary
                                  : AppColors.neutral300,
                              width: selected ? 1.4 : 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item.siteName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTypography.bodyLarge.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.neutral900,
                                  ),
                                ),
                              ),
                              const SizedBox(width: AppSpacing.xs),
                              Icon(
                                selected
                                    ? Icons.radio_button_checked
                                    : Icons.radio_button_off,
                                size: AppSizes.iconMedium,
                                color: selected
                                    ? AppColors.primary
                                    : AppColors.neutral500,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
