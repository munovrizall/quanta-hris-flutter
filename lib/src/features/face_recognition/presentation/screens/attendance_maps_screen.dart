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
import 'package:quanta_hris/src/shared/widgets/primary_button.dart';

class AttendanceMapsScreen extends StatefulWidget {
  const AttendanceMapsScreen({super.key});

  @override
  State<AttendanceMapsScreen> createState() => _AttendanceMapsScreenState();
}

class _AttendanceMapsScreenState extends State<AttendanceMapsScreen> {
  late final FaceRecognitionBloc _bloc;
  final MapController _mapController = MapController();
  final Distance _distance = const Distance();

  LatLng? _userLocation;
  bool _isFetchingLocation = true;
  String? _locationError;
  BranchEntity? _selectedBranch;

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
    final branch = _selectedBranch;
    if (branch == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Berhasil memilih cabang ${branch.branchName}.')),
    );
  }

  @override
  void dispose() {
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
                              child: const _UserLocationMarker(),
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
                  onConfirm: _isWithinSelectedBranchRadius
                      ? _handleConfirmPresence
                      : null,
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
  final VoidCallback? onConfirm;
  final VoidCallback? onLocateMe;

  const _BranchInfoPanel({
    required this.selectedBranch,
    required this.hasLocation,
    required this.isWithinRadius,
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
          PrimaryButton(
            text: 'Lokasi Saya',
            onPressed: onLocateMe,
            variant: PrimaryButtonVariant.outline,
            size: PrimaryButtonSize.medium,
          ),
          const SizedBox(height: 16),
          if (selectedBranch != null) ...[
            Text(
              selectedBranch!.branchName,
              style: AppTypography.heading3.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Radius ${selectedBranch!.radiusLocation} meter',
              style: AppTypography.bodySmall,
            ),
            const SizedBox(height: 8),
            if (!hasLocation)
              Text(
                'Lokasi Anda belum tersedia.',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.warning,
                ),
              )
            else if (!isWithinRadius)
              Text(
                'Anda berada di luar radius cabang ini.',
                style: AppTypography.bodySmall.copyWith(color: AppColors.error),
              ),
          ] else if (hasLocation)
            Text(
              'Anda berada di luar radius cabang mana pun.',
              style: AppTypography.bodyLarge,
            )
          else
            Text('Menunggu lokasi Anda...', style: AppTypography.bodyLarge),
          const SizedBox(height: 16),
          PrimaryButton(text: 'Absen Sekarang', onPressed: onConfirm),
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
