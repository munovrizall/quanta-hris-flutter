import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_secure_storage_devtool/flutter_secure_storage_devtool.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/authentication/domain/entities/auth_entity.dart';

import 'session_storage_repository.dart';

class SessionStorageRepositoryImpl implements SessionStorageRepository {
  final _storage = const FlutterSecureStorage();

  static const _authKey = 'AUTH_SESSION';
  static const _userKey = 'USER_SESSION';

  // Variabel untuk menampung timer dari listener
  static Timer? _monitoringTimer;

  // Metode statis untuk inisialisasi
  static void init() {
    if (kDebugMode) {
      // Panggil listener dari package devtool
      _monitoringTimer = registerSecureStorageListener(
        const FlutterSecureStorage(),
      );
      AppLogger.i('Flutter Secure Storage DevTool monitoring started!');
    }
  }

  // Metode statis untuk mematikan listener (opsional, tapi good practice)
  static void dispose() {
    if (kDebugMode && _monitoringTimer != null) {
      _monitoringTimer!.cancel();
      stopSecureStorageListener(const FlutterSecureStorage());
      AppLogger.i('Flutter Secure Storage DevTool monitoring stopped.');
    }
  }

  @override
  Future<void> saveToken(String token) {
    return _storage.write(key: _authKey, value: jsonEncode(token));
  }

  @override
  Future<void> saveUser(UserEntity user) {
    return _storage.write(key: _userKey, value: jsonEncode(user.toJson()));
  }

  @override
  Future<String?> getToken() async {
    final token = await _storage.read(key: _authKey);
    
    if (token != null) {
      return token;
    }
    return null;
  }

  @override
  Future<UserEntity?> getUser() async {
    final userString = await _storage.read(key: _userKey);
    if (userString != null) {
      return UserEntity.fromJson(jsonDecode(userString));
    }
    return null;
  }

  @override
  Future<void> clear() async {
    await _storage.delete(key: _authKey);
    await _storage.delete(key: _userKey);
  }
}
