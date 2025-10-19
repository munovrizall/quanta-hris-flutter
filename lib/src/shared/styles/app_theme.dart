import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'app_typography.dart';
import 'app_measures.dart';

/// Theme configuration for ACSM Mobile app
///
/// Provides centralized theme configuration for consistent UI design
/// across the entire application. Includes both light and dark themes
/// with comprehensive component theming.
///
/// ### Usage:
/// ```dart
/// MaterialApp(
///   theme: AppTheme.lightTheme,
///   darkTheme: AppTheme.darkTheme,
///   themeMode: ThemeMode.system,
/// )
/// ```
///
/// ### Access theme in widgets:
/// ```dart
/// final theme = Theme.of(context);
/// final colors = theme.colorScheme;
/// final textStyles = theme.textTheme;
///
/// // Components automatically use themed styles
/// ElevatedButton(...) // Uses AppTheme.elevatedButtonTheme
/// Card(...) // Uses AppTheme.cardTheme
/// ```
class AppTheme {
  const AppTheme._();

  // ===== MAIN THEMES =====

  /// Light theme configuration - Primary theme for the application
  static final ThemeData lightTheme = ThemeData(
    // Material 3 design system
    useMaterial3: true,

    // Color scheme based on AppColors
    colorScheme: AppColors.lightColorScheme,

    // Set default font family to Open Sans
    fontFamily: GoogleFonts.openSans().fontFamily,

    // Background color
    scaffoldBackgroundColor: AppColors.background,

    // Typography system
    textTheme: _buildTextTheme(),

    // App bar theme
    appBarTheme: _buildAppBarTheme(false),

    // Button themes
    elevatedButtonTheme: _buildElevatedButtonTheme(),
    textButtonTheme: _buildTextButtonTheme(),
    outlinedButtonTheme: _buildOutlinedButtonTheme(),
    filledButtonTheme: _buildFilledButtonTheme(),

    // Input decoration theme
    inputDecorationTheme: _buildInputDecorationTheme(false),

    // Card theme
    cardTheme: _buildCardTheme(),

    // Dialog theme
    dialogTheme: _buildDialogTheme(),

    // Bottom sheet theme
    bottomSheetTheme: _buildBottomSheetTheme(),

    // Navigation themes
    navigationBarTheme: _buildNavigationBarTheme(false),
    navigationRailTheme: _buildNavigationRailTheme(false),

    // List tile theme
    listTileTheme: _buildListTileTheme(false),

    // Chip theme
    chipTheme: _buildChipTheme(false),

    // Tab bar theme
    tabBarTheme: _buildTabBarTheme(false),

    // Form field themes
    switchTheme: _buildSwitchTheme(),
    checkboxTheme: _buildCheckboxTheme(),
    radioTheme: _buildRadioTheme(),

    // Slider theme
    sliderTheme: _buildSliderTheme(),

    // Progress indicator theme
    progressIndicatorTheme: _buildProgressIndicatorTheme(),

    // Divider theme
    dividerTheme: _buildDividerTheme(),

    // Icon themes
    iconTheme: _buildIconTheme(false),
    primaryIconTheme: _buildPrimaryIconTheme(),

    // Floating action button theme
    floatingActionButtonTheme: _buildFABTheme(),

    // Snackbar theme
    snackBarTheme: _buildSnackBarTheme(false),

    // Drawer theme
    drawerTheme: _buildDrawerTheme(false),

    // PopupMenu theme
    popupMenuTheme: _buildPopupMenuTheme(false),

    // Tooltip theme
    tooltipTheme: _buildTooltipTheme(),
  );

