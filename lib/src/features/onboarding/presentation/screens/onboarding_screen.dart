import 'dart:async';

import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/features/onboarding/presentation/widgets/dots_indicator_widget.dart';
import 'package:quanta_hris/src/features/onboarding/presentation/widgets/language_chip_widget.dart';
import 'package:quanta_hris/src/features/onboarding/presentation/widgets/onboarding_carousel_widget.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _OnboardingView();
  }
}

class _OnboardingView extends StatefulWidget {
  const _OnboardingView();

  @override
  State<_OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<_OnboardingView> {
  static const Duration _autoPlayInterval = Duration(seconds: 2);
  static const Duration _autoPlayAnimationDuration = Duration(seconds: 1);

  late PageController _controller;
  int _current = 0;
  Timer? _autoPlayTimer;

  final _pages = [
    OnboardingData(
      asset: AppImages.onboarding.onboardingFirst,
      space: -20,
      title: AppStrings.onboarding.titleFirst,
    ),
    OnboardingData(
      asset: AppImages.onboarding.onboardingSecond,
      space: -20,
      title: AppStrings.onboarding.titleSecond,
    ),
    OnboardingData(
      asset: AppImages.onboarding.onboardingThird,
      space: -20,
      title: AppStrings.onboarding.titleThird,
    ),
  ];

  @override
  void initState() {
    super.initState();
    // Initialize with a very large starting index to enable infinite scroll
    const int multiplier = 10000;
    final int startIndex = (multiplier ~/ 2) * _pages.length;
    _controller = PageController(initialPage: startIndex);
    _startAutoPlay();
  }

  void _startAutoPlay() {
    _autoPlayTimer?.cancel();
    if (_pages.length <= 1) {
      return;
    }
    _autoPlayTimer = Timer.periodic(
      _autoPlayInterval,
      (_) => _animateToNextPage(),
    );
  }

  void _animateToNextPage() {
    if (!_controller.hasClients) return;

    // Get current page and move to next
    final currentPage = _controller.page?.round() ?? 0;
    _controller.animateToPage(
      currentPage + 1,
      duration: _autoPlayAnimationDuration,
      curve: Curves.easeInOut,
    );
  }

  void _handlePageChanged(int index) {
    if (!mounted) return;
    setState(() => _current = index);
    _startAutoPlay();
  }

  @override
  void dispose() {
    _autoPlayTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            // Chip bahasa di kanan atas
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.xl,
                vertical: 48,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [LanguageChip()],
              ),
            ),

            // PageView dan Dots dalam satu container
            Expanded(
              child: Column(
                children: [
                  // PageView (gambar + judul) dengan tinggi flexible
                  Flexible(
                    child: OnboardingCarousel(
                      controller: _controller,
                      items: _pages,
                      onPageChanged: _handlePageChanged,
                    ),
                  ),
                  // Dots indicator
                  const SizedBox(height: 40), // Jarak diperkecil
                  DotsIndicator(length: _pages.length, currentIndex: _current),
                  const SizedBox(height: 80), // Jarak diperkecil
                ],
              ),
            ),

            // Tombol aksi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
              child: Column(
                children: [
                  PrimaryButton(
                    text: AppStrings.onboarding.buttonLoginEmail,
                    onPressed: () {
                      print('Login button pressed');
                      context.push('/login');
                    },
                    variant: PrimaryButtonVariant.primary,
                    size: PrimaryButtonSize.large,
                  ),
                  const SizedBox(height: AppSpacing.medium),
                  PrimaryButton(
                    text: AppStrings.onboarding.buttonLoginGoogle,
                    onPressed: () {},
                    variant: PrimaryButtonVariant.outline,
                    size: PrimaryButtonSize.large,
                    icon: ButtonIconSvg(
                      AppImages.global.iconGoogle,
                      width: AppSizes.iconSmall,
                      height: AppSizes.iconSmall,
                    ),
                    iconPosition: PrimaryButtonIconPosition.left,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppStrings.onboarding.textNoAccount,
                          style: AppTypography.bodySmall,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.push('/register');
                          },
                          child: Text(
                            AppStrings.onboarding.buttonRegister,
                            style: AppTypography.bodySmall.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.bottomSafeArea),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
