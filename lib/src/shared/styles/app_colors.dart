import 'package:flutter/material.dart';

/// Color system for ACSM Mobile app
///
/// ### Basic Usage:
/// ```dart
/// Container(
///   color: AppColors.primary,
///   child: Text(
///     'Primary Content',
///     style: TextStyle(color: AppColors.white),
///   ),
/// )
/// ```
///
/// ### Semantic Usage:
/// ```dart
/// // For status and feedback
/// Container(color: AppColors.success) // Success
/// Container(color: AppColors.error)   // Error
/// Container(color: AppColors.warning) // Warning
///
/// // For text based on hierarchy
/// Text('Title', style: TextStyle(color: AppColors.neutral900))     // Darkest
/// Text('Content', style: TextStyle(color: AppColors.neutral700))   // Medium
/// Text('Caption', style: TextStyle(color: AppColors.neutral500))   // Light
/// ```
///
/// ### Material Design Usage:
/// ```dart
/// // For theme
/// MaterialApp(
///   theme: ThemeData(
///     primarySwatch: AppColors.primarySwatch,
///     colorScheme: AppColors.lightColorScheme,
///   ),
/// )
/// ```
class AppColors {
  // Private constructor to prevent instantiation
  const AppColors._();

  // ===== PRIMARY PALETTE =====
  // Main brand colors for CTA and important elements

  static const Color primary10 = Color(0x1A16bcd2); // 10% opacity

  /// Primary 100 - Lightest shade for backgrounds and hover states
  static const Color primary100 = Color(0xFFabedf6);

  /// Primary 200 - Light shade for secondary elements
  static const Color primary200 = Color(0xFF57dced);

  /// Primary 300 - Main primary color for buttons and links
  static const Color primary300 = Color(0xFF16bcd2);

  /// Primary 400 - Darker shade for hover and active states
  static const Color primary400 = Color(0xFF1192a3);

  /// Primary 500 - Darkest shade for text and borders
  static const Color primary500 = Color(0xFF0c6875);

  /// Alias for main primary color
  static const Color primary = primary300;

  // ===== SECONDARY PALETTE =====
  // Secondary colors for accents and variety

  static const Color secondary10 = Color(0x1Aff6807); // 10% opacity

  /// Secondary 100 - Lightest orange for backgrounds
  static const Color secondary100 = Color(0xFFffc6a1);

  /// Secondary 200 - Light orange for highlights
  static const Color secondary200 = Color(0xFFff8c42);

  /// Secondary 300 - Main secondary color
  static const Color secondary300 = Color(0xFFff6807);

  /// Secondary 400 - Darker orange for hover states
  static const Color secondary400 = Color(0xFFcb4f00);

  /// Secondary 500 - Darkest orange for text
  static const Color secondary500 = Color(0xFF903800);

  /// Alias for main secondary color
  static const Color secondary = secondary300;

  // ===== SEMANTIC COLORS =====
  // Colors for status and feedback

  // Error/Danger Colors
  /// Light red for error backgrounds
  static const Color red100 = Color(0xFFfb3748);

  /// Dark red for error text and borders
  static const Color red200 = Color(0xFFd00416);

  // Warning Colors
  /// Light yellow for warning backgrounds
  static const Color yellow100 = Color(0xFFffdb43);

  /// Dark yellow for warning text
  static const Color yellow200 = Color(0xFFdfb400);

  // Success Colors
  /// Light green for success backgrounds
  static const Color green100 = Color(0xFF84ebb4);

  /// Dark green for success text
  static const Color green200 = Color(0xFF1fc16b);

  // Info Colors (using primary palette)
  /// Light blue for info backgrounds
  static const Color info100 = primary100;

  /// Dark blue for info text
  static const Color info200 = primary400;

  // ===== SEMANTIC ALIASES =====
  // Mapping to functional names for easier usage

  /// Error color for validation and error messages
  static const Color error = red200;
  static const Color errorLight = red100;

  /// Warning color for alerts
  static const Color warning = yellow200;
  static const Color warningLight = yellow100;

  /// Success color for confirmation and success status
  static const Color success = green200;
  static const Color successLight = green100;

  /// Info color for information and tips
  static const Color info = info200;
  static const Color infoLight = info100;

