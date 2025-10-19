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

  // --- Onboarding Feature ---
  static const OnboardingImages onboarding = OnboardingImages();

  // --- Authentication Feature ---
  static const AuthImages auth = AuthImages();
  static const MonitoringImages monitor = MonitoringImages();
  static const ProfileSettingsImages profileSettings = ProfileSettingsImages();

  // --- Home Feature ---
  static const HomeImages home = HomeImages();
}

/// Images specific to global use (logos, placeholders, etc.)
class GlobalImages {
  const GlobalImages();

  final String logoSmartcool = '${AppImages._basePath}/smartcool-logo.svg';
  final String logoSmartcoolText =
      '${AppImages._basePath}/smartcool-logo-text.png';
  final String iconGoogle = '${AppImages._basePath}/google-icon.svg';
  final String iconIndonesia = '${AppImages._basePath}/indonesia-icon.png';
  final String iconEnglish = '${AppImages._basePath}/united-states-icon.png';
  final String iconAirConditioner = '${AppImages._basePath}/ac-icon.svg';
}

/// Images specific to the Onboarding feature
class OnboardingImages {
  const OnboardingImages();

  final String onboardingFirst = '${AppImages._basePath}/onboarding-1.png';
  final String onboardingSecond = '${AppImages._basePath}/onboarding-2.png';
  final String onboardingThird = '${AppImages._basePath}/onboarding-3.png';
}

class AuthImages {
  const AuthImages();

  final String illustrationLogin =
      '${AppImages._basePath}/auth_illustration.svg';
}

class MonitoringImages {
  const MonitoringImages();

  final String illustrationLogin = '${AppImages._basePath}/vector-2.png';

  final String windIcon = '${AppImages._basePath}/icon-pulse.png';

  final String acUnit1 = '${AppImages._basePath}/ac_unit.png';

  final String acUnit2 = '${AppImages._basePath}/ac_unit2.png';

  final String acUnit3 = '${AppImages._basePath}/ac_unit3.png';

  final String acWallmounted = '${AppImages._basePath}/ac-wallmounted.png';

  final String settingsIcon = '${AppImages._basePath}/settingss.png';

  final String fan1 = '${AppImages._basePath}/fan-1.png';

  final String IceCool = '${AppImages._basePath}/ice-cool.png';

  final String PartFan1 = '${AppImages._basePath}/part-fan-1.png';

  final String PartFan2 = '${AppImages._basePath}/part-fan-2.png';

  final String PartFan3 = '${AppImages._basePath}/part-fan-3.png';

  final String Swing1 = '${AppImages._basePath}/swing-1.png';

  final String Swing2 = '${AppImages._basePath}/swing-2.png';

  final String Swing3 = '${AppImages._basePath}/swing-3.png';

  final String Swing4 = '${AppImages._basePath}/swing-4.png';

  final String Swing5 = '${AppImages._basePath}/swing-5.png';

  final String Swing6 = '${AppImages._basePath}/swing-6.png';
}

class ProfileSettingsImages {
  const ProfileSettingsImages();

  final String editProfile = '${AppImages._basePath}/edit-profile.png';

  final String changeLanguage = '${AppImages._basePath}/change-language.png';

  final String settings = '${AppImages._basePath}/Profile-settings.png';

  final String signOut = '${AppImages._basePath}/SignOut 1.png';
}

class HomeImages {
  const HomeImages();

  final String illustrationHeader =
      '${AppImages._basePath}/home-illustration.webp';
}
