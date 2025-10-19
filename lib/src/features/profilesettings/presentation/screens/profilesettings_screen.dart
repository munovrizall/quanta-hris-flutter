import 'package:quanta_hris/src/core/constants/app_images.dart' as images;
import 'package:quanta_hris/src/features/profilesettings/presentation/screens/edit_profile.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final profileImages = images.AppImages.profileSettings;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile', style: TextStyle(color: Colors.white)),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSettingsItem(
              context,
              'Edit Profile',
              profileImages.editProfile,
              textStyle: AppTypography.subtitleLarge,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfile()),
                );
              },
            ),
            _buildSettingsItem(
              context,
              'Ubah Bahasa',
              profileImages.changeLanguage,
              textStyle: AppTypography.subtitleLarge,
            ),
            _buildSettingsItem(
              context,
              'Settings',
              profileImages.settings,
              textStyle: AppTypography.subtitleLarge,
            ),
            const SizedBox(height: 20),
            _buildSettingsItem(
              context,
              'Logout',
              profileImages.signOut,
              textStyle: AppTypography.subtitleLarge,
              isLogout: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
    BuildContext context,
    String title,
    String imagePath, {
    VoidCallback? onTap,
    bool isLogout = false,
    TextStyle? textStyle,
  }) {
    final color = isLogout ? Colors.red : Theme.of(context).primaryColor;
    final baseStyle = textStyle ?? AppTypography.subtitleLarge;
    final titleStyle = baseStyle.copyWith(
      color: isLogout ? Colors.red : baseStyle.color ?? Colors.black87,
    );

    return Card(
      child: ListTile(
        leading: ImageIcon(AssetImage(imagePath), color: color),
        title: Text(title, style: titleStyle),
        trailing: isLogout
            ? null
            : const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
