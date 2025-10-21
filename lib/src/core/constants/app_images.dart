/// A centralized repository for all image asset paths in the application.
///
/// This class prevents hardcoded asset paths in widgets, making it easy to
/// manage, update, and locate image resources.
///
/// ## Naming Convention
///
/// The constants are named following a consistent camelCase pattern:
///
/// ### `featureWidgetTypeDescription`
///
/// - **feature**: The feature or screen where the image is used (e.g., `auth`, `home`, `global`).
/// - **WidgetType**: The type of element the image represents (e.g., `logo`, `icon`, `illustration`, `background`).
/// - **Description**: A brief, capitalized description of the image.
///
/// ### Examples:
///
/// - `authIllustrationLogin`: The "illustration" for the "login" screen in the "auth" feature.
/// - `globalLogoPrimary`: The primary "logo" used globally.
/// - `homeIconProfile`: The "icon" for "profile" on the "home" screen.
///
/// ## Usage
///
/// ```dart
/// // Always ensure the asset path is declared in pubspec.yaml
/// Image.asset(AppImages.auth.illustrationLogin);
/// ```
class AppImages {
  const AppImages._(); // Private constructor

  // --- Base path for all images ---
  static const String _basePath = 'assets/images';

  // --- Global Images ---
  // Images used in multiple places across the app
  static const GlobalImages global = GlobalImages();

}

/// Images specific to global use (logos, placeholders, etc.)
class GlobalImages {
  const GlobalImages();

  final String logoSmartcool = '${AppImages._basePath}/smartcool-logo.svg';
  final String logoSmartcoolText =
      '${AppImages._basePath}/smartcool-logo-text.png';
}


