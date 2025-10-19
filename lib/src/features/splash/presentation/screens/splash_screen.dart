// lib/src/features/splash/presentation/screens/splash_screen.dart

import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionBloc, SessionState>(
      listener: (context, state) {
        state.mapOrNull(
          authenticated: (_) => context.go('/home'),
          unauthenticated: (_) => context.go('/onboarding'),
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Center(
          child: SvgPicture.asset(
            AppImages.global.logoSmartcool,
            width: 140,
            height: 140,
          ),
        ),
      ),
    );
  }
}
