import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:quanta_hris/src/core/di/injector.dart';
import 'package:quanta_hris/src/core/utils/app_logger.dart';
import 'package:quanta_hris/src/features/face_recognition/domain/entities/company_branches_entity.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/face_recognition_bloc.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/face_recognition_event.dart';
import 'package:quanta_hris/src/features/face_recognition/presentation/bloc/face_recognition_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

class AttendanceMapsScreen extends StatefulWidget {
  const AttendanceMapsScreen({super.key});

  @override
  State<AttendanceMapsScreen> createState() => _AttendanceMapsScreenState();
}

class _AttendanceMapsScreenState extends State<AttendanceMapsScreen> {
  late final FaceRecognitionBloc _bloc;
  final MapController _mapController = MapController();

  LatLng? _userLocation;
  bool _isFetchingLocation = true;
  String? _locationError;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<FaceRecognitionBloc>();
    _bloc.add(const FaceRecognitionEvent.fetchCompanyBranches());
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
    } catch (error, stackTrace) {
      AppLogger.d('❌ Attendance map location error: $error');
      AppLogger.d('📍 StackTrace: $stackTrace');
      setState(() {
        _locationError = 'Gagal mendapatkan lokasi saat ini.';
        _isFetchingLocation = false;
      });
    }
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

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(title: const Text('Peta Kehadiran')),
        body: BlocBuilder<FaceRecognitionBloc, FaceRecognitionState>(
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
                onRetry: () => _bloc.add(
                  const FaceRecognitionEvent.fetchCompanyBranches(),
                ),
              );
            }

            final branches = state.companyBranches;
            if (branches == null) {
              return const _ErrorMessage(
                message: 'Data cabang tidak tersedia.',
              );
            }

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
                                  color: AppColors.primary.withOpacity(0.15),
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
                              child: const _UserLocationMarker(),
                            ),
                          ...branches.branches.map(
                            (branch) => Marker(
                              point: LatLng(branch.latitude, branch.longitude),
                              width: 40,
                              height: 40,
                              child: const _BranchMarker(),
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
                _BranchSummary(branches: branches),
              ],
            );
          },
        ),
        floatingActionButton: _userLocation != null
            ? FloatingActionButton.extended(
                onPressed: () {
                  final user = _userLocation;
                  if (user != null) {
                    _moveTo(user);
                  }
                },
                icon: const Icon(Icons.my_location),
                label: const Text('Lokasi Saya'),
              )
            : null,
      ),
    );
  }
}

class _BranchSummary extends StatelessWidget {
  final CompanyBranchesEntity branches;

  const _BranchSummary({required this.branches});

  @override
  Widget build(BuildContext context) {
    if (branches.branches.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      color: AppColors.surface,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            branches.company.companyName,
            style: AppTypography.heading3.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final branch = branches.branches[index];
                return Container(
                  width: 240,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.border),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.05),
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        branch.branchName,
                        style: AppTypography.bodyLarge.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Text(
                          branch.address,
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.radar,
                            size: 16,
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Radius ${branch.radiusLocation} m',
                            style: AppTypography.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, _) => const SizedBox(width: 12),
              itemCount: branches.branches.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _UserLocationMarker extends StatelessWidget {
  const _UserLocationMarker();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.success,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.white, width: 3),
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
  const _BranchMarker();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
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
