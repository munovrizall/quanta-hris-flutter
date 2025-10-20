/// Utility functions for date formatting in Indonesian
class DateFormatter {
  const DateFormatter._();

  /// Get Indonesian day name from weekday number (1 = Monday, 7 = Sunday)
  static String getIndonesianDay(int weekday) {
    const days = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu',
    ];
    return days[weekday - 1];
  }

  /// Get Indonesian month name from month number (1 = January, 12 = December)
  static String getIndonesianMonth(int month) {
    const months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember',
    ];
    return months[month - 1];
  }

  /// Format current time as HH:mm
  static String getCurrentTime() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
  }

  /// Format current date in Indonesian format
  static String getCurrentDateIndonesian() {
    final now = DateTime.now();
    return '${getIndonesianDay(now.weekday)}, ${now.day} ${getIndonesianMonth(now.month)} ${now.year}';
  }
}
