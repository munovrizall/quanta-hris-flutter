import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // ✅ Kurangi tinggi karena greeting dipindah
      width: double.infinity,
      child: Image.asset(
        AppImages.home.illustrationHeader,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
