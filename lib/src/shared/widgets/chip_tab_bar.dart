import 'dart:async';

import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';

class ChipTabBar<T> extends StatelessWidget {
  final TabController controller;
  final List<T> items;
  final String Function(T item) getLabel;
  final IconData Function(T item)? getIcon;
  final String Function(T item)? getBadgeText;
  final void Function(int index) onTap;
  final String? sheetTitle;
  final String? searchHint; // ADD THIS
  final EdgeInsets? padding;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? selectedBorderColor;
  final Color? unselectedBorderColor;
  final double? height;
  final int maxItemsBeforeDropdown;

  const ChipTabBar({
    super.key,
    required this.controller,
    required this.items,
    required this.getLabel,
    required this.onTap,
    this.sheetTitle,
    this.searchHint, // ADD THIS
    this.getIcon,
    this.getBadgeText,
    this.padding,
    this.selectedColor,
    this.unselectedColor,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.height,
    this.maxItemsBeforeDropdown = 6,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return const SizedBox.shrink();

    // Jika item lebih dari maxItemsBeforeDropdown, gunakan dropdown
    if (items.length > maxItemsBeforeDropdown) {
      return _ChipDropdown<T>(
        controller: controller,
        items: items,
        getLabel: getLabel,
        getIcon: getIcon,
        getBadgeText: getBadgeText,
        onTap: onTap,
        sheetTitle: sheetTitle,
        searchHint: searchHint, // ADD THIS
        padding: padding,
        selectedColor: selectedColor,
        unselectedColor: unselectedColor,
        selectedBorderColor: selectedBorderColor,
        unselectedBorderColor: unselectedBorderColor,
        height: height,
      );
    }

    // Tampilkan chip tabs normal jika <= maxItemsBeforeDropdown
    return _ChipTabs<T>(
      controller: controller,
      items: items,
      getLabel: getLabel,
      getIcon: getIcon,
      getBadgeText: getBadgeText,
      onTap: onTap,
      padding: padding,
      selectedColor: selectedColor,
      unselectedColor: unselectedColor,
      selectedBorderColor: selectedBorderColor,
      unselectedBorderColor: unselectedBorderColor,
      height: height,
    );
  }
}

// Widget untuk tampilan chip tabs normal
class _ChipTabs<T> extends StatelessWidget {
  final TabController controller;
  final List<T> items;
  final String Function(T item) getLabel;
  final IconData Function(T item)? getIcon;
  final String Function(T item)? getBadgeText;
  final void Function(int index) onTap;
  final EdgeInsets? padding;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? selectedBorderColor;
  final Color? unselectedBorderColor;
  final double? height;

