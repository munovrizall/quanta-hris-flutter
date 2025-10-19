import 'package:flutter/material.dart';

/// Design system measurements for ACSM Mobile app
/// 
/// This file contains standardized spacing, radius, size, and other measurements
/// to ensure consistent layout and design across the application.
/// 
/// ### Usage Examples:
/// ```dart
/// // Spacing
/// Padding(
///   padding: EdgeInsets.all(AppSpacing.medium),
///   child: widget,
/// )
/// 
/// // Border radius
/// Container(
///   decoration: BoxDecoration(
///     borderRadius: BorderRadius.circular(AppRadius.large),
///   ),
/// )
/// 
/// // Icon sizes
/// Icon(Icons.home, size: AppSizes.iconMedium)
/// 
/// // Shadows
/// Container(
///   decoration: BoxDecoration(
///     boxShadow: AppShadows.medium,
///   ),
/// )
/// ```

/// Standardized spacing values for consistent layout
/// 
/// Follows a 4dp grid system for predictable and harmonious spacing.
/// Use these values for:
/// - Padding and margins
/// - Gap between elements
/// - Component internal spacing
class AppSpacing {
  const AppSpacing._();

  // ===== BASE SPACING SCALE =====
  // Based on 4dp grid system
  
  /// 4dp - Extra extra small spacing for micro adjustments
  static const double xxs = 4.0;
  
  /// 8dp - Extra small spacing for tight layouts
  static const double xs = 8.0;
  
  /// 12dp - Small spacing for compact components
  static const double small = 12.0;
  
  /// 16dp - Medium spacing - most commonly used
  static const double medium = 16.0;
  
  /// 20dp - Large spacing for generous layouts  
  static const double large = 20.0;
  
  /// 24dp - Extra large spacing for section separation
  static const double xl = 24.0;
  
  /// 32dp - Extra extra large spacing for major sections
  static const double xxl = 32.0;
  
  /// 40dp - Huge spacing for page-level separation
  static const double huge = 40.0;
  
  /// 48dp - Extra huge spacing for maximum separation
  static const double xHuge = 48.0;

  // ===== BACKWARD COMPATIBILITY =====
  @Deprecated('Use xxs instead')
  static const double spacingXXS = xxs;
  
  @Deprecated('Use xs instead') 
  static const double spacingXS = xs;
  
  @Deprecated('Use small instead')
  static const double spacingS = small;
  
  @Deprecated('Use medium instead')
  static const double spacingM = medium;
  
  @Deprecated('Use large instead')
  static const double spacingL = large;
  
  @Deprecated('Use xl instead')
  static const double spacingXL = xl;
  
  @Deprecated('Use xxl instead')
  static const double spacingXXL = xxl;

  // ===== SEMANTIC SPACING =====
  // Context-specific spacing values
  
  /// Standard page horizontal padding
  static const double pagePadding = medium;
  
  /// Standard card internal padding
  static const double cardPadding = medium;
  
  /// Spacing between list items
  static const double listItemSpacing = small;
  
  /// Spacing between form fields
  static const double formFieldSpacing = medium;
  
  /// Spacing between sections
  static const double sectionSpacing = xl;
  
  /// Bottom navigation safe area
  static const double bottomSafeArea = xl;
}

/// Standardized border radius values for consistent rounded corners
/// 
/// Use these values for:
/// - Container border radius
/// - Button border radius  
/// - Card border radius
/// - Image border radius
class AppRadius {
  const AppRadius._();

  // ===== BASE RADIUS SCALE =====
  
  /// 4dp - Small radius for subtle rounding
  static const double small = 4.0;
  
  /// 8dp - Medium radius - most commonly used
  static const double medium = 8.0;
  
  /// 12dp - Large radius for more pronounced rounding
  static const double large = 12.0;
  
  /// 16dp - Extra large radius for soft appearance
  static const double xl = 16.0;
  
  /// 20dp - Extra extra large radius
  static const double xxl = 20.0;
  
  /// 24dp - Huge radius for pill-like shapes
  static const double huge = 24.0;
  
  /// 999dp - Full radius for circular elements
  static const double full = 999.0;

  // ===== BACKWARD COMPATIBILITY =====
  @Deprecated('Use small instead')
  static const double radiusS = small;
  
  @Deprecated('Use medium instead')
  static const double radiusM = medium;
  
  @Deprecated('Use large instead')
  static const double radiusL = large;
  
  @Deprecated('Use xl instead')
  static const double radiusXL = xl;

