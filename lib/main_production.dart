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
    baseUrl: "https://hris.smartcool.id/api",
  );

  // Panggil konfigurasi DI di sini
  configureDependencies(productionConfig);

  // 2. Jalankan aplikasi utama dengan konfigurasi tersebut
  runApp(App(flavorConfig: productionConfig));
}
