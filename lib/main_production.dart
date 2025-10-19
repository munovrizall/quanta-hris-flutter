import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:quanta_hris/src/core/config/flavor_config.dart';
import 'package:quanta_hris/app.dart'; // File ini akan kita buat setelah ini

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Panggil inisialisasi devtool di sini
  SessionStorageRepositoryImpl.init();

  // 1. Konfigurasi spesifik untuk Production
  final productionConfig = FlavorConfig(
    flavor: Flavor.production,
    appName: "SmartCool",
    baseUrl: "https://api.smartcool.id/api",
    apiKey: "95eb5617-d6ae-4b18-b682-7e43122f7c52",
  );

  // Panggil konfigurasi DI di sini
  configureDependencies(productionConfig);

  // 2. Jalankan aplikasi utama dengan konfigurasi tersebut
  runApp(App(flavorConfig: productionConfig));
}
