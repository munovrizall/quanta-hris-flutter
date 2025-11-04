import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';

class MainBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;

  const MainBottomNavBar({super.key, this.currentIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: AppColors.primary,
      backgroundColor: Colors.white,
      unselectedItemColor: AppColors.neutral600,
      onTap: (index) => onTap?.call(index),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.payments), label: 'Penggajian'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}
