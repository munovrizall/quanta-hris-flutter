import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';

class SegmentedTabBar<T> extends StatelessWidget {
  final TabController controller;
  final List<T> items;
  final String Function(T item) getLabel;
  final void Function(int index)? onTap;
  final EdgeInsets? padding;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Color? backgroundColor;

  const SegmentedTabBar({
    super.key,
    required this.controller,
    required this.items,
    required this.getLabel,
    this.onTap,
    this.padding,
    this.selectedColor,
    this.unselectedColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Container(
            padding: const EdgeInsets.all(AppSpacing.xxs),
            decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.neutral300,
              borderRadius: BorderRadius.circular(AppRadius.full),
            ),
            child: Row(
              children: List.generate(items.length, (i) {
                final isSelected = controller.index == i;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (controller.index != i) {
                        controller.index = i;
                        onTap?.call(i);
                      }
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSpacing.small,
                        horizontal: AppSpacing.xs,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(AppRadius.full),
                      ),
                      child: Center(
                        child: Text(
                          getLabel(items[i]),
                          style: AppTypography.bodyMedium.copyWith(
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: isSelected
                                ? (selectedColor ?? AppColors.primary)
                                : (unselectedColor ?? AppColors.neutral900),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}

class SegmentedTabBarView extends StatefulWidget {
  final TabController controller;
  final List<Widget> children;
  final Duration animationDuration;
  final Curve animationCurve;

  const SegmentedTabBarView({
    super.key,
    required this.controller,
    required this.children,
    this.animationDuration = const Duration(milliseconds: 200),
    this.animationCurve = Curves.easeInOut,
  });

  @override
  State<SegmentedTabBarView> createState() => _SegmentedTabBarViewState();
}

class _SegmentedTabBarViewState extends State<SegmentedTabBarView>
    with SingleTickerProviderStateMixin {
  late int _currentIndex;

  TabController get _controller => widget.controller;

  @override
  void initState() {
    super.initState();
    _currentIndex = _safeIndex(_controller.index);
    _controller.addListener(_handleControllerChange);
  }

  @override
  void didUpdateWidget(covariant SegmentedTabBarView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_handleControllerChange);
      _currentIndex = _safeIndex(widget.controller.index);
      widget.controller.addListener(_handleControllerChange);
    }

    if (widget.children.length != oldWidget.children.length &&
        _currentIndex >= widget.children.length) {
      _currentIndex = widget.children.isEmpty ? 0 : widget.children.length - 1;
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_handleControllerChange);
    super.dispose();
  }

  void _handleControllerChange() {
    if (!mounted) return;
    final newIndex = _safeIndex(_controller.index);
    if (newIndex != _currentIndex) {
      setState(() {
        _currentIndex = newIndex;
      });
    }
  }

  int _safeIndex(int index) {
    if (widget.children.isEmpty) return 0;
    return index.clamp(0, widget.children.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.children.isEmpty) {
      return const SizedBox.shrink();
    }

    final child = widget.children[_currentIndex];

    return AnimatedSize(
      duration: widget.animationDuration,
      curve: widget.animationCurve,
      alignment: Alignment.topCenter,
      child: KeyedSubtree(key: ValueKey(_currentIndex), child: child),
    );
  }
}