  // ===== SEMANTIC RADIUS =====
  // Context-specific radius values
  
  /// Standard button border radius
  static const double button = full;
  
  /// Standard card border radius
  static const double card = large;
  
  /// Input field border radius
  static const double input = medium;
  
  /// Dialog border radius
  static const double dialog = xl;
  
  /// Bottom sheet border radius
  static const double bottomSheet = xl;
  
  /// Avatar border radius
  static const double avatar = full;
}

/// Standardized size values for icons, buttons, and other elements
/// 
/// Use these values for:
/// - Icon sizes
/// - Button heights
/// - Avatar dimensions
/// - Thumbnail sizes
class AppSizes {
  const AppSizes._();

  // ===== ICON SIZES =====
  
  /// 12dp - Extra small icons
  static const double iconXS = 12.0;
  
  /// 16dp - Small icons  
  static const double iconSmall = 16.0;
  
  /// 20dp - Medium icons - most commonly used
  static const double iconMedium = 20.0;
  
  /// 24dp - Large icons
  static const double iconLarge = 24.0;
  
  /// 32dp - Extra large icons
  static const double iconXL = 32.0;
  
  /// 40dp - Huge icons for prominent elements
  static const double iconHuge = 40.0;

  // ===== BUTTON HEIGHTS =====
  
  /// 32dp - Small button height
  static const double buttonSmall = 32.0;
  
  /// 40dp - Medium button height
  static const double buttonMedium = 40.0;
  
  /// 48dp - Large button height - recommended minimum touch target
  static const double buttonLarge = 48.0;
  
  /// 56dp - Extra large button height
  static const double buttonXL = 56.0;

  // ===== AVATAR SIZES =====
  
  /// 24dp - Extra small avatar
  static const double avatarXS = 24.0;
  
  /// 32dp - Small avatar
  static const double avatarSmall = 32.0;
  
  /// 40dp - Medium avatar
  static const double avatarMedium = 40.0;
  
  /// 56dp - Large avatar
  static const double avatarLarge = 56.0;
  
  /// 80dp - Extra large avatar
  static const double avatarXL = 80.0;
  
  /// 120dp - Huge avatar for profile pages
  static const double avatarHuge = 120.0;

  // ===== INPUT HEIGHTS =====
  
  /// 40dp - Small input field height
  static const double inputSmall = 40.0;
  
  /// 48dp - Medium input field height
  static const double inputMedium = 48.0;
  
  /// 56dp - Large input field height
  static const double inputLarge = 56.0;

  // ===== THUMBNAIL SIZES =====
  
  /// 60dp - Small thumbnail
  static const double thumbnailSmall = 60.0;
  
  /// 80dp - Medium thumbnail
  static const double thumbnailMedium = 80.0;
  
  /// 120dp - Large thumbnail
  static const double thumbnailLarge = 120.0;
  
  /// 160dp - Extra large thumbnail
  static const double thumbnailXL = 160.0;

  // ===== MINIMUM TOUCH TARGETS =====
  // Following Material Design accessibility guidelines
  
  /// 44dp - Minimum touch target size for iOS
  static const double minTouchTargetIOS = 44.0;
  
  /// 48dp - Minimum touch target size for Android
  static const double minTouchTargetAndroid = 48.0;
  
  /// 48dp - Recommended minimum touch target
  static const double minTouchTarget = minTouchTargetAndroid;
}

/// Standardized shadow configurations for elevation and depth
/// 
/// Use these pre-configured shadow lists for consistent elevation across
/// the application. Each shadow level corresponds to Material Design elevation.
class AppShadows {
  const AppShadows._();

  // ===== ELEVATION SHADOWS =====
  
