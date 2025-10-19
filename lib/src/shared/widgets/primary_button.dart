import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // ✅ Import untuk SVG support

/// Enum untuk variant button
enum PrimaryButtonVariant { primary, outline, text }

/// Enum untuk ukuran button
enum PrimaryButtonSize { small, medium, large }

/// Enum untuk posisi icon
enum PrimaryButtonIconPosition { left, right } // ✅ Enum untuk posisi icon

/// Class untuk menentukan jenis icon (SVG atau IconData)
abstract class ButtonIcon {
  const ButtonIcon();
}

/// Icon menggunakan IconData (Material Icons)
class ButtonIconData extends ButtonIcon {
  final IconData iconData;
  final Color? color;

  const ButtonIconData(this.iconData, {this.color});
}

/// Icon menggunakan SVG asset
class ButtonIconSvg extends ButtonIcon {
  final String assetPath;
  final Color? color;
  final double? width;
  final double? height;

  const ButtonIconSvg(this.assetPath, {this.color, this.width, this.height});
}

/// Custom Button Component untuk aplikasi ACSM Mobile
///
/// Mendukung berbagai variant (primary, outline, text), ukuran, dan ikon.
///
/// ## Contoh Penggunaan:
///
/// ### Button dengan IconData
/// ```dart
/// PrimaryButton(
///   text: 'Delete',
///   icon: ButtonIconData(Icons.delete),
///   iconPosition: PrimaryButtonIconPosition.left,
///   onPressed: () => _handleDelete(),
/// )
/// ```
///
/// ### Button dengan SVG Icon
/// ```dart
/// PrimaryButton(
///   text: 'Login with Google',
///   icon: ButtonIconSvg('assets/icons/google.svg'),
///   iconPosition: PrimaryButtonIconPosition.left,
///   onPressed: () => _handleGoogleLogin(),
/// )
/// ```
///
/// ### Button Outline dengan Icon di Kanan
/// ```dart
/// PrimaryButton(
///   text: 'Next',
///   variant: PrimaryButtonVariant.outline,
///   icon: ButtonIconData(Icons.arrow_forward),
///   iconPosition: PrimaryButtonIconPosition.right,
///   onPressed: () => _handleNext(),
/// )
/// ```
class PrimaryButton extends StatelessWidget {
  // ... (properti Anda sudah benar)
  final String text;
  final VoidCallback? onPressed;
  final PrimaryButtonVariant variant;
  final PrimaryButtonSize size;
  final ButtonIcon? icon;
  final PrimaryButtonIconPosition iconPosition;
  final bool isLoading;
  final String? loadingText;
  final bool fullWidth;
  final Widget? customLoadingIndicator;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = PrimaryButtonVariant.primary,
    this.size = PrimaryButtonSize.large,
    this.icon,
    this.iconPosition = PrimaryButtonIconPosition.left,
    this.isLoading = false,
    this.loadingText,
    this.fullWidth = true,
    this.customLoadingIndicator,
  });

  // ... (constructor .withIcon dan .withSvg sudah benar)

  @override
  Widget build(BuildContext context) {
    // Tentukan tinggi button berdasarkan size
    double height = _getHeight();
    EdgeInsets padding = _getPadding();
    Widget buttonChild = _buildButtonChild(context);
    Widget button = _buildButton(context, buttonChild, height, padding);
    if (variant == PrimaryButtonVariant.text) {
      return fullWidth
          ? SizedBox(width: double.infinity, child: button)
          : button;
    }
    return fullWidth
        ? SizedBox(width: double.infinity, height: height, child: button)
        : SizedBox(height: height, child: button);
  }

  // --- PRIVATE BUILD HELPERS ---

  Widget _buildButton(
    BuildContext context,
    Widget child,
    double height,
    EdgeInsets padding,
  ) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    // Tentukan textStyle berdasarkan variant untuk DITERUSKAN ke theme
    final ButtonStyle? buttonStyle = switch (variant) {
      PrimaryButtonVariant.primary => theme.elevatedButtonTheme.style?.copyWith(
        foregroundColor: WidgetStateProperty.all(colors.onPrimary),
      ),
      PrimaryButtonVariant.outline => theme.outlinedButtonTheme.style?.copyWith(
        foregroundColor: WidgetStateProperty.all(colors.primary),
      ),
      PrimaryButtonVariant.text => theme.textButtonTheme.style?.copyWith(
        foregroundColor: WidgetStateProperty.all(colors.primary),
      ),
    };

    switch (variant) {
      case PrimaryButtonVariant.primary:
        return ElevatedButton(
          onPressed: isLoading ? () {} : onPressed,
          style: buttonStyle,
          child: child,
        );
      case PrimaryButtonVariant.outline:
        return OutlinedButton(
          onPressed: isLoading ? () {} : onPressed,
          style: buttonStyle,
          child: child,
        );
      case PrimaryButtonVariant.text:
        return TextButton(
          onPressed: isLoading ? () {} : onPressed,
          style: buttonStyle,
          child: child,
        );
    }
  }

  Widget _buildButtonChild(BuildContext context) {
    if (isLoading) {
      return _buildLoadingContent(context);
    }
    if (icon != null) {
      return _buildIconContent(context);
    }
    // Cukup kembalikan Text. Styling akan ditangani oleh ButtonTheme.
    return Text(text);
  }

  Widget _buildLoadingContent(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final indicatorColor = variant == PrimaryButtonVariant.primary
        ? colors.onPrimary
        : colors.primary;

    Widget loadingIndicator =
        customLoadingIndicator ??
        SizedBox(
          height: _getLoadingSize(),
          width: _getLoadingSize(),
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
          ),
        );

    if (loadingText != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loadingIndicator,
          SizedBox(width: _getSpacing()),
          Text(loadingText!),
        ],
      );
    }
    return loadingIndicator;
  }

  Widget _buildIconContent(BuildContext context) {
    Widget iconWidget = _buildIconWidget(context);
    Widget textWidget = Text(text);

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: iconPosition == PrimaryButtonIconPosition.right
          ? [textWidget, SizedBox(width: _getSpacing()), iconWidget]
          : [iconWidget, SizedBox(width: _getSpacing()), textWidget],
    );
  }

  Widget _buildIconWidget(BuildContext context) {
    final iconSize = _getIconSize();
    final iconColor = (icon is ButtonIconData)
        ? (icon as ButtonIconData).color
        : null;

    if (icon is ButtonIconData) {
      return Icon(
        (icon as ButtonIconData).iconData,
        size: iconSize,
        color: iconColor,
      );
    } else if (icon is ButtonIconSvg) {
      final iconSvg = icon as ButtonIconSvg;
      return SvgPicture.asset(
        iconSvg.assetPath,
        width: iconSvg.width ?? iconSize,
        height: iconSvg.height ?? iconSize,
        colorFilter: iconSvg.color != null
            ? ColorFilter.mode(iconSvg.color!, BlendMode.srcIn)
            : null, // SVG butuh ColorFilter untuk mewarnai
      );
    }
    return const SizedBox.shrink();
  }

  double _getHeight() {
    // Untuk variant text, berikan tinggi yang lebih fleksibel
    if (variant == PrimaryButtonVariant.text) {
      switch (size) {
        case PrimaryButtonSize.small:
          return AppSizes.buttonSmall * 0.8;
        case PrimaryButtonSize.medium:
          return AppSizes.buttonMedium * 0.8;
        case PrimaryButtonSize.large:
          return AppSizes.buttonLarge * 0.8;
      }
    }

    switch (size) {
      case PrimaryButtonSize.small:
        return AppSizes.buttonSmall;
      case PrimaryButtonSize.medium:
        return AppSizes.buttonMedium;
      case PrimaryButtonSize.large:
        return AppSizes.buttonLarge;
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case PrimaryButtonSize.small:
        return EdgeInsets.symmetric(
          horizontal: AppSpacing.medium,
          vertical: variant == PrimaryButtonVariant.text
              ? AppSpacing.xs
              : AppSpacing.small,
        );
      case PrimaryButtonSize.medium:
        return EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: variant == PrimaryButtonVariant.text
              ? AppSpacing.small
              : AppSpacing.medium,
        );
      case PrimaryButtonSize.large:
        return EdgeInsets.symmetric(
          horizontal: AppSpacing.xl,
          vertical: variant == PrimaryButtonVariant.text
              ? AppSpacing.medium
              : AppSpacing.medium,
        );
    }
  }

  double _getIconSize() {
    switch (size) {
      case PrimaryButtonSize.small:
        return 16;
      case PrimaryButtonSize.medium:
        return 20;
      case PrimaryButtonSize.large:
        return 24;
    }
  }

  double _getLoadingSize() {
    switch (size) {
      case PrimaryButtonSize.small:
        return 8;
      case PrimaryButtonSize.medium:
        return 12;
      case PrimaryButtonSize.large:
        return 16;
    }
  }

  double _getSpacing() {
    switch (size) {
      case PrimaryButtonSize.small:
        return AppSpacing.xs;
      case PrimaryButtonSize.medium:
        return AppSpacing.small;
      case PrimaryButtonSize.large:
        return AppSpacing.small;
    }
  }
}
