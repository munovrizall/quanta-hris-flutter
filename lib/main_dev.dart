import 'package:quanta_hris/app.dart'; // File ini akan kita buat setelah ini
import 'package:quanta_hris/src/core/config/flavor_config.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository_impl.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Panggil inisialisasi devtool di sini
  SessionStorageRepositoryImpl.init();

  // 1. Konfigurasi spesifik untuk Dev
  final devConfig = FlavorConfig(
    flavor: Flavor.dev,
    appName: "ACSM Dev",
    baseUrl: "https://api2.smartcool.id/api",
    apiKey: "95eb5617-d6ae-4b18-b682-7e43122f7c52",
  );

  // Panggil konfigurasi DI di sini
  configureDependencies(devConfig);

  // 2. Jalankan aplikasi utama dengan konfigurasi tersebut
  runApp(App(flavorConfig: devConfig));
}