  const _ChipTabs({
    required this.controller,
    required this.items,
    required this.getLabel,
    required this.onTap,
    this.getIcon,
    this.getBadgeText,
    this.padding,
    this.selectedColor,
    this.unselectedColor,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 44,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return ListView.separated(
            padding:
                padding ??
                const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (_, __) =>
                const SizedBox(width: AppSpacing.small),
            itemBuilder: (context, i) {
              final selected = i == controller.index;
              final item = items[i];
              final badgeText = getBadgeText?.call(item);

              return InkWell(
                borderRadius: BorderRadius.circular(AppRadius.full),
                onTap: () => onTap(i),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 160),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: selected
                        ? (selectedColor ?? AppColors.secondary10)
                        : null,
                    borderRadius: BorderRadius.circular(AppRadius.full),
                    border: Border.all(
                      color: selected
                          ? (selectedBorderColor ?? AppColors.secondary)
                          : (unselectedBorderColor ?? AppColors.neutral300),
                      width: 1.2,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (getIcon != null) ...[
                        Icon(
                          getIcon!(item),
                          size: AppSizes.iconSmall,
                          color: selected
                              ? (selectedColor ?? AppColors.secondary)
                              : (unselectedColor ?? AppColors.neutral700),
                        ),
                        const SizedBox(width: 6),
                      ],
                      Text(
                        getLabel(item),
                        style: AppTypography.bodySmall.copyWith(
                          color: selected
                              ? (selectedColor ?? AppColors.secondary)
                              : (unselectedColor ?? AppColors.neutral900),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (badgeText != null) ...[
                        const SizedBox(width: AppSpacing.small),
                        _ChipBadge(
                          text: badgeText,
                          isSelected: selected,
                          selectedColor: selectedColor ?? AppColors.secondary,
                          unselectedColor:
                              unselectedColor ?? AppColors.neutral900,
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Widget untuk tampilan dropdown
class _ChipDropdown<T> extends StatelessWidget {
  final TabController controller;
  final List<T> items;
  final String Function(T item) getLabel;
  final IconData Function(T item)? getIcon;
  final String Function(T item)? getBadgeText;
  final void Function(int index) onTap;
  final String? sheetTitle;
  final String? searchHint;
  final EdgeInsets? padding;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? selectedBorderColor;
  final Color? unselectedBorderColor;
  final double? height;

  const _ChipDropdown({
    required this.controller,
    required this.items,
    required this.getLabel,
    required this.onTap,
    this.sheetTitle,
    this.searchHint,
    this.getIcon,
    this.getBadgeText,
    this.padding,
    this.selectedColor,
    this.unselectedColor,
    this.selectedBorderColor,
    this.unselectedBorderColor,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final selectedIndex = controller.index;
          final selectedItem = selectedIndex < items.length
              ? items[selectedIndex]
              : items.first;
          final badgeText = getBadgeText?.call(selectedItem);

          return InkWell(
            borderRadius: BorderRadius.circular(AppRadius.full),
            onTap: () => _showDropdownMenu(context),
            child: Container(
              height: height ?? 44,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: (selectedColor ?? AppColors.secondary10),
                borderRadius: BorderRadius.circular(AppRadius.full),
                border: Border.all(
                  color: selectedBorderColor ?? AppColors.secondary,
                  width: 1.2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (getIcon != null) ...[
                    Icon(
                      getIcon!(selectedItem),
                      size: AppSizes.iconSmall,
                      color: selectedColor ?? AppColors.secondary,
                    ),
                    const SizedBox(width: 6),
                  ],
                  Text(
                    getLabel(selectedItem),
                    style: AppTypography.bodySmall.copyWith(
                      color: selectedColor ?? AppColors.secondary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (badgeText != null) ...[
                    const SizedBox(width: AppSpacing.small),
                    _ChipBadge(
                      text: badgeText,
                      isSelected: true,
                      selectedColor: selectedColor ?? AppColors.secondary,
                      unselectedColor: unselectedColor ?? AppColors.neutral900,
                    ),
                  ],
                  const SizedBox(width: AppSpacing.small),
                  Icon(
                    Icons.expand_more_rounded,
                    size: AppSizes.iconSmall,
                    color: selectedColor ?? AppColors.secondary,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showDropdownMenu(BuildContext context) async {
    final result = await showModalBottomSheet<int>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _DropdownBottomSheet<T>(
        items: items,
        selectedIndex: controller.index,
        getLabel: getLabel,
        getIcon: getIcon,
        getBadgeText: getBadgeText,
        searchHint: searchHint,
        sheetTitle: sheetTitle,
        selectedColor: selectedColor,
        unselectedColor: unselectedColor,
      ),
    );

    if (result != null && result != controller.index) {
      controller.index = result;
      onTap(result);
    }
  }
}

// Bottom sheet untuk pilihan dropdown
class _DropdownBottomSheet<T> extends StatefulWidget {
  final List<T> items;
  final int selectedIndex;
  final String Function(T item) getLabel;
  final IconData Function(T item)? getIcon;
  final String Function(T item)? getBadgeText;
  final String? sheetTitle;
  final String? searchHint;
  final Color? selectedColor;
  final Color? unselectedColor;

  const _DropdownBottomSheet({
    required this.items,
    required this.selectedIndex,
    required this.getLabel,
    this.sheetTitle,
    this.searchHint,
    this.getIcon,
    this.getBadgeText,
    this.selectedColor,
    this.unselectedColor,
  });

  @override
  State<_DropdownBottomSheet<T>> createState() =>
      _DropdownBottomSheetState<T>();
}

class _DropdownBottomSheetState<T> extends State<_DropdownBottomSheet<T>> {
  final TextEditingController _search = TextEditingController();
  final FocusNode _focus = FocusNode();
  List<int> _filteredIdx = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _filteredIdx = List.generate(widget.items.length, (i) => i);
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
          _filteredIdx = List.generate(widget.items.length, (i) => i);
        } else {
          _filteredIdx = [];
          for (var i = 0; i < widget.items.length; i++) {
            final label = widget.getLabel(widget.items[i]).toLowerCase();
            if (label.contains(q)) _filteredIdx.add(i);
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Container(
      height: mq.size.height * 0.75, // FIXED HEIGHT seperti SitePickerSheet
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.huge),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: AppSpacing.xs),

          // Drag handle
          Container(
            width: 44,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(AppRadius.full),
            ),
          ),

          const SizedBox(height: AppSpacing.small),

          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
            child: Row(
              children: [
                Text(
                  widget.sheetTitle ?? 'Pilih Item',
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

          // Search field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.small),
            child: TextField(
              controller: _search,
              focusNode: _focus,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: widget.searchHint ?? 'Cari...',
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

          // List items - GUNAKAN EXPANDED seperti SitePickerSheet
          Expanded(
            child: _filteredIdx.isEmpty
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.large),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // ADD THIS
                        children: [
                          Icon(
                            Icons.search_off_rounded,
                            size: 48,
                            color: AppColors.neutral400,
                          ),
                          const SizedBox(height: AppSpacing.small),
                          Text(
                            'Tidak ditemukan',
                            style: AppTypography.bodyMedium.copyWith(
                              color: AppColors.neutral600,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            'Coba gunakan kata kunci lain',
                            style: AppTypography.bodySmall.copyWith(
                              color: AppColors.neutral500,
                            ),
                            textAlign: TextAlign.center, // ADD THIS
                          ),
                        ],
                      ),
                    ),
                  )
                : ListView.separated(
                    // HAPUS shrinkWrap: true
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.small,
                      vertical: AppSpacing.xs,
                    ),
                    itemCount: _filteredIdx.length,
                    separatorBuilder: (_, __) =>
                        const SizedBox(height: AppSpacing.xs),
                    itemBuilder: (context, i) {
                      final idx = _filteredIdx[i];
                      final item = widget.items[idx];
                      final isSelected = idx == widget.selectedIndex;
                      final badgeText = widget.getBadgeText?.call(item);

                      return InkWell(
                        borderRadius: BorderRadius.circular(AppRadius.card),
                        onTap: () => Navigator.of(context).pop(idx),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.small,
                            vertical: AppSpacing.small,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? (widget.selectedColor ??
                                      AppColors.secondary10)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(
                              AppRadius.medium,
                            ),
                            border: Border.all(
                              color: isSelected
                                  ? (widget.selectedColor ??
                                        AppColors.secondary)
                                  : AppColors.neutral300,
                              width: 1.2,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        widget.getLabel(item),
                                        style: AppTypography.bodyMedium
                                            .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: isSelected
                                                  ? (widget.selectedColor ??
                                                        AppColors.secondary)
                                                  : (widget.unselectedColor ??
                                                        AppColors.neutral900),
                                            ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    if (badgeText != null) ...[
                                      const SizedBox(width: AppSpacing.xs),
                                      _ChipBadge(
                                        text: badgeText,
                                        isSelected: isSelected,
                                        selectedColor:
                                            widget.selectedColor ??
                                            AppColors.secondary,
                                        unselectedColor:
                                            widget.unselectedColor ??
                                            AppColors.neutral900,
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                              const SizedBox(width: AppSpacing.xs),
                              Icon(
                                isSelected
                                    ? Icons.radio_button_checked
                                    : Icons.radio_button_off,
                                size: AppSizes.iconMedium,
                                color: isSelected
                                    ? (widget.selectedColor ??
                                          AppColors.secondary)
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

class _ChipBadge extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Color selectedColor;
  final Color unselectedColor;

  const _ChipBadge({
    required this.text,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: isSelected
            ? selectedColor
            : AppColors.neutral300.withOpacity(0.5),
        borderRadius: BorderRadius.circular(AppRadius.full),
      ),
      child: Text(
        text,
        style: AppTypography.bodySmall.copyWith(
          color: isSelected ? AppColors.white : unselectedColor,
          fontWeight: FontWeight.w700,
          fontSize: 10,
        ),
      ),
    );
  }
}
