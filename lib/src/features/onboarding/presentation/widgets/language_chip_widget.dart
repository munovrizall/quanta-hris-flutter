import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';

/// Chip pemilih bahasa dengan flag, nama bahasa, dan indikator dropdown
class LanguageChip extends StatefulWidget {
  final VoidCallback? onTap;

  const LanguageChip({super.key, this.onTap});

  @override
  State<LanguageChip> createState() => _LanguageChipState();
}

class _LanguageChipState extends State<LanguageChip> {
  static final _languages = [
    _LanguageOption(
      code: 'id',
      name: 'Bahasa Indonesia',
      flag: Image.asset(
        AppImages.global.iconIndonesia,
        width: AppSizes.iconLarge,
        height: AppSizes.iconLarge,
      ),
    ),
    _LanguageOption(
      code: 'en',
      name: 'English',
      flag: Image.asset(
        AppImages.global.iconEnglish,
        width: AppSizes.iconLarge,
        height: AppSizes.iconLarge,
      ),
    ),
  ];

  _LanguageOption _selectedLanguage = _languages.first;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.neutral200, // Warna latar belakang abu-abu
          borderRadius: BorderRadius.circular(24), // Radius 24
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<_LanguageOption>(
            value: _selectedLanguage,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _selectedLanguage = value;
                });
                // TODO: Handle language change
              }
            },
            items: _languages.map((language) {
              return DropdownMenuItem<_LanguageOption>(
                value: language,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    language.flag,
                    const SizedBox(width: AppSpacing.small),
                    Text(
                      language.name,
                      style: AppTypography.labelLarge.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
            selectedItemBuilder: (context) {
              return _languages.map((language) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Flag
                    language.code == 'id'
                        ? Image.asset(
                            AppImages.global.iconIndonesia,
                            width: AppSizes.iconLarge,
                            height: AppSizes.iconLarge,
                          )
                        : Image.asset(
                            AppImages.global.iconEnglish,
                            width: AppSizes.iconLarge,
                            height: AppSizes.iconLarge,
                          ),

                    const SizedBox(width: AppSpacing.small),

                    // Nama bahasa
                    Text(
                      language.name,
                      style: AppTypography.labelLarge.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              }).toList();
            },
            // Menghilangkan warna background default dari dropdown agar menyatu
            isDense: true,
            style: const TextStyle(),
            dropdownColor: Colors.white,
            borderRadius: BorderRadius.circular(12),
            elevation: 8,
          ),
        ),
      ),
    );
  }
}

/// Model untuk opsi bahasa
class _LanguageOption {
  final String code;
  final String name;
  final Image flag;

  const _LanguageOption({
    required this.code,
    required this.name,
    required this.flag,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _LanguageOption &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;
}
