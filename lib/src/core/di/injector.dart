import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:quanta_hris/src/core/bloc/session_bloc.dart';
import 'package:quanta_hris/src/core/config/flavor_config.dart';
import 'package:quanta_hris/src/core/ml/recognizer.dart';
import 'package:quanta_hris/src/core/network/auth_interceptor.dart';
import 'package:quanta_hris/src/core/network/logging_interceptor.dart';
import 'package:quanta_hris/src/core/routes/app_router.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository.dart';
import 'package:quanta_hris/src/core/storage/session_storage_repository_impl.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/authentication/data/datasources/auth_remote_data_source.dart';
import 'package:quanta_hris/src/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:quanta_hris/src/features/authentication/domain/repositories/auth_repository.dart';
import 'package:quanta_hris/src/features/authentication/domain/usecases/login_usecase.dart';
import 'package:quanta_hris/src/features/authentication/domain/usecases/logout_usecase.dart';
import 'package:quanta_hris/src/features/authentication/domain/usecases/save_session_usecase.dart';
import 'package:quanta_hris/src/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:quanta_hris/src/features/home/data/datasources/home_remote_data_source.dart';
import 'package:quanta_hris/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:quanta_hris/src/features/home/domain/repositories/home_repository.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_is_clocked_in_usecase.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_operational_hour_usecase.dart';
import 'package:quanta_hris/src/features/home/domain/usecases/get_today_leaves_usecase.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:quanta_hris/src/features/splash/domain/usecases/check_session_usecase.dart';
import 'package:quanta_hris/src/features/attendance/data/datasources/attendance_remote_data_source.dart';
import 'package:quanta_hris/src/features/attendance/data/repositories/attendance_repository_impl.dart';
import 'package:quanta_hris/src/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:quanta_hris/src/features/attendance/domain/usecases/get_company_branches_usecase.dart';
import 'package:quanta_hris/src/features/attendance/domain/usecases/update_profile_usecase.dart';
import 'package:quanta_hris/src/features/attendance/presentation/bloc/face_recognition_bloc.dart';

final getIt = GetIt.instance;

void configureDependencies(FlavorConfig config) {
  _registerCore(config);
  _registerNetworking();
  _registerRouting();
  _registerAuth();
  _registerHome();
  _registerAttendance();
  _configureDioInterceptors();
}

/// Register core dependencies
void _registerCore(FlavorConfig config) {
  AppLogger.i('🔧 Registering core dependencies...');

  // Configuration
  getIt.registerSingleton<FlavorConfig>(config);

  // Storage
  getIt.registerLazySingleton<SessionStorageRepository>(
    () => SessionStorageRepositoryImpl(),
  );

  getIt.registerLazySingleton<Recognizer>(
    () => Recognizer(sessionStorage: getIt<SessionStorageRepository>()),
  );
}

/// Register networking components
void _registerNetworking() {
  AppLogger.i('🌐 Registering networking components...');
  final config = getIt<FlavorConfig>();

  // Alice for debugging - HANYA JIKA BUKAN PRODUCTION
  if (config.flavor != Flavor.production) {
    AppLogger.i('🕵️‍♂️ Registering Alice for debugging...');
    getIt.registerSingleton<Alice>(
      Alice(configuration: AliceConfiguration(showNotification: true)),
    );
    getIt.registerSingleton<AliceDioAdapter>(AliceDioAdapter());
  }

  // Base Dio instance (without interceptors initially)
  getIt.registerLazySingleton<Dio>(() {
    final config = getIt<FlavorConfig>();

    final dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: const Duration(seconds: 120),
        receiveTimeout: const Duration(seconds: 120),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    AppLogger.i('✅ Base Dio instance created');
    return dio;
  });

  // Separate Dio for Auth operations (to avoid circular dependency)
  getIt.registerLazySingleton<Dio>(() {
    final config = getIt<FlavorConfig>();

    final authDio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: const Duration(seconds: 120),
        receiveTimeout: const Duration(seconds: 120),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    AppLogger.i('✅ Auth Dio instance created');
    return authDio;
  }, instanceName: 'authDio');
}

/// Register routing
void _registerRouting() {
  AppLogger.i('🚦 Registering routing...');

  getIt.registerSingleton<GoRouter>(appRouter);
}

/// Register authentication dependencies
void _registerAuth() {
  AppLogger.i('🔐 Registering authentication dependencies...');

  // Data Source (uses separate auth Dio)
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getIt<Dio>(instanceName: 'authDio')),
  );

  // Repository
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt<AuthRemoteDataSource>()),
  );

  // Use Cases
  getIt.registerFactory(() => LoginUseCase(getIt<AuthRepository>()));

  getIt.registerFactory(
    () => SaveSessionUseCase(getIt<SessionStorageRepository>()),
  );

  getIt.registerFactory(
    () => LogoutUseCase(
      authRepository: getIt<AuthRepository>(),
      sessionStorageRepository: getIt<SessionStorageRepository>(),
    ),
  );

  getIt.registerFactory(
    () => CheckSessionUseCase(getIt<SessionStorageRepository>()),
  );

  // Session BLoC
  getIt.registerLazySingleton(
    () => SessionBloc(
      checkSessionUseCase: getIt<CheckSessionUseCase>(),
      sessionStorage: getIt<SessionStorageRepository>(),
    ),
  );

  // Auth BLoC
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginUseCase: getIt<LoginUseCase>(),
      saveSessionUseCase: getIt<SaveSessionUseCase>(),
      logoutUseCase: getIt<LogoutUseCase>(),
      sessionBloc: getIt<SessionBloc>(),
    ),
  );
}

