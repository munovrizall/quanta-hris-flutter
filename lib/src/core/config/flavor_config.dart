import 'package:flutter/foundation.dart';

// Enum untuk merepresentasikan setiap flavor yang ada
enum Flavor { production, dev }

// Class untuk menampung semua variabel konfigurasi
@immutable
class FlavorConfig {
  final Flavor flavor;
  final String appName;
  final String baseUrl;
  final String apiKey;

  const FlavorConfig({
    required this.flavor,
    required this.appName,
    required this.baseUrl,
    required this.apiKey,
  });
}
