import 'package:intl/intl.dart';

/// Utility class untuk memformat angka menjadi format mata uang.
///
/// Class ini menyediakan berbagai method untuk memformat angka menjadi
/// format rupiah dan mata uang lainnya dengan berbagai opsi customization.
///
/// ## Usage Examples:
///
/// ```dart
/// // Format rupiah dasar
/// final formatted = CurrencyFormatter.formatRupiah(1500000);
/// print(formatted); // Output: Rp 1.500.000
///
/// // Format rupiah dengan desimal
/// final withDecimal = CurrencyFormatter.formatRupiah(1500000.50, showDecimal: true);
/// print(withDecimal); // Output: Rp 1.500.000,50
///
/// // Format rupiah tanpa simbol
/// final noSymbol = CurrencyFormatter.formatRupiah(1500000, showSymbol: false);
/// print(noSymbol); // Output: 1.500.000
///
/// // Format rupiah compact
/// final compact = CurrencyFormatter.formatRupiahCompact(1500000);
/// print(compact); // Output: Rp 1,5 Jt
/// ```
class CurrencyFormatter {
  CurrencyFormatter._(); // Private constructor untuk mencegah instantiation

  /// Formatter default untuk rupiah Indonesia
  static final NumberFormat _rupiahFormatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  /// Formatter rupiah dengan desimal
  static final NumberFormat _rupiahFormatterWithDecimal = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 2,
  );

  /// Formatter rupiah tanpa simbol
  static final NumberFormat _rupiahFormatterNoSymbol = NumberFormat.currency(
    locale: 'id_ID',
    symbol: '',
    decimalDigits: 0,
  );

  /// Formatter rupiah tanpa simbol dengan desimal
  static final NumberFormat _rupiahFormatterNoSymbolWithDecimal =
      NumberFormat.currency(locale: 'id_ID', symbol: '', decimalDigits: 2);

  /// Formatter untuk format compact (ribuan, jutaan, dll)
  static final NumberFormat _compactFormatter = NumberFormat.compact(
    locale: 'id_ID',
  );

  /// Format angka menjadi format rupiah Indonesia.
  ///
  /// [amount] - Angka yang akan diformat
  /// [showSymbol] - Apakah menampilkan simbol "Rp" (default: true)
  /// [showDecimal] - Apakah menampilkan desimal (default: false)
  ///
  /// Returns formatted string dalam format rupiah.
  ///
  /// Example:
  /// ```dart
  /// CurrencyFormatter.formatRupiah(1500000); // "Rp 1.500.000"
  /// CurrencyFormatter.formatRupiah(1500000.75, showDecimal: true); // "Rp 1.500.000,75"
  /// CurrencyFormatter.formatRupiah(1500000, showSymbol: false); // "1.500.000"
  /// ```
  static String formatRupiah(
    num amount, {
    bool showSymbol = true,
    bool showDecimal = false,
  }) {
    if (showSymbol && showDecimal) {
      return _rupiahFormatterWithDecimal.format(amount);
    } else if (showSymbol && !showDecimal) {
      return _rupiahFormatter.format(amount);
    } else if (!showSymbol && showDecimal) {
      return _rupiahFormatterNoSymbolWithDecimal.format(amount).trim();
    } else {
      return _rupiahFormatterNoSymbol.format(amount).trim();
    }
  }

  /// Format angka menjadi format rupiah compact (1,5 Jt, 2,3 M, dll).
  ///
  /// [amount] - Angka yang akan diformat
  /// [showSymbol] - Apakah menampilkan simbol "Rp" (default: true)
  ///
  /// Returns formatted string dalam format compact.
  ///
  /// Example:
  /// ```dart
  /// CurrencyFormatter.formatRupiahCompact(1500000); // "Rp 1,5 Jt"
  /// CurrencyFormatter.formatRupiahCompact(2500000000); // "Rp 2,5 M"
  /// CurrencyFormatter.formatRupiahCompact(1500000, showSymbol: false); // "1,5 Jt"
  /// ```
  static String formatRupiahCompact(num amount, {bool showSymbol = true}) {
    final compactFormatted = _compactFormatter.format(amount);
    return showSymbol ? 'Rp $compactFormatted' : compactFormatted;
  }

  /// Format angka menjadi format mata uang custom.
  ///
  /// [amount] - Angka yang akan diformat
  /// [locale] - Locale untuk formatting (default: 'id_ID')
  /// [symbol] - Simbol mata uang (default: 'Rp ')
  /// [decimalDigits] - Jumlah digit desimal (default: 0)
  /// [customPattern] - Pattern custom untuk formatting (opsional)
  ///
  /// Returns formatted string sesuai parameter yang diberikan.
  ///
  /// Example:
  /// ```dart
  /// CurrencyFormatter.formatCustomCurrency(1500000, symbol: '\$ ', locale: 'en_US');
  /// // Output: "$ 1,500,000"
  /// ```
  static String formatCustomCurrency(
    num amount, {
    String locale = 'id_ID',
    String symbol = 'Rp ',
    int decimalDigits = 0,
    String? customPattern,
  }) {
    late NumberFormat formatter;

    if (customPattern != null) {
      formatter = NumberFormat(customPattern, locale);
    } else {
      formatter = NumberFormat.currency(
        locale: locale,
        symbol: symbol,
        decimalDigits: decimalDigits,
      );
    }

    return formatter.format(amount);
  }

  /// Utility method untuk parsing string rupiah kembali ke angka.
  ///
  /// [formattedAmount] - String yang sudah diformat
  ///
  /// Returns angka hasil parsing, atau null jika gagal parsing.
  ///
  /// Example:
  /// ```dart
  /// final amount = CurrencyFormatter.parseRupiah("Rp 1.500.000");
  /// print(amount); // Output: 1500000.0
  /// ```
  static double? parseRupiah(String formattedAmount) {
    try {
      // Hapus simbol dan spasi, ganti koma desimal dengan titik
      final cleanString = formattedAmount
          .replaceAll('Rp', '')
          .replaceAll(' ', '')
          .replaceAll('.', '') // Hapus pemisah ribuan
          .replaceAll(',', '.'); // Ganti koma desimal dengan titik

      return double.tryParse(cleanString);
    } catch (e) {
      return null;
    }
  }

  /// Utility method untuk mengecek apakah string adalah format rupiah yang valid.
  ///
  /// [formattedAmount] - String yang akan dicek
  ///
  /// Returns true jika format valid, false jika tidak.
  ///
  /// Example:
  /// ```dart
  /// final isValid = CurrencyFormatter.isValidRupiahFormat("Rp 1.500.000");
  /// print(isValid); // Output: true
  /// ```
  static bool isValidRupiahFormat(String formattedAmount) {
    final rupiahPattern = RegExp(r'^Rp\s[\d{1,3}(\.|\,)]*\d+(\,\d{1,2})?$');
    return rupiahPattern.hasMatch(formattedAmount);
  }

  /// Format angka dengan pemisah ribuan custom.
  ///
  /// [amount] - Angka yang akan diformat
  /// [thousandsSeparator] - Karakter pemisah ribuan (default: '.')
  /// [decimalSeparator] - Karakter pemisah desimal (default: ',')
  /// [decimalPlaces] - Jumlah tempat desimal (default: 0)
  ///
  /// Returns formatted string dengan pemisah custom.
  ///
  /// Example:
  /// ```dart
  /// CurrencyFormatter.formatWithCustomSeparator(1500000.50,
  ///   thousandsSeparator: ',',
  ///   decimalSeparator: '.',
  ///   decimalPlaces: 2
  /// ); // Output: "1,500,000.50"
  /// ```
  static String formatWithCustomSeparator(
    num amount, {
    String thousandsSeparator = '.',
    String decimalSeparator = ',',
    int decimalPlaces = 0,
  }) {
    final parts = amount.toStringAsFixed(decimalPlaces).split('.');
    final integerPart = parts[0];
    final decimalPart = parts.length > 1 ? parts[1] : '';

    // Add thousands separators
    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    final formattedInteger = integerPart.replaceAllMapped(
      regex,
      (match) => '${match[1]}$thousandsSeparator',
    );

    if (decimalPlaces > 0 && decimalPart.isNotEmpty) {
      return '$formattedInteger$decimalSeparator$decimalPart';
    }

    return formattedInteger;
  }
}