/// Register home dependencies
void _registerHome() {
  AppLogger.i('🏠 Registering home dependencies...');

  // Data Source (uses main Dio - will be configured with interceptors)
  getIt.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(getIt<Dio>()),
  );

  // Repository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getIt<HomeRemoteDataSource>()),
  );

  // Use Cases
  getIt.registerFactory(
    () => GetOperationalHourUseCase(getIt<HomeRepository>()),
  );
  getIt.registerFactory(() => GetTodayLeavesUseCase(getIt<HomeRepository>()));
  getIt.registerFactory(() => GetIsClockedInUsecase(getIt<HomeRepository>()));
  // BLoC
  getIt.registerFactory(
    () => HomeBloc(
      getOperationalHoursUseCase: getIt<GetOperationalHourUseCase>(),
      getTodayLeavesUseCase: getIt<GetTodayLeavesUseCase>(),
      getIsClockedInUsecase: getIt<GetIsClockedInUsecase>(),
    ),
  );
}

void _registerAttendance() {
  AppLogger.i('🧠 Registering attendance dependencies...');

  getIt.registerLazySingleton<AttendanceRemoteDataSource>(
    () => AttendanceRemoteDataSourceImpl(getIt<Dio>()),
  );

  getIt.registerLazySingleton<AttendanceRepository>(
    () => AttendanceRepositoryImpl(getIt<AttendanceRemoteDataSource>()),
  );

  getIt.registerFactory(
    () => GetCompanyBranchesUseCase(getIt<AttendanceRepository>()),
  );

  getIt.registerFactory(
    () => UpdateProfileUseCase(
      getIt<AttendanceRepository>(),
      getIt<SessionStorageRepository>(),
    ),
  );

  getIt.registerFactory(
    () => FaceRecognitionBloc(
      updateProfileUseCase: getIt<UpdateProfileUseCase>(),
      getCompanyBranchesUseCase: getIt<GetCompanyBranchesUseCase>(),
    ),
  );
}

/// Configure Dio interceptors after all dependencies are registered
void _configureDioInterceptors() {
  AppLogger.i('🔧 Configuring Dio interceptors...');

  final dio = getIt<Dio>();
  final authDio = getIt<Dio>(instanceName: 'authDio');
  final sessionStorage = getIt<SessionStorageRepository>();
  final router = getIt<GoRouter>();
  final config = getIt<FlavorConfig>();

  // Get Alice components only if not production
  Alice? alice;
  AliceDioAdapter? aliceDioAdapter;

  if (config.flavor != Flavor.production) {
    alice = getIt<Alice>();
    aliceDioAdapter = getIt<AliceDioAdapter>();
    // Connect Alice with adapter (hanya sekali)
    alice.addAdapter(aliceDioAdapter);
  }

  // Configure Auth Dio interceptors
  final authInterceptors = <Interceptor>[LoggingInterceptor()];

  // Add Alice only if not production
  if (aliceDioAdapter != null) {
    authInterceptors.add(aliceDioAdapter);
  }

  authDio.interceptors.addAll(authInterceptors);

  // Configure Main Dio interceptors
  final mainInterceptors = <Interceptor>[
    LoggingInterceptor(),
    AuthInterceptor(sessionStorage),
  ];

  // Add Alice only if not production
  if (aliceDioAdapter != null) {
    mainInterceptors.add(aliceDioAdapter);
  }

  dio.interceptors.addAll(mainInterceptors);

  AppLogger.i('✅ Dio interceptors configured successfully');
}

/// Helper method to check dependencies registration
void validateDependencies() {
  AppLogger.i('🔍 Validating dependencies...');

  final dependencies = [
    FlavorConfig,
    SessionStorageRepository,
    Dio,
    GoRouter,
    AuthRepository,
    SessionBloc,
    HomeRepository,
  ];

  for (final dep in dependencies) {
    try {
      getIt.get(type: dep); // FIXED: Gunakan type parameter yang benar
      AppLogger.i('✅ ${dep.toString()} - OK');
    } catch (e) {
      AppLogger.e('❌ ${dep.toString()} - MISSING: $e');
    }
  }

  // Validate Alice components only if not production
  final config = getIt<FlavorConfig>();
  if (config.flavor != Flavor.production) {
    try {
      getIt.get<Alice>();
      getIt.get<AliceDioAdapter>();
      AppLogger.i('✅ Alice components - OK');
    } catch (e) {
      AppLogger.e('❌ Alice components - MISSING: $e');
    }
  } else {
    AppLogger.i('🚫 Alice components - SKIPPED (Production mode)');
  }
}
