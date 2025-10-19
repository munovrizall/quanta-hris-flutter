import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/features/authentication/presentation/screens/login_screen.dart'; // Akan kita buat
import 'package:quanta_hris/src/features/authentication/presentation/screens/register_screen.dart';
import 'package:quanta_hris/src/features/home/presentation/screens/home_screen.dart'; // Akan kita buat
import 'package:quanta_hris/src/features/splash/presentation/screens/splash_screen.dart'; // Akan kita buat

// GoRouter configuration
final GoRouter appRouter = GoRouter(
  navigatorKey: getIt.isRegistered<Alice>()
      ? getIt<Alice>().getNavigatorKey()
      : null,
  initialLocation: '/splash', // Rute awal saat aplikasi dibuka
  routes: <RouteBase>[
    // Rute untuk Splash Screen
    GoRoute(
      name: 'splash',
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    // Rute untuk Login Screen
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),
    // Rute untuk Home Screen (setelah login berhasil)
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
  // Tambahkan error page builder untuk menangani rute yang tidak ditemukan
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text('Page not found: ${state.error}'))),
);
