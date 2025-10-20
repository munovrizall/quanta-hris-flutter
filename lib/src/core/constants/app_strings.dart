/// A centralized repository for all user-facing strings in the application.
///
/// This class prevents hardcoded strings in the UI, making it easy to
/// manage, update, and eventually internationalize the app's text.
///
/// ## Naming Convention
///
/// The constants are named following a consistent camelCase pattern:
///
/// ### `featureWidgetTypeDescription`
///
/// - **feature**: The feature or screen where the string is used (e.g., `auth`, `home`, `global`).
/// - **WidgetType**: The type of widget displaying the string (e.g., `title`, `label`, `button`).
/// - **Description**: A brief, capitalized description of the string's content.
///
/// ### Examples:
///
/// - `authLabelEmail`: The "label" for the "email" field on the "auth" screen.
/// - `globalButtonSave`: The text for a generic "save" button.
/// - `homeTitleWelcome`: The "welcome" title on the "home" screen.
///
class AppStrings {
  const AppStrings._(); // Private constructor

  // --- Global Strings ---
  // Used in multiple places across the app
  static const String globalButtonOk = 'OK';
  static const String globalButtonCancel = 'Cancel';
  static const String globalButtonSubmit = 'Submit';
  static const String globalButtonBack = 'Kembali';
  static const String globalButtonSelect = 'Pilih';
  static const String globalErrorUnexpected = 'An unexpected error occurred.';
  static const String globalAppName = 'ACSM Mobile App';
  static const String globalLoading = 'Loading...';
  static const String globalTryAgain = 'Coba Lagi';

  // --- Error Handling Strings ---
  static const ErrorStrings error = ErrorStrings();

  // --- Onboarding Feature ---
  static const OnboardingStrings onboarding = OnboardingStrings();

  // --- Authentication Feature ---
  static AuthStrings auth = AuthStrings();

  // --- Home Feature ---
  static const HomeStrings home = HomeStrings();

  // --- Monitoring Feature ---
  static const MonitoringStrings monitoring = MonitoringStrings();
}

/// Strings specific to Error Handling
class ErrorStrings {
  const ErrorStrings();

  // Timeout Errors
  final String connectionTimeout = 'Connection timed out. Please try again.';

  // HTTP Status Code Errors
  final String badRequest = 'Permintaan tidak valid.';
  final String unauthorized = 'Tidak diizinkan. Silakan login kembali.';
  final String notFound = 'Sumber daya yang diminta tidak ditemukan.';
  final String internalServerError =
      'Terjadi kesalahan server. Silakan coba lagi nanti.';
  final String unexpectedError = 'Terjadi kesalahan yang tidak terduga.';

  // Network Errors
  final String requestCancelled = 'Permintaan ke server dibatalkan.';
  final String noInternetConnection = 'Tidak ada koneksi internet.';

  // Generic Error Template
  final String genericError = 'Terjadi kesalahan yang tidak terduga: ';
}

/// Strings specific to the Onboarding feature
class OnboardingStrings {
  const OnboardingStrings();

  // Page Titles
  final String titleFirst = 'Atur AC Tanpa Ribet,\nKapan Saja Dimana Saja';
  final String titleSecond =
      'Pantau Konsumsi Listrik, Kurangi\nTagihan & Jejak Karbon.';
  final String titleThird = 'Undang Keluarga,\nPantau AC Bersama';

  // Buttons
  final String buttonLoginEmail = 'Login dengan Email';
  final String buttonLoginGoogle = 'Login dengan Google';
  final String buttonRegister = 'Daftar Disini!';

  // Text
  final String textNoAccount = 'Belum punya akun?  ';

  // Language
  final String languageCode = 'ID';
}

/// Strings specific to the Authentication feature (Login, Register, etc.)
class AuthStrings {
  AuthStrings();

  // Titles
  final String titleLogin = 'Login';
  final String titleRegister = 'Daftar Akun Baru';
  final String titleRegisterSubtitle =
      'Buat akun untuk mulai menggunakan ACSM Mobile';
  final String titleWelcome = 'Selamat Datang';
  final String titleWelcomeSubtitle = 'Masuk untuk mengakses akun Anda';

  // Labels
  final String labelEmail = 'Email';
  final String labelPassword = 'Password';
  final String labelPasswordConfirmation = 'Konfirmasi Password';
  final String labelLogin = 'Username or Email';
  final String labelTitle = 'Sebutan';
  final String labelFullName = 'Nama Lengkap';

  // Hints
  final String hintEmail = 'user@email.com';
  final String hintPassword = 'Masukkan Password Anda';
  final String hintPasswordConfirmation = 'Masukkan ulang password';
  final String hintTitle = 'Contoh: Bapak, Ibu, Saudara';
  final String hintFullName = 'Masukkan nama lengkap Anda';