  /// Subtle shadow - 1dp elevation
  /// For cards at rest
  static const List<BoxShadow> low = [
    BoxShadow(
      color: Color(0x0D000000), // 5% black
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];
  
  /// Standard shadow - 2dp elevation  
  /// For raised buttons, floating action buttons
  static const List<BoxShadow> medium = [
    BoxShadow(
      color: Color(0x14000000), // 8% black
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: Color(0x0A000000), // 4% black
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];
  
  /// Pronounced shadow - 4dp elevation
  /// For app bars, dialogs
  static const List<BoxShadow> high = [
    BoxShadow(
      color: Color(0x1F000000), // 12% black
      offset: Offset(0, 4),
      blurRadius: 8,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: Color(0x14000000), // 8% black
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: 0,
    ),
  ];
  
  /// Strong shadow - 8dp elevation
  /// For navigation drawers, modal bottom sheets
  static const List<BoxShadow> strong = [
    BoxShadow(
      color: Color(0x29000000), // 16% black
      offset: Offset(0, 8),
      blurRadius: 16,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: Color(0x14000000), // 8% black
      offset: Offset(0, 4),
      blurRadius: 8,
      spreadRadius: 0,
    ),
  ];
  
  /// Maximum shadow - 16dp elevation
  /// For temporary surfaces like menus, tooltips
  static const List<BoxShadow> maximum = [
    BoxShadow(
      color: Color(0x33000000), // 20% black
      offset: Offset(0, 16),
      blurRadius: 32,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: Color(0x1F000000), // 12% black
      offset: Offset(0, 8),
      blurRadius: 16,
      spreadRadius: 0,
    ),
  ];
}

/// Standardized border configurations
/// 
/// Pre-configured border styles for consistent stroke appearance
/// across different components.
class AppBorders {
  const AppBorders._();

  // ===== BORDER WIDTHS =====
  
  /// 1dp - Standard border width
  static const double thin = 1.0;
  
  /// 2dp - Medium border width
  static const double medium = 2.0;
  
  /// 3dp - Thick border width
  static const double thick = 3.0;

  // ===== COMMON BORDER SIDES =====
  
  /// Thin bottom border - commonly used for dividers
  static const BorderSide bottomThin = BorderSide(
    width: thin,
    color: Color(0xFFd2d2d2), // AppColors.neutral300
  );
  
  /// Medium all-around border
  static const BorderSide allMedium = BorderSide(
    width: medium,
    color: Color(0xFFd2d2d2), // AppColors.neutral300
  );
  
  /// Thick accent border
  static const BorderSide accentThick = BorderSide(
    width: thick,
    color: Color(0xFF16bcd2), // AppColors.primary
  );
}

/// Animation duration constants for consistent motion design
/// 
/// Use these durations for:
/// - Transitions
/// - Animations
/// - Loading states
/// - Micro-interactions
class AppDurations {
  const AppDurations._();

  // ===== ANIMATION DURATIONS =====
  
  /// 100ms - Very fast animations for micro-interactions
  static const Duration veryFast = Duration(milliseconds: 100);
  
  /// 200ms - Fast animations for quick feedback
  static const Duration fast = Duration(milliseconds: 200);
  
  /// 300ms - Standard animation duration - most commonly used
  static const Duration standard = Duration(milliseconds: 300);
  
  /// 500ms - Medium animations for significant changes
  static const Duration medium = Duration(milliseconds: 500);
  
  /// 800ms - Slow animations for complex transitions
  static const Duration slow = Duration(milliseconds: 800);
  
  /// 1200ms - Very slow animations for emphasis
  static const Duration verySlow = Duration(milliseconds: 1200);

  // ===== SEMANTIC DURATIONS =====
  
  /// Button press feedback duration
  static const Duration buttonPress = fast;
  
  /// Page transition duration
  static const Duration pageTransition = standard;
  
  /// Modal appearance duration
  static const Duration modalTransition = standard;
  
  /// Loading spinner duration
  static const Duration loading = medium;
  
  /// Toast message duration
  static const Duration toast = Duration(milliseconds: 4000);
  
  /// Snackbar duration
  static const Duration snackbar = Duration(milliseconds: 4000);
}

/// Breakpoint values for responsive design
/// 
/// Use these breakpoints to create layouts that adapt to different
/// screen sizes and orientations.
class AppBreakpoints {
  const AppBreakpoints._();

  // ===== SCREEN BREAKPOINTS =====
  
  /// Mobile portrait - up to 480dp width
  static const double mobile = 480.0;
  
  /// Tablet portrait - up to 768dp width  
  static const double tablet = 768.0;
  
  /// Desktop - above 768dp width
  static const double desktop = 769.0;
  
  /// Large desktop - above 1200dp width
  static const double largeDesktop = 1200.0;

  // ===== UTILITY METHODS =====
  
  /// Check if current width is mobile size
  static bool isMobile(double width) => width < mobile;
  
  /// Check if current width is tablet size
  static bool isTablet(double width) => width >= mobile && width < desktop;
  
  /// Check if current width is desktop size
  static bool isDesktop(double width) => width >= desktop;
  
  /// Check if current width is large desktop size
  static bool isLargeDesktop(double width) => width >= largeDesktop;
}