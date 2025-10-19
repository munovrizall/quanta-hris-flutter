import 'dart:math' as math;

import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:flutter/material.dart';

class OnboardingCarousel extends StatelessWidget {
  final PageController controller;
  final List<OnboardingData> items;
  final ValueChanged<int>? onPageChanged;

  const OnboardingCarousel({
    super.key,
    required this.controller,
    required this.items,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: null, // Unlimited items
      physics: const BouncingScrollPhysics(),
      onPageChanged: (index) {
        // Convert back to original index (0, 1, 2, ...)
        final realIndex = index % items.length;
        onPageChanged?.call(realIndex);
      },
      itemBuilder: (context, index) {
        // Get real index from virtual index
        final realIndex = index % items.length;
        final data = items[realIndex];
        return OnboardingPage(data: data);
      },
    );
  }
}

class OnboardingData {
  final String asset;
  final String title;
  final double space;

  const OnboardingData({
    required this.asset,
    required this.title,
    this.space = 0,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;
  const OnboardingPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isSmallHeight = constraints.maxHeight < 600;
        final double horizontalPadding = isSmallHeight ? 16 : 24;
        final double maxImageDimension = math.max(
          0,
          math.min(
            constraints.maxWidth - (horizontalPadding * 2),
            constraints.maxHeight * (isSmallHeight ? 0.65 : 0.75),
          ),
        );
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: maxImageDimension,
                    width: maxImageDimension,
                    child: Image.asset(data.asset, fit: BoxFit.contain),
                  ),
                  SizedBox(
                    height: isSmallHeight
                        ? AppSpacing.small
                        : AppSpacing.medium,
                  ),
                  Text(
                    data.title,
                    textAlign: TextAlign.center,
                    style: isSmallHeight
                        ? theme.textTheme.headlineSmall
                        : theme.textTheme.headlineMedium,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
