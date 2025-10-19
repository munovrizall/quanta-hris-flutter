import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/features/home/domain/entities/placement_acsm_entity.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_event.dart';
import 'package:quanta_hris/src/features/home/presentation/bloc/home_state.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_measures.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart'; // Tambahkan import ini

class AcCard extends StatefulWidget {
  static const double minHeight = 240.0;

  final PlacementItemEntity placement;

  const AcCard({super.key, required this.placement});

  @override
  State<AcCard> createState() => _AcCardState();
}

class _AcCardState extends State<AcCard> {
  @override
  void didUpdateWidget(AcCard oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  // Helper methods untuk mendapatkan data
  bool get _isOn {
    return widget.placement.ac.data?.onState ?? false;
  }

  int get _acId {
    return widget.placement.ac.acId;
  }

  String get _status {
    final data = widget.placement.ac.data;
    if (data?.isOnline == false) return 'Disconnected';
    if (data?.condition?.isNotEmpty == true) return data!.condition!;
    return data?.condition ?? '--';
  }

  String get _temperature {
    final returnTemp = widget.placement.ac.data?.returnTemp;
    return returnTemp != null ? '$returnTemp°C' : '--';
  }

  String get _power {
    final watt = widget.placement.ac.data?.watt;
    return watt != null ? '${watt.toStringAsFixed(0)} W' : '-- W';
  }

  String get _timer {
    final timerName = widget.placement.ac.timerName;
    return timerName?.isNotEmpty == true ? timerName! : '--';
  }

  Color get _statusColor {
    final data = widget.placement.ac.data;
    if (data?.isOnline == false) return AppColors.error;

    final condition = data?.condition?.toLowerCase() ?? '';
    if (condition == 'trouble') {
      return AppColors.error; // merah
    } else if (condition == 'overcapacity') {
      return Colors.orange; // oranye
    } else if (condition == 'maintenance') {
      return AppColors.warning; // kuning
    } else if (condition == 'normal') {
      return AppColors.success; // hijau
    } else {
      return AppColors.neutral600;
    }
  }

  IconData get _statusIcon {
    final data = widget.placement.ac.data;
    if (data?.isOnline == false) return Icons.wifi_off;
    // Tampilkan ikon berbeda sesuai kondisi kesehatan AC
    final condition = data?.condition?.toLowerCase() ?? '';
    if (condition == 'trouble') {
      return Icons.error;
    } else if (condition == 'overcapacity') {
      return Icons.warning;
    } else if (condition == 'maintenance') {
      return Icons.build;
    } else if (condition == 'normal') {
      return Icons.check_circle;
    } else {
      return Icons.manage_search_sharp;
    }
  }

  void _handleToggle(bool newValue) {
    // KIRIM event toggle dengan AC ID yang spesifik
    context.read<HomeBloc>().add(
      HomeEvent.toggleAcPower(acId: _acId, powerState: newValue),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      // LISTEN untuk toggle error dan success HANYA untuk AC ini
      listenWhen: (previous, current) {
        // Listen untuk perubahan error atau success untuk AC ID ini saja
        final prevError = previous.getToggleAcError(_acId);
        final currError = current.getToggleAcError(_acId);
        final prevLoading = previous.isLoadingToggleAc(_acId);
        final currLoading = current.isLoadingToggleAc(_acId);
        final hasNewSuccess =
            current.hasRecentToggleSuccess(_acId) &&
            !previous.hasRecentToggleSuccess(_acId);

        final prevSuccessMessage = previous.getToggleAcResponseMessage(_acId);
        final currSuccessMessage = current.getToggleAcResponseMessage(_acId);

        return prevError != currError ||
            (prevLoading && !currLoading && currError == null) ||
            hasNewSuccess ||
            prevSuccessMessage != currSuccessMessage;
      },
      listener: (context, state) {
        final acError = state.getToggleAcError(_acId);
        final isLoading = state.isLoadingToggleAc(_acId);
        final responseMessage = state.getToggleAcResponseMessage(_acId);

        String? message;
        Color bgColor = AppColors.success;

        if (acError != null) {
          message = 'Gagal mengubah ${widget.placement.ac.acName}: $acError';
          bgColor = AppColors.error;
        } else if (!isLoading && state.hasRecentToggleSuccess(_acId)) {
          // Success: gunakan responseMessage jika ada, fallback ke acError jika null
          if (responseMessage != null && responseMessage.isNotEmpty) {
            message = '${widget.placement.ac.acName}: $responseMessage';
            bgColor = AppColors.success;
          } else if (acError != null) {
            message = 'Gagal mengubah ${widget.placement.ac.acName}: $acError';
            bgColor = AppColors.error;
          }
        }

        if (message != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              backgroundColor: bgColor,
              duration: Duration(seconds: 2),
            ),
          );
        }
      },
      child: InkWell(
        onTap: () {
          // Navigasi ke /monitoring dengan pass acId dan deviceId
          context.push(
            '/monitoring',
            extra: {
              'acId': _acId,
              'deviceId': widget.placement.device.deviceId,
            },
          );
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: AcCard.minHeight),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppSpacing.medium),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppRadius.xl),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppImages.global.iconAirConditioner,
                      colorFilter: ColorFilter.mode(
                        _isOn ? AppColors.black : AppColors.neutral400,
                        BlendMode.srcIn,
                      ),
                      width: AppSizes.iconXL,
                    ),
                    // WRAP SWITCH WITH BLOCBUILDER untuk AC ID ini saja
                    BlocBuilder<HomeBloc, HomeState>(
                      // REBUILD when loading state untuk AC ini berubah OR polling data changes
                      buildWhen: (previous, current) =>
                          previous.isLoadingToggleAc(_acId) !=
                              current.isLoadingToggleAc(_acId) ||
                          previous.placementAcsmBySiteData !=
                              current.placementAcsmBySiteData,
                      builder: (context, state) {
                        final isLoadingThisAc = state.isLoadingToggleAc(
                          _acId,
                        ); // SPECIFIC untuk AC ini
                        final isOnline =
                            widget.placement.ac.data?.isOnline == true;

                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (isLoadingThisAc) // HANYA loading jika AC ini sedang loading
                              const Padding(
                                padding: EdgeInsets.only(right: AppSpacing.xs),
                                child: SizedBox(
                                  width: AppSizes.iconSmall,
                                  height: AppSizes.iconSmall,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      AppColors.primary,
                                    ),
                                  ),
                                ),
                              ),
                            Switch(
                              value: _isOn,
                              onChanged: (isOnline && !isLoadingThisAc)
                                  ? _handleToggle
                                  : null,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.small),
                Text(
                  widget.placement.ac.acName,
                  style: AppTypography.subtitleLarge.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppSpacing.xxs),
                Text(
                  '(${widget.placement.device.deviceName})',
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Divider(color: AppColors.border, height: AppSpacing.medium),
                _buildInfoRow(_statusIcon, _status, _statusColor),
                const SizedBox(height: AppSpacing.xs),
                _buildInfoRow(Icons.thermostat, _temperature, AppColors.black),
                const SizedBox(height: AppSpacing.xs),
                _buildInfoRow(Icons.flash_on, _power, AppColors.black),
                const SizedBox(height: AppSpacing.xs),
                _buildInfoRow(Icons.timer, _timer, AppColors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text, Color color) {
    return Row(
      children: [
        Icon(icon, size: AppSizes.iconSmall, color: color),
        const SizedBox(width: AppSpacing.xs),
        Expanded(
          child: Text(
            text,
            style: AppTypography.bodyMedium.copyWith(
              color: color == AppColors.black ? color : color,
              fontWeight: color != AppColors.black
                  ? FontWeight.w500
                  : FontWeight.normal,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
