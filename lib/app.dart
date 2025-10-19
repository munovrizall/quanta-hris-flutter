import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_event.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/core/config/flavor_config.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  final FlavorConfig flavorConfig;

  const App({super.key, required this.flavorConfig});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(
          create: (context) =>
              getIt<SessionBloc>()..add(const SessionEvent.sessionStarted()),
        ),
      ],
      child: MaterialApp.router(
        title: flavorConfig.appName,
        theme: AppTheme.lightTheme,
        themeMode: ThemeMode.light,
        routerConfig: getIt<GoRouter>(),
        builder: (context, child) {
          return BlocListener<SessionBloc, SessionState>(
            listener: (context, state) {
              state.whenOrNull(
                unauthenticated: (message) {
                  if (message != null && message.isNotEmpty) {
                    // Delay untuk memastikan routing selesai
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _showSessionExpiredSnackbar(context, message);
                    });
                  }
                },
              );
            },
            child: child ?? const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  void _showSessionExpiredSnackbar(BuildContext context, String message) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    // Clear any existing snackbars
    scaffoldMessenger.clearSnackBars();

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(
              Icons.warning_amber_rounded,
              color: Colors.white,
              size: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.error,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
