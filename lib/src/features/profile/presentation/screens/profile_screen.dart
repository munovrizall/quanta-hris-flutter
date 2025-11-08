import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/bloc/session_state.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_event.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/main_bottom_navbar.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select<SessionBloc, UserEntity?>(
      (bloc) => bloc.state.maybeWhen(
        authenticated: (user) => user,
        orElse: () => null,
      ),
    );

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (errorState) {
            final messenger = ScaffoldMessenger.of(context);
            messenger
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(errorState.message),
                  backgroundColor: AppColors.error,
                ),
              );
          },
          loggedOut: (_) => context.go('/login'),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profil'),
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.large),
            child: user == null
                ? _EmptyProfileState(onLogout: () => _showLogoutDialog(context))
                : _ProfileContent(
                    user: user,
                    onLogoutPressed: () => _showLogoutDialog(context),
                  ),
          ),
        ),
        bottomNavigationBar: MainBottomNavBar(
          currentIndex: 2,
          onTap: (index) => _handleNavigationTap(context, index),
        ),
      ),
    );
  }

  void _handleNavigationTap(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/payroll');
        break;
      case 2:
        // Already on profile screen.
        break;
    }
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Konfirmasi Logout'),
          content:
              const Text('Apakah Anda yakin ingin keluar dari aplikasi?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.logoutButtonPressed());
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}

class _ProfileContent extends StatelessWidget {
  final UserEntity user;
  final VoidCallback onLogoutPressed;

  const _ProfileContent({
    required this.user,
    required this.onLogoutPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: CircleAvatar(
            radius: 40,
            backgroundColor: AppColors.primary.withValues(alpha: 0.1),
            child: Icon(
              Icons.person,
              size: 48,
              color: AppColors.primary,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.medium),
        Center(
          child: Text(
            user.namaLengkap,
            style: AppTypography.heading2,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Center(
          child: Text(
            user.email,
            style: AppTypography.subtitleMedium.copyWith(
              color: AppColors.neutral600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        Text(
          'Informasi Karyawan',
          style: AppTypography.heading3,
        ),
        const SizedBox(height: AppSpacing.small),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.large),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.medium),
            child: Column(
              children: [
                _ProfileDetailRow(
                  label: 'ID Karyawan',
                  value: user.karyawanId,
                ),
                const Divider(),
                _ProfileDetailRow(
                  label: 'Departemen',
                  value: user.departemen,
                ),
                const Divider(),
                _ProfileDetailRow(
                  label: 'Jabatan',
                  value: user.jabatan,
                ),
                const Divider(),
                _ProfileDetailRow(
                  label: 'Nomor Telepon',
                  value: user.nomorTelepon,
                ),
                const Divider(),
                _ProfileDetailRow(
                  label: 'Role',
                  value: user.role.name,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        ElevatedButton.icon(
          onPressed: onLogoutPressed,
          icon: const Icon(Icons.logout),
          label: const Text('Logout'),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.error,
            padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.small,
            ),
          ),
        ),
      ],
    );
  }
}

class _ProfileDetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileDetailRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            label,
            style: AppTypography.labelLarge.copyWith(
              color: AppColors.neutral600,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            value,
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.neutral900,
            ),
          ),
        ),
      ],
    );
  }
}

class _EmptyProfileState extends StatelessWidget {
  final VoidCallback onLogout;

  const _EmptyProfileState({required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.account_circle_outlined,
          size: 80,
          color: AppColors.neutral400,
        ),
        const SizedBox(height: AppSpacing.medium),
        Text(
          'Data profil tidak tersedia.',
          style: AppTypography.subtitleMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSpacing.large),
        ElevatedButton(
          onPressed: onLogout,
          child: const Text('Kembali ke Login'),
        ),
      ],
    );
  }
}