  // ===== NEUTRAL PALETTE =====
  // Grayscale for text, backgrounds, and borders

  /// Pure white
  static const Color neutral100 = Color(0xFFf7f7f7);

  /// Very light gray for backgrounds
  static const Color neutral200 = Color(0xFFe4e4e4);

  /// Light gray for dividers
  static const Color neutral300 = Color(0xFFd2d2d2);

  /// Medium-light gray for disabled elements
  static const Color neutral400 = Color(0xFFbbbbbb);

  /// Medium gray for placeholders
  static const Color neutral500 = Color(0xFFa4a4a4);

  /// Medium-dark gray for secondary text
  static const Color neutral600 = Color(0xFF8e8e8e);

  /// Dark gray for body text
  static const Color neutral700 = Color(0xFF777777);

  /// Darker gray for important text
  static const Color neutral800 = Color(0xFF606060);

  /// Very dark gray for headings
  static const Color neutral900 = Color(0xFF4a4a4a);

  /// Almost black for emphasis
  static const Color neutral1000 = Color(0xFF333333);

  // ===== FUNCTIONAL ALIASES =====
  // More descriptive names for general usage

  /// Pure white for backgrounds and text on dark
  static const Color white = Color(0xFFFFFFFF);

  /// Almost black for text and icons
  static const Color black = neutral1000;

  // Background colors
  /// Main app background
  static const Color background = white;

  /// Card and surface backgrounds
  static const Color surface = neutral100;

  /// Elevated surface (slight shadow)
  static const Color surfaceVariant = neutral200;

  // Text colors by hierarchy
  /// Primary text color for headings
  static const Color textPrimary = neutral900;

  /// Secondary text color for body
  static const Color textSecondary = neutral700;

  /// Tertiary text color for captions
  static const Color textTertiary = neutral500;

  /// Disabled text color
  static const Color textDisabled = neutral400;

  // Border colors
  /// Main border color
  static const Color border = neutral200;

  /// Light border for dividers
  static const Color borderLight = neutral200;

  /// Dark border for focus states
  static const Color borderDark = neutral400;

  // ===== MATERIAL DESIGN INTEGRATION =====

  /// Material Color Swatch for primary color
  static const MaterialColor primarySwatch =
      MaterialColor(0xFF16bcd2, <int, Color>{
        50: Color(0xFFE3F8FB),
        100: Color(0xFFB8EEF5),
        200: Color(0xFF89E2EF),
        300: Color(0xFF5AD6E9),
        400: Color(0xFF36CDE4),
        500: Color(0xFF16bcd2),
        600: Color(0xFF14AABD),
        700: Color(0xFF1195A5),
        800: Color(0xFF0E818D),
        900: Color(0xFF096066),
      });

  /// Light theme color scheme
  static const ColorScheme lightColorScheme = ColorScheme.light(
    primary: primary,
    primaryContainer: primary100,
    secondary: secondary,
    secondaryContainer: secondary100,
    surface: surface,
    error: error,
    onPrimary: white,
    onSecondary: white,
    onSurface: textPrimary,
    onError: white,
  );

  /// Dark theme color scheme (for future implementation)
  static const ColorScheme darkColorScheme = ColorScheme.dark(
    primary: primary200,
    primaryContainer: primary500,
    secondary: secondary200,
    secondaryContainer: secondary500,
    surface: neutral900,
    error: red100,
    onPrimary: neutral900,
    onSecondary: neutral900,
    onSurface: neutral100,
    onError: neutral900,
  );

  // ===== UTILITY FUNCTIONS =====

  /// Generate color with opacity
  /// ```dart
  /// AppColors.withOpacity(AppColors.primary, 0.5)
  /// ```
  static Color withOpacity(Color color, double opacity) {
    return color.withAlpha((opacity * 255).round());
  }

  /// Generate color for disabled state
  /// ```dart
  /// AppColors.disabled(AppColors.primary) // 38% opacity
  /// ```
  static Color disabled(Color color) {
    return color.withAlpha((0.38 * 255).round());
  }

  /// Generate color for hover state
  /// ```dart
  /// AppColors.hover(AppColors.primary) // 8% overlay
  /// ```
  static Color hover(Color color) {
    return Color.alphaBlend(neutral900.withAlpha((0.08 * 255).round()), color);
  }
}
