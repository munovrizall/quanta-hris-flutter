import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/attendance/domain/entities/company_branches_entity.dart';
import 'package:quanta_hris/src/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:quanta_hris/src/features/attendance/presentation/bloc/attendance_event.dart';
import 'package:quanta_hris/src/features/attendance/presentation/bloc/attendance_state.dart';
import 'package:quanta_hris/src/features/attendance/presentation/screens/attendance_screen.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class AttendanceMapsScreen extends StatefulWidget {
  final AttendanceType attendanceType;

  const AttendanceMapsScreen({super.key, required this.attendanceType});

  @override
  State<AttendanceMapsScreen> createState() => _AttendanceMapsScreenState();
}

class _AttendanceMapsScreenState extends State<AttendanceMapsScreen> {
  late final AttendanceBloc _bloc;
  final MapController _mapController = MapController();
  final Distance _distance = const Distance();

  LatLng? _userLocation;
  bool _isFetchingLocation = true;
  String? _locationError;
  BranchEntity? _selectedBranch;
  StreamSubscription<Position>? _positionStreamSubscription;
  bool _isFirstLocation = true;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<AttendanceBloc>();
    _bloc.add(const AttendanceEvent.fetchCompanyBranches());
    _initLocation();
  }

  Future<void> _initLocation() async {
    setState(() {
      _isFetchingLocation = true;
      _locationError = null;
    });

    try {
      final hasPermission = await _ensurePermission();
      if (!hasPermission) {
        setState(() {
          _locationError =
              'Izin lokasi diperlukan untuk menampilkan posisi Anda.';
          _isFetchingLocation = false;
        });
        return;
      }

      // Get initial position
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      final userLatLng = LatLng(position.latitude, position.longitude);

      setState(() {
        _userLocation = userLatLng;
        _isFetchingLocation = false;
      });

      unawaited(
        Future<void>.delayed(const Duration(milliseconds: 300), () {
          _moveTo(userLatLng);
        }),
      );

      // Start listening to position updates for live tracking
      _startLocationTracking();
    } catch (error, stackTrace) {
      AppLogger.d('❌ Attendance map location error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      setState(() {
        _locationError = 'Gagal mendapatkan lokasi saat ini.';
        _isFetchingLocation = false;
      });
    }
  }

  void _startLocationTracking() {
    // Cancel any existing subscription
    _positionStreamSubscription?.cancel();

    const locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 5, // Update only when user moves 5 meters
    );

    _positionStreamSubscription =
        Geolocator.getPositionStream(locationSettings: locationSettings).listen(
          (Position position) {
            final newLocation = LatLng(position.latitude, position.longitude);

            AppLogger.d(
              '📍 Live location update: ${position.latitude}, ${position.longitude}',
            );

            setState(() {
              _userLocation = newLocation;
            });

            // Auto-center map on first location update after initial load
            if (_isFirstLocation) {
              _isFirstLocation = false;
            }
          },
          onError: (error) {
            AppLogger.d('❌ Location stream error: $error');
          },
        );
  }

  Future<bool> _ensurePermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _locationError = 'Aktifkan layanan lokasi pada perangkat Anda.';
      });
      return false;
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _locationError =
            'Izin lokasi ditolak permanen. Silakan atur pada pengaturan.';
      });
      return false;
    }

    if (permission == LocationPermission.denied) {
      setState(() {
        _locationError = 'Izin lokasi ditolak.';
      });
      return false;
    }

    return true;
  }

  void _moveTo(LatLng target) {
    try {
      _mapController.move(target, 16);
    } catch (_) {
      // Map might not be ready; ignore.
    }
  }

  bool get _isWithinSelectedBranchRadius {
    final user = _userLocation;
    final branch = _selectedBranch;
    if (user == null || branch == null) return false;

    final distanceInMeters = _distance(
      user,
      LatLng(branch.latitude, branch.longitude),
    );
    return distanceInMeters <= branch.radiusLocation;
  }

  void _handleConfirmPresence() {
    final user = _userLocation;

    // Cek apakah dalam radius
    if (!_isWithinSelectedBranchRadius || user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Anda berada di luar lokasi yang ditentukan'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    // Verifikasi berhasil
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Verifikasi Lokasi Berhasil'),
        backgroundColor: AppColors.success,
      ),
    );

    // Navigate to attendance screen with type parameter
    final typeParam = widget.attendanceType == AttendanceType.clockOut
        ? 'clockOut'
        : 'clockIn';

    context.push(
      '/attendance?type=$typeParam',
      extra: {'latitude': user.latitude, 'longitude': user.longitude},
    );
  }

  @override
  void dispose() {
    _positionStreamSubscription?.cancel();
    _bloc.close();
    super.dispose();
  }

  BranchEntity? _findBranchWithinRadius(List<BranchEntity> branches) {
    final user = _userLocation;
    if (user == null) return null;

    BranchEntity? closestBranch;
    double? closestDistance;

    for (final branch in branches) {
      final distance = _distance(
        user,
        LatLng(branch.latitude, branch.longitude),
      );
      if (distance <= branch.radiusLocation) {
        if (closestDistance == null || distance < closestDistance) {
          closestBranch = branch;
          closestDistance = distance;
        }
      }
    }

    return closestBranch;
  }

  void _syncBranchSelection(List<BranchEntity> branches) {
    final insideBranch = _findBranchWithinRadius(branches);
    if (insideBranch != null && insideBranch != _selectedBranch) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        setState(() {
          _selectedBranch = insideBranch;
        });
      });
    } else if (insideBranch == null && _selectedBranch != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        setState(() {
          _selectedBranch = null;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(title: const Text('Peta Kehadiran')),
        body: BlocBuilder<AttendanceBloc, AttendanceState>(
          builder: (context, state) {
            if (_locationError != null) {
              return _ErrorMessage(
                message: _locationError!,
                onRetry: _initLocation,
              );
            }

            if (_isFetchingLocation ||
                (state.isCompanyBranchesLoading &&
                    state.companyBranches == null)) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.companyBranchesError != null &&
                state.companyBranches == null) {
              return _ErrorMessage(
                message: state.companyBranchesError!,
                onRetry: () =>
                    _bloc.add(const AttendanceEvent.fetchCompanyBranches()),
              );
            }

            final branches = state.companyBranches;
            if (branches == null) {
              return const _ErrorMessage(
                message: 'Data cabang tidak tersedia.',
              );
            }

            _syncBranchSelection(branches.branches);

            final effectiveCenter =
                _userLocation ??
                (branches.branches.isNotEmpty
                    ? LatLng(
                        branches.branches.first.latitude,
                        branches.branches.first.longitude,
                      )
                    : const LatLng(-6.200000, 106.816666));

            return Column(
              children: [
                Expanded(
                  child: FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      initialCenter: effectiveCenter,
                      initialZoom: 15,
                      maxZoom: 19,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.quanta.hris',
                      ),
                      if (branches.branches.isNotEmpty)
                        CircleLayer(
                          circles: branches.branches
                              .map(
                                (branch) => CircleMarker(
                                  point: LatLng(
                                    branch.latitude,
                                    branch.longitude,
                                  ),
                                  radius: branch.radiusLocation.toDouble(),
                                  useRadiusInMeter: true,
                                  color: AppColors.primary.withValues(
                                    alpha: 0.15,
                                  ),
                                  borderColor: AppColors.primary,
                                  borderStrokeWidth: 2,
                                ),
                              )
                              .toList(),
                        ),
                      MarkerLayer(
                        markers: [
                          if (_userLocation != null)
                            Marker(
                              point: _userLocation!,
                              width: 40,
                              height: 40,
                              child: _UserLocationMarker(
                                isTracking: _positionStreamSubscription != null,
                              ),
                            ),
                          ...branches.branches.map(
                            (branch) => Marker(
                              point: LatLng(branch.latitude, branch.longitude),
                              width: 40,
                              height: 40,
                              child: _BranchMarker(
                                isSelected: _selectedBranch == branch,
                              ),
                            ),
                          ),
                        ],
                      ),
                      RichAttributionWidget(
                        attributions: [
                          TextSourceAttribution(
                            '© OpenStreetMap contributors',
                            onTap: null,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                _BranchInfoPanel(
                  selectedBranch: _selectedBranch,
                  hasLocation: _userLocation != null,
                  isWithinRadius: _isWithinSelectedBranchRadius,
                  isTracking: _positionStreamSubscription != null,
                  onConfirm: _handleConfirmPresence,
                  onLocateMe: _userLocation != null
                      ? () => _moveTo(_userLocation!)
                      : null,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _BranchInfoPanel extends StatelessWidget {
  final BranchEntity? selectedBranch;
  final bool hasLocation;
  final bool isWithinRadius;
  final bool isTracking;
  final VoidCallback? onConfirm;
  final VoidCallback? onLocateMe;

  const _BranchInfoPanel({
    required this.selectedBranch,
    required this.hasLocation,
    required this.isWithinRadius,
    required this.isTracking,
    required this.onConfirm,
    required this.onLocateMe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryButton(text: 'Verifikasi Lokasi', onPressed: onConfirm),
          const SizedBox(height: AppSpacing.medium),
          PrimaryButton(
            text: 'Lokasi Saya',
            onPressed: onLocateMe,
            variant: PrimaryButtonVariant.outline,
          ),
        ],
      ),
    );
  }
}

class _UserLocationMarker extends StatelessWidget {
  final bool isTracking;

  const _UserLocationMarker({this.isTracking = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.success,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.white, width: 3),
        boxShadow: isTracking
            ? [
                BoxShadow(
                  color: AppColors.success.withValues(alpha: 0.5),
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ]
            : null,
      ),
      child: const Icon(
        Icons.person_pin_circle,
        color: AppColors.white,
        size: 20,
      ),
    );
  }
}

class _BranchMarker extends StatelessWidget {
  final bool isSelected;

  const _BranchMarker({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.warning : AppColors.primary,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.white, width: 3),
      ),
      child: const Icon(Icons.location_pin, color: AppColors.white, size: 20),
    );
  }
}

class _ErrorMessage extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const _ErrorMessage({required this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: AppTypography.bodyLarge.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onRetry,
                child: const Text('Coba Lagi'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