  // Buttons
  final String buttonLogin = 'Masuk';
  final String buttonLoginLoading = 'Memproses...';
  final String buttonRegister = 'Daftar';
  final String buttonRegisterLoading = 'Mendaftarkan...';
  final String buttonLogout = 'Logout';
  final String buttonForgotPassword = 'Lupa Password?';

  // Text
  final String textAlreadyHaveAccount = 'Sudah punya akun? ';

  // Validation Messages
  final String validationEmailEmpty = 'Email tidak boleh kosong';
  final String validationEmailInvalid = 'Format email tidak valid';
  final String validationPasswordEmpty = 'Password tidak boleh kosong';
  final String validationPasswordMinLength = 'Password minimal 3 karakter';
  final String validationPasswordTooShort = 'Password minimal 8 karakter';
  final String validationPasswordConfirmationEmpty =
      'Konfirmasi password tidak boleh kosong';
  final String validationPasswordMismatch = 'Password tidak sama';
  final String validationTitleEmpty = 'Pilih gelar terlebih dahulu';
  final String validationFullNameEmpty = 'Nama lengkap tidak boleh kosong';
  final String validationFullNameTooShort = 'Nama lengkap minimal 2 karakter';

  // Success Messages
  final String messageLoginSuccess = 'Selamat datang, {name}!';
  final String messageRegisterSuccess =
      'Selamat datang {name}! Akun berhasil dibuat';

  // Error Messages
  final String errorInvalidCredentials = 'Email atau password salah';
  final String errorNetworkTimeout = 'Koneksi timeout';
  final String errorNoInternet = 'Tidak ada koneksi internet';
  final String errorValidationFailed = 'Data tidak valid';
  final String errorServerError = 'Terjadi kesalahan server';
  final String errorUnknownNetwork = 'Terjadi kesalahan jaringan';
  final String errorLoginFailed = 'Terjadi kesalahan saat login';

  // Features
  final String featureForgotPasswordNotAvailable =
      'Fitur lupa password belum tersedia';

  final List<String> optionsTitle = ['Bpk', 'Ibu'];
}

/// Strings specific to the Home feature

/// Strings specific to the Home feature
class HomeStrings {
  const HomeStrings();

  final String titlePage = 'Home';
  final String titleWelcome = 'Halo';
  final String bodyWelcome = 'Pegang Kendali Dinginmu';

  final String titleEnergySummaryDaily = 'Hari ini';
  final String titleEnergySummaryMonthly = 'Bulan ini';

  final String titleSitePickerSheet = 'Pilih Site';
  final String titleRoomPickerSheet = 'Pilih Ruangan';

  final String hintSearchSite = 'Cari site...';
  final String hintSearchRoom = 'Cari ruangan...';

  final String loadingAcData = 'Memuat data AC...';

  final String errorSiteNotFound = 'Site tidak ditemukan';
  final String errorLoadAcData = 'Gagal memuat data AC';
  final String errorNoRoomInSite = 'Tidak ada ruangan di lokasi ini';
  final String errorNoAcInRoom = 'Tidak ada AC di ruangan ini';
  final String errorNoAcRegistered = 'Belum ada AC terdaftar';

  // New strings for Home Screen UI
  final String greetingPrefix = 'Halo, ';
  final String greetingDefaultUser = 'Pengguna';
  final String greetingSuffix = '!';
  final String greetingSubtitle = 'Semoga harimu menyenangkan';

  final String workTimeInLabel = 'Jam Masuk';
  final String workTimeOutLabel = 'Jam Pulang';
  final String defaultInTime = '08:00';
  final String defaultOutTime = '17:00';

  final String checkInButtonText = 'ABSEN MASUK';
  final String checkOutButtonText = 'ABSEN PULANG';
  final String checkInSubtitle = 'Tap untuk mencatat kehadiran';
  final String checkOutSubtitle = 'Tap untuk mencatat jam pulang';

  final String adminMenuTitle = 'Menu Administrasi';
  final String leaveRequestLabel = 'Pengajuan\nCuti';
  final String overtimeRequestLabel = 'Pengajuan\nLembur';
  final String permissionRequestLabel = 'Pengajuan\nIzin';

  final String absentTodayTitle = 'Tidak Hadir Hari Ini';
  final String viewAllText = 'Lihat Semua';
}

class MonitoringStrings {
  const MonitoringStrings();
  final String title = 'AC Tamu 1';
  final String ON = 'ON';
  final String OFF = 'OFF';
  final String StatusAC = 'Status AC';
  final String Normal = 'Normal';
  final String TidakNormal = 'Tidak Normal';
  final String KondisiAC = 'Kondisi AC';
  final String NyalaAC = 'Nyala';
  final String MatiAC = 'Mati';
  final String Remote = 'Remote';
  final String Histori = 'Histori';
  final String ModelDevice = 'DS1120';
  final String ACSM = 'ACSM (80%)';
  final String Fan = 'Fan';
  final String Swing = 'Swing';
  final String TimerMalam = 'Timer Malam';
}
