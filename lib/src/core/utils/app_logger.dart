import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Wrapper kustom untuk package logger.
/// 
/// Tujuannya adalah untuk memusatkan semua konfigurasi logging di satu tempat
/// dan secara otomatis mematikan semua log di build production.
class AppLogger {
  // Gunakan instance Logger
  static final Logger _logger = Logger(
    // Hanya print log jika kita tidak dalam mode production
    filter: ProductionFilter(),
    printer: PrettyPrinter(
      methodCount: 0, // Jumlah stack trace yang ditampilkan
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
    ),
  );

  // Metode untuk logging level Debug
  static void d(String message) {
    if (kDebugMode) {
      _logger.d(message);
    }
  }
  
  // Metode untuk logging level Info
  static void i(String message) {
    if (kDebugMode) {
      _logger.i(message);
    }
  }
  
  // Metode untuk logging level Warning
  static void w(String message) {
    if (kDebugMode) {
      _logger.w(message);
    }
  }

  // Metode untuk logging level Error
  static void e(String message, {dynamic error, StackTrace? stackTrace}) {
    if (kDebugMode) {
      _logger.e(message, error: error, stackTrace: stackTrace);
    }
  }
}

/// Filter kustom yang hanya mengizinkan log di luar mode production.
/// Di Flutter, kReleaseMode adalah kebalikan dari kDebugMode dan kProfileMode.
class ProductionFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    // Hanya log jika bukan dalam mode release (production)
    return !kReleaseMode;
  }
}