  /// Dark theme configuration - Alternative theme for dark mode
  static final ThemeData darkTheme = ThemeData(
    // Material 3 design system
    useMaterial3: true,

    // Dark color scheme
    colorScheme: AppColors.darkColorScheme,

    // Set default font family to Open Sans
    fontFamily: GoogleFonts.openSans().fontFamily,

    // Dark background
    scaffoldBackgroundColor: AppColors.neutral1000,

    // Typography system (same as light)
    textTheme: _buildTextTheme(isDark: true),

    // App bar theme for dark mode
    appBarTheme: _buildAppBarTheme(true),

    // Button themes (same as light)
    elevatedButtonTheme: _buildElevatedButtonTheme(),
    textButtonTheme: _buildTextButtonTheme(),
    outlinedButtonTheme: _buildOutlinedButtonTheme(),
    filledButtonTheme: _buildFilledButtonTheme(),

    // Input decoration theme for dark mode
    inputDecorationTheme: _buildInputDecorationTheme(true),

    // Component themes
    cardTheme: _buildCardTheme(isDark: true),
    dialogTheme: _buildDialogTheme(isDark: true),
    bottomSheetTheme: _buildBottomSheetTheme(isDark: true),
    navigationBarTheme: _buildNavigationBarTheme(true),
    navigationRailTheme: _buildNavigationRailTheme(true),
    listTileTheme: _buildListTileTheme(true),
    chipTheme: _buildChipTheme(true),
    tabBarTheme: _buildTabBarTheme(true),
    switchTheme: _buildSwitchTheme(),
    checkboxTheme: _buildCheckboxTheme(),
    radioTheme: _buildRadioTheme(),
    sliderTheme: _buildSliderTheme(),
    progressIndicatorTheme: _buildProgressIndicatorTheme(),
    dividerTheme: _buildDividerTheme(isDark: true),
    iconTheme: _buildIconTheme(true),
    primaryIconTheme: _buildPrimaryIconTheme(),
    floatingActionButtonTheme: _buildFABTheme(),
    snackBarTheme: _buildSnackBarTheme(true),
    drawerTheme: _buildDrawerTheme(true),
    popupMenuTheme: _buildPopupMenuTheme(true),
    tooltipTheme: _buildTooltipTheme(),
  );

  // ===== BACKWARD COMPATIBILITY =====

  /// Main theme - defaults to light theme for backward compatibility
  @Deprecated('Use lightTheme instead')
  static ThemeData get main => lightTheme;

  // ===== TEXT THEME =====

  /// Build text theme using AppTypography styles
  static TextTheme _buildTextTheme({bool isDark = false}) {
    return TextTheme(
      // Display styles
      displayLarge: AppTypography.displayLarge.copyWith(
        color: isDark ? AppColors.white : AppColors.neutral900,
      ),
      displayMedium: AppTypography.displayMedium.copyWith(
        color: isDark ? AppColors.white : AppColors.neutral900,
      ),
      displaySmall: AppTypography.heading1.copyWith(
        color: isDark ? AppColors.white : AppColors.neutral900,
      ),

      // Headline styles
      headlineLarge: AppTypography.heading1.copyWith(
        color: isDark ? AppColors.white : AppColors.neutral900,
      ),
      headlineMedium: AppTypography.heading2.copyWith(
        color: isDark ? AppColors.white : AppColors.neutral900,
      ),
      headlineSmall: AppTypography.heading3.copyWith(
        color: isDark ? AppColors.neutral100 : AppColors.neutral800,
      ),

      // Title styles
      titleLarge: AppTypography.subtitleLarge.copyWith(
        color: isDark ? AppColors.neutral100 : AppColors.neutral800,
      ),
      titleMedium: AppTypography.subtitleMedium.copyWith(
        color: isDark ? AppColors.neutral200 : AppColors.neutral700,
      ),
      titleSmall: AppTypography.labelLarge.copyWith(
        color: isDark ? AppColors.neutral100 : AppColors.neutral800,
      ),

      // Body styles
      bodyLarge: AppTypography.bodyLarge.copyWith(
        color: isDark ? AppColors.neutral200 : AppColors.neutral700,
      ),
      bodyMedium: AppTypography.bodyMedium.copyWith(
        color: isDark ? AppColors.neutral200 : AppColors.neutral700,
      ),
      bodySmall: AppTypography.bodySmall.copyWith(
        color: isDark ? AppColors.neutral300 : AppColors.neutral600,
      ),

      // Label styles
      labelLarge: AppTypography.labelLarge.copyWith(
        color: isDark ? AppColors.neutral100 : AppColors.neutral800,
      ),
      labelMedium: AppTypography.labelMedium.copyWith(
        color: isDark ? AppColors.neutral200 : AppColors.neutral700,
      ),
      labelSmall: AppTypography.labelSmall.copyWith(
        color: isDark ? AppColors.neutral300 : AppColors.neutral600,
      ),
    );
  }

  // ===== APP BAR THEME =====

