import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// Typography system for ACSM Mobile app
///
/// Uses a combination of:
/// - **Rubik**: For headings, subtitles, and elements that need emphasis
/// - **Open Sans**: For body text and easy-to-read content
///
/// ### Usage:
/// ```dart
/// Text(
///   'Page Title',
///   style: AppTypography.heading1,
/// )
///
/// Text(
///   'Content description',
///   style: AppTypography.bodyMedium,
/// )
///
/// ElevatedButton(
///   child: Text(
///     'Button Text',
///     style: AppTypography.buttonMedium,
///   ),
/// )
/// ```
///
/// ### Color Variations:
/// ```dart
/// Text(
///   'Error message',
///   style: AppTypography.bodyMedium.copyWith(
///     color: AppColors.error,
///   ),
/// )
/// ```
class AppTypography {
  const AppTypography._();

  // ===== DISPLAY STYLES =====
  // For hero text and very large display elements

  /// Display Large - 32px, Bold, Rubik
  /// For hero sections and splash screens
  static TextStyle displayLarge = GoogleFonts.rubik(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    height: 1.2,
    color: AppColors.neutral900,
  );

  /// Display Medium - 28px, Bold, Rubik
  /// For main page headers
  static TextStyle displayMedium = GoogleFonts.rubik(
    fontWeight: FontWeight.bold,
    fontSize: 28,
    height: 1.25,
    color: AppColors.neutral900,
  );

  // ===== HEADING STYLES =====

  /// Heading 1 - 24px, SemiBold, Rubik
  /// For section headers and large component titles
  static TextStyle heading1 = GoogleFonts.rubik(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    height: 1.3,
    color: AppColors.neutral900,
  );

  /// Heading 2 - 20px, SemiBold, Rubik
  /// For sub-headers and card titles
  static TextStyle heading2 = GoogleFonts.rubik(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 1.3,
    color: AppColors.neutral900,
  );

  /// Heading 3 - 18px, Medium, Rubik
  /// For small headers and group labels
  static TextStyle heading3 = GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 1.35,
    color: AppColors.black,
  );

  // ===== SUBTITLE STYLES =====

  /// Subtitle Large - 16px, Medium, Rubik
  /// For subtitles and important supporting text
  static TextStyle subtitleLarge = GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.4,
    color: AppColors.neutral800,
  );

  /// Subtitle Medium - 14px, Medium, Rubik
  /// For small subtitles and metadata
  static TextStyle subtitleMedium = GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.4,
    color: AppColors.black,
  );

  // ===== BODY STYLES =====

  /// Body Large - 16px, Normal, Open Sans
  /// For main content and long paragraphs
  static TextStyle bodyLarge = GoogleFonts.openSans(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 1.5,
    color: AppColors.neutral700,
  );

  /// Body Medium - 14px, Normal, Open Sans
  /// For standard content and descriptions
  static TextStyle bodyMedium = GoogleFonts.openSans(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    height: 1.45,
    color: AppColors.neutral700,
  );

  /// Body Small - 12px, Normal, Open Sans
  /// For helper text and captions
  static TextStyle bodySmall = GoogleFonts.openSans(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 1.4,
    color: AppColors.black,
  );

  static TextStyle bodyExtraSmall = GoogleFonts.openSans(
    fontWeight: FontWeight.normal,
    fontSize: 10,
    height: 1.35,
    color: AppColors.black,
  );
  // ===== LABEL STYLES =====

  /// Label Large - 14px, Medium, Open Sans
  /// For form labels and categories
  static TextStyle labelLarge = GoogleFonts.openSans(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.3,
    color: AppColors.neutral800,
  );

  /// Label Medium - 12px, Medium, Open Sans
  /// For small labels and tags
  static TextStyle labelMedium = GoogleFonts.openSans(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.3,
    color: AppColors.neutral700,
  );

  /// Label Small - 11px, Medium, Open Sans
  /// For badges and micro labels
  static TextStyle labelSmall = GoogleFonts.openSans(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    height: 1.25,
    color: AppColors.neutral600,
  );

  // ===== BUTTON STYLES =====

  /// Button Large - 16px, SemiBold, Rubik
  /// For primary buttons and large CTAs
  static TextStyle buttonLarge = GoogleFonts.rubik(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.2,
    color: AppColors.white,
  );

  /// Button Medium - 14px, SemiBold, Rubik
  /// For standard buttons
  static TextStyle buttonMedium = GoogleFonts.rubik(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.2,
    color: AppColors.white,
  );

  /// Button Small - 12px, Medium, Rubik
  /// For small buttons and link buttons
  static TextStyle buttonSmall = GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.2,
    color: AppColors.white,
  );

  // ===== UTILITY STYLES =====

  /// Caption - 12px, Normal, Open Sans
  /// For timestamps, copyright, and secondary info
  static TextStyle caption = GoogleFonts.openSans(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 1.35,
    color: AppColors.neutral500,
  );

  /// Overline - 11px, SemiBold, Open Sans
  /// For categories and section markers
  static TextStyle overline = GoogleFonts.openSans(
    fontWeight: FontWeight.w600,
    fontSize: 11,
    height: 1.3,
    letterSpacing: 0.5,
    color: AppColors.neutral600,
  );
}