/// Extension methods untuk num types untuk kemudahan penggunaan.
///
/// Menyediakan method-method shorthand untuk formatting currency
/// langsung dari angka tanpa perlu memanggil CurrencyFormatter.
///
/// Example:
/// ```dart
/// final amount = 1500000;
/// print(amount.toRupiah()); // "Rp 1.500.000"
/// print(amount.toRupiahCompact()); // "Rp 1,5 Jt"
/// ```
extension CurrencyFormatterExtension on num {
  /// Format angka ini menjadi format rupiah.
  ///
  /// [showSymbol] - Apakah menampilkan simbol "Rp" (default: true)
  /// [showDecimal] - Apakah menampilkan desimal (default: false)
  ///
  /// Returns formatted string dalam format rupiah.
  String toRupiah({bool showSymbol = true, bool showDecimal = false}) {
    return CurrencyFormatter.formatRupiah(
      this,
      showSymbol: showSymbol,
      showDecimal: showDecimal,
    );
  }

  /// Format angka ini menjadi format rupiah compact.
  ///
  /// [showSymbol] - Apakah menampilkan simbol "Rp" (default: true)
  ///
  /// Returns formatted string dalam format compact.
  String toRupiahCompact({bool showSymbol = true}) {
    return CurrencyFormatter.formatRupiahCompact(this, showSymbol: showSymbol);
  }

  /// Format angka ini dengan pemisah ribuan custom.
  ///
  /// [thousandsSeparator] - Karakter pemisah ribuan (default: '.')
  /// [decimalSeparator] - Karakter pemisah desimal (default: ',')
  /// [decimalPlaces] - Jumlah tempat desimal (default: 0)
  ///
  /// Returns formatted string dengan pemisah custom.
  String toFormattedString({
    String thousandsSeparator = '.',
    String decimalSeparator = ',',
    int decimalPlaces = 0,
  }) {
    return CurrencyFormatter.formatWithCustomSeparator(
      this,
      thousandsSeparator: thousandsSeparator,
      decimalSeparator: decimalSeparator,
      decimalPlaces: decimalPlaces,
    );
  }
}