  /// Build app bar theme
  static AppBarTheme _buildAppBarTheme(bool isDark) {
    return AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 1,
      backgroundColor: isDark ? AppColors.neutral900 : AppColors.surface,
      foregroundColor: isDark ? AppColors.white : AppColors.textPrimary,
      surfaceTintColor: AppColors.primary,
      shadowColor: AppColors.neutral900.withAlpha((0.1 * 255).round()),
      titleTextStyle: AppTypography.heading3.copyWith(
        color: isDark ? AppColors.white : AppColors.textPrimary,
      ),
      centerTitle: false,
      titleSpacing: AppSpacing.medium,
      systemOverlayStyle: isDark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(
        color: isDark ? AppColors.white : AppColors.textPrimary,
        size: AppSizes.iconMedium,
      ),
      actionsIconTheme: IconThemeData(
        color: isDark ? AppColors.white : AppColors.textPrimary,
        size: AppSizes.iconMedium,
      ),
    );
  }

  // ===== BUTTON THEMES =====

  /// Build elevated button theme
  static ElevatedButtonThemeData _buildElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        disabledBackgroundColor: AppColors.neutral400,
        disabledForegroundColor: AppColors.textDisabled,
        textStyle: AppTypography.buttonMedium,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.button),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.small,
          horizontal: AppSpacing.medium,
        ),
        minimumSize: const Size(0, AppSizes.buttonLarge),
        maximumSize: const Size(double.infinity, AppSizes.buttonLarge),
        elevation: 2,
        shadowColor: AppColors.neutral900.withAlpha((0.2 * 255).round()),
      ),
    );
  }

  static TextButtonThemeData _buildTextButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary, // ✅ Ganti dengan ini
        disabledForegroundColor: AppColors.textDisabled,
        textStyle: AppTypography.buttonMedium,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.button),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.small,
          horizontal: AppSpacing.medium,
        ),
        minimumSize: const Size(0, AppSizes.buttonLarge),
        maximumSize: const Size(double.infinity, AppSizes.buttonLarge),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  /// Build outlined button theme
  static OutlinedButtonThemeData _buildOutlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        disabledForegroundColor: AppColors.textDisabled,
        textStyle: AppTypography.buttonMedium,
        side: const BorderSide(
          color: AppColors.primary,
          width: AppBorders.thin,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.button),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.small,
          horizontal: AppSpacing.medium,
        ),
        minimumSize: const Size(0, AppSizes.buttonLarge),
        maximumSize: const Size(double.infinity, AppSizes.buttonLarge),
      ),
    );
  }

  /// Build filled button theme
  static FilledButtonThemeData _buildFilledButtonTheme() {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        disabledBackgroundColor: AppColors.neutral400,
        disabledForegroundColor: AppColors.textDisabled,
        textStyle: AppTypography.buttonMedium,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.button),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.small,
          horizontal: AppSpacing.medium,
        ),
        minimumSize: const Size(0, AppSizes.buttonLarge),
        maximumSize: const Size(double.infinity, AppSizes.buttonLarge),
      ),
    );
  }

  // ===== INPUT THEME =====

  /// Build input decoration theme
  static InputDecorationTheme _buildInputDecorationTheme(bool isDark) {
    final surfaceColor = isDark ? AppColors.neutral800 : AppColors.surface;
    final borderColor = isDark ? AppColors.neutral600 : AppColors.border;
    final labelColor = isDark ? AppColors.neutral200 : AppColors.neutral800;
    final hintColor = isDark ? AppColors.neutral400 : AppColors.textTertiary;

    return InputDecorationTheme(
      filled: true,
      fillColor: surfaceColor,
      contentPadding: const EdgeInsets.symmetric(
        vertical: AppSpacing.small,
        horizontal: AppSpacing.medium,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.input),
        borderSide: BorderSide(color: borderColor, width: AppBorders.thin),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.input),
        borderSide: BorderSide(color: borderColor, width: AppBorders.thin),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.input),
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: AppBorders.medium,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.input),
        borderSide: const BorderSide(
          color: AppColors.error,
          width: AppBorders.thin,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.input),
        borderSide: const BorderSide(
          color: AppColors.error,
          width: AppBorders.medium,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.input),
        borderSide: BorderSide(
          color: isDark ? AppColors.neutral700 : AppColors.neutral300,
          width: AppBorders.thin,
        ),
      ),
      labelStyle: AppTypography.labelLarge.copyWith(color: labelColor),
      floatingLabelStyle: AppTypography.labelLarge.copyWith(
        color: AppColors.primary,
      ),
      hintStyle: AppTypography.bodyMedium.copyWith(color: hintColor),
      errorStyle: AppTypography.bodySmall.copyWith(color: AppColors.error),
      helperStyle: AppTypography.bodySmall.copyWith(color: hintColor),
      prefixIconColor: labelColor,
      suffixIconColor: labelColor,
    );
  }

  // ===== CARD THEME =====

  /// Build card theme
  static CardThemeData _buildCardTheme({bool isDark = false}) {
    return CardThemeData(
      elevation: 1,
      shadowColor: AppColors.neutral900.withAlpha((0.1 * 255).round()),
      surfaceTintColor: isDark ? AppColors.neutral800 : AppColors.surface,
      color: isDark ? AppColors.neutral800 : AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.card),
      ),
      margin: const EdgeInsets.all(AppSpacing.xs),
      clipBehavior: Clip.antiAlias,
    );
  }

  // ===== DIALOG THEME =====

  /// Build dialog theme
  static DialogThemeData _buildDialogTheme({bool isDark = false}) {
    return DialogThemeData(
      elevation: 8,
      backgroundColor: isDark ? AppColors.neutral800 : AppColors.surface,
      surfaceTintColor: isDark ? AppColors.neutral800 : AppColors.surface,
      shadowColor: AppColors.neutral900.withAlpha((0.2 * 255).round()),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.dialog),
      ),
      titleTextStyle: AppTypography.heading2.copyWith(
        color: isDark ? AppColors.white : AppColors.textPrimary,
      ),
      contentTextStyle: AppTypography.bodyMedium.copyWith(
        color: isDark ? AppColors.neutral200 : AppColors.textSecondary,
      ),
      actionsPadding: const EdgeInsets.all(AppSpacing.medium),
      insetPadding: const EdgeInsets.all(AppSpacing.xl),
    );
  }

  // ===== BOTTOM SHEET THEME =====

  /// Build bottom sheet theme
  static BottomSheetThemeData _buildBottomSheetTheme({bool isDark = false}) {
    return BottomSheetThemeData(
      elevation: 8,
      backgroundColor: isDark ? AppColors.neutral800 : AppColors.surface,
      surfaceTintColor: isDark ? AppColors.neutral800 : AppColors.surface,
      shadowColor: AppColors.neutral900.withAlpha((0.2 * 255).round()),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppRadius.bottomSheet),
          topRight: Radius.circular(AppRadius.bottomSheet),
        ),
      ),
      constraints: const BoxConstraints(maxWidth: double.infinity),
      clipBehavior: Clip.antiAlias,
    );
  }

  // ===== NAVIGATION THEMES =====

  /// Build navigation bar theme
  static NavigationBarThemeData _buildNavigationBarTheme(bool isDark) {
    return NavigationBarThemeData(
      elevation: 3,
      backgroundColor: isDark ? AppColors.neutral900 : AppColors.surface,
      surfaceTintColor: isDark ? AppColors.neutral900 : AppColors.surface,
      shadowColor: AppColors.neutral900.withAlpha((0.1 * 255).round()),
      indicatorColor: AppColors.primary100,
      height: AppSizes.buttonXL + AppSpacing.medium,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(
            color: AppColors.primary,
            size: AppSizes.iconMedium,
          );
        }
        return IconThemeData(
          color: isDark ? AppColors.neutral400 : AppColors.textTertiary,
          size: AppSizes.iconMedium,
        );
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppTypography.labelSmall.copyWith(color: AppColors.primary);
        }
        return AppTypography.labelSmall.copyWith(
          color: isDark ? AppColors.neutral400 : AppColors.textTertiary,
        );
      }),
    );
  }

  /// Build navigation rail theme
  static NavigationRailThemeData _buildNavigationRailTheme(bool isDark) {
    return NavigationRailThemeData(
      elevation: 0,
      backgroundColor: isDark ? AppColors.neutral900 : AppColors.surface,
      indicatorColor: AppColors.primary100,
      selectedIconTheme: const IconThemeData(
        color: AppColors.primary,
        size: AppSizes.iconMedium,
      ),
      unselectedIconTheme: IconThemeData(
        color: isDark ? AppColors.neutral400 : AppColors.textTertiary,
        size: AppSizes.iconMedium,
      ),
      selectedLabelTextStyle: AppTypography.labelSmall.copyWith(
        color: AppColors.primary,
      ),
      unselectedLabelTextStyle: AppTypography.labelSmall.copyWith(
        color: isDark ? AppColors.neutral400 : AppColors.textTertiary,
      ),
      minWidth: AppSizes.iconHuge + AppSpacing.medium,
    );
  }

  // ===== LIST TILE THEME =====

  /// Build list tile theme
  static ListTileThemeData _buildListTileTheme(bool isDark) {
    return ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.medium,
        vertical: AppSpacing.xs,
      ),
      iconColor: isDark ? AppColors.neutral300 : AppColors.textSecondary,
      textColor: isDark ? AppColors.white : AppColors.textPrimary,
      titleTextStyle: AppTypography.bodyLarge.copyWith(
        color: isDark ? AppColors.white : AppColors.textPrimary,
      ),
      subtitleTextStyle: AppTypography.bodyMedium.copyWith(
        color: isDark ? AppColors.neutral300 : AppColors.textSecondary,
      ),
      leadingAndTrailingTextStyle: AppTypography.labelMedium,
      dense: false,
      visualDensity: VisualDensity.standard,
      minVerticalPadding: AppSpacing.xs,
    );
  }

  // ===== CHIP THEME =====

  /// Build chip theme
  static ChipThemeData _buildChipTheme(bool isDark) {
    return ChipThemeData(
      backgroundColor: isDark ? AppColors.neutral700 : AppColors.neutral200,
      deleteIconColor: isDark ? AppColors.neutral300 : AppColors.textSecondary,
      disabledColor: isDark ? AppColors.neutral800 : AppColors.neutral300,
      selectedColor: AppColors.primary100,
      secondarySelectedColor: AppColors.secondary100,
      shadowColor: AppColors.neutral900.withAlpha((0.1 * 255).round()),
      selectedShadowColor: AppColors.neutral900.withAlpha((0.1 * 255).round()),
      labelStyle: AppTypography.labelMedium.copyWith(
        color: isDark ? AppColors.white : AppColors.textPrimary,
      ),
      secondaryLabelStyle: AppTypography.labelMedium.copyWith(
        color: isDark ? AppColors.neutral300 : AppColors.textSecondary,
      ),
      brightness: isDark ? Brightness.dark : Brightness.light,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.small,
        vertical: AppSpacing.xs,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.full),
      ),
      side: BorderSide(
        color: isDark ? AppColors.neutral600 : AppColors.border,
        width: AppBorders.thin,
      ),
    );
  }

  // ===== TAB BAR THEME =====

  /// Build tab bar theme
  static TabBarThemeData _buildTabBarTheme(bool isDark) {
    return TabBarThemeData(
      indicator: UnderlineTabIndicator(
        borderSide: const BorderSide(
          color: AppColors.primary,
          width: AppBorders.medium,
        ),
        insets: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
      ),
      indicatorColor: AppColors.primary,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: AppColors.primary,
      unselectedLabelColor: isDark
          ? AppColors.neutral300
          : AppColors.textSecondary,
      labelStyle: AppTypography.labelLarge.copyWith(
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: AppTypography.labelLarge,
      labelPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.small),
      overlayColor: WidgetStateProperty.all(
        AppColors.primary.withAlpha((0.1 * 255).round()),
      ),
    );
  }

  // ===== FORM FIELD THEMES =====

  /// Build switch theme
  static SwitchThemeData _buildSwitchTheme() {
    return SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.neutral400;
        }
        if (states.contains(WidgetState.selected)) {
          // Saat switch ON → tetap putih
          return AppColors.white;
        }
        // Saat OFF juga putih
        return AppColors.white;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary; // ON track
        }
        if (states.contains(WidgetState.disabled)) {
          return AppColors.neutral300;
        }
        return AppColors.neutral400; // OFF track
      }),
      trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    );
  }

  /// Build checkbox theme
  static CheckboxThemeData _buildCheckboxTheme() {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        if (states.contains(WidgetState.disabled)) {
          return AppColors.neutral300;
        }
        return AppColors.white;
      }),
      checkColor: WidgetStateProperty.all(AppColors.white),
      overlayColor: WidgetStateProperty.all(
        AppColors.primary.withAlpha((0.1 * 255).round()),
      ),
      side: const BorderSide(
        color: AppColors.neutral400,
        width: AppBorders.medium,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.small),
      ),
    );
  }

  /// Build radio theme
  static RadioThemeData _buildRadioTheme() {
    return RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        if (states.contains(WidgetState.disabled)) {
          return AppColors.neutral300;
        }
        return AppColors.neutral400;
      }),
      overlayColor: WidgetStateProperty.all(
        AppColors.primary.withAlpha((0.1 * 255).round()),
      ),
    );
  }

  // ===== SLIDER THEME =====

  /// Build slider theme
  static SliderThemeData _buildSliderTheme() {
    return SliderThemeData(
      activeTrackColor: AppColors.primary,
      inactiveTrackColor: AppColors.primary100,
      thumbColor: AppColors.primary,
      overlayColor: AppColors.primary.withAlpha((0.1 * 255).round()),
      valueIndicatorColor: AppColors.primary,
      valueIndicatorTextStyle: AppTypography.labelSmall.copyWith(
        color: AppColors.white,
      ),
      trackHeight: 4.0,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
    );
  }

  // ===== PROGRESS INDICATOR THEME =====

  /// Build progress indicator theme
  static ProgressIndicatorThemeData _buildProgressIndicatorTheme() {
    return const ProgressIndicatorThemeData(
      color: AppColors.primary,
      linearTrackColor: AppColors.primary100,
      circularTrackColor: AppColors.primary100,
    );
  }

  // ===== DIVIDER THEME =====

  /// Build divider theme
  static DividerThemeData _buildDividerTheme({bool isDark = false}) {
    return DividerThemeData(
      color: isDark ? AppColors.neutral700 : AppColors.borderLight,
      thickness: AppBorders.thin,
      space: AppSpacing.medium,
      indent: 0,
      endIndent: 0,
    );
  }

  // ===== ICON THEMES =====

  /// Build icon theme
  static IconThemeData _buildIconTheme(bool isDark) {
    return IconThemeData(
      color: isDark ? AppColors.neutral200 : AppColors.textSecondary,
      size: AppSizes.iconMedium,
    );
  }

  /// Build primary icon theme
  static IconThemeData _buildPrimaryIconTheme() {
    return const IconThemeData(
      color: AppColors.primary,
      size: AppSizes.iconMedium,
    );
  }

  // ===== FLOATING ACTION BUTTON THEME =====

  /// Build floating action button theme
  static FloatingActionButtonThemeData _buildFABTheme() {
    return FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      elevation: 6,
      focusElevation: 8,
      hoverElevation: 8,
      highlightElevation: 12,
      disabledElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.full),
      ),
      iconSize: AppSizes.iconMedium,
    );
  }

  // ===== SNACKBAR THEME =====

  /// Build snackbar theme
  static SnackBarThemeData _buildSnackBarTheme(bool isDark) {
    return SnackBarThemeData(
      backgroundColor: isDark ? AppColors.neutral700 : AppColors.neutral800,
      contentTextStyle: AppTypography.bodyMedium.copyWith(
        color: AppColors.white,
      ),
      actionTextColor: AppColors.primary200,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.small),
      ),
      behavior: SnackBarBehavior.floating,
      insetPadding: const EdgeInsets.all(AppSpacing.medium),
    );
  }

  // ===== DRAWER THEME =====

  /// Build drawer theme
  static DrawerThemeData _buildDrawerTheme(bool isDark) {
    return DrawerThemeData(
      backgroundColor: isDark ? AppColors.neutral900 : AppColors.surface,
      surfaceTintColor: isDark ? AppColors.neutral900 : AppColors.surface,
      elevation: 8,
      shadowColor: AppColors.neutral900.withAlpha((0.2 * 255).round()),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppRadius.large),
          bottomRight: Radius.circular(AppRadius.large),
        ),
      ),
    );
  }

  // ===== POPUP MENU THEME =====

  /// Build popup menu theme
  static PopupMenuThemeData _buildPopupMenuTheme(bool isDark) {
    return PopupMenuThemeData(
      elevation: 8,
      color: isDark ? AppColors.neutral800 : AppColors.surface,
      surfaceTintColor: isDark ? AppColors.neutral800 : AppColors.surface,
      shadowColor: AppColors.neutral900.withAlpha((0.2 * 255).round()),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      textStyle: AppTypography.bodyMedium.copyWith(
        color: isDark ? AppColors.white : AppColors.textPrimary,
      ),
    );
  }

  // ===== TOOLTIP THEME =====

  /// Build tooltip theme
  static TooltipThemeData _buildTooltipTheme() {
    return TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.neutral800,
        borderRadius: BorderRadius.circular(AppRadius.small),
        boxShadow: AppShadows.medium,
      ),
      textStyle: AppTypography.bodySmall.copyWith(color: AppColors.white),
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.xs,
        horizontal: AppSpacing.small,
      ),
      margin: const EdgeInsets.all(AppSpacing.xs),
      waitDuration: AppDurations.medium,
      showDuration: AppDurations.toast,
    );
  }
}
