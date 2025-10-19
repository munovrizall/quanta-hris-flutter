import 'package:quanta_hris/src/core/constants/app_images.dart';
import 'package:quanta_hris/src/core/constants/app_strings.dart';
import 'package:quanta_hris/src/shared/styles/app_colors.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RemoteTab extends StatelessWidget {
  final int? acId;
  final int? deviceId;
  final bool isSwitched;
  final double sliderValue;
  final ValueChanged<bool> onSwitchChanged;
  final ValueChanged<double> onSliderChanged;

  const RemoteTab({
    super.key,
    required this.acId,
    required this.deviceId,
    required this.isSwitched,
    required this.sliderValue,
    required this.onSwitchChanged,
    required this.onSliderChanged,
  });

  static const monitoringStrings = AppStrings.monitoring;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.success,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          monitoringStrings.ModelDevice,
                          style: AppTypography.subtitleLarge.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.neutral900,
                          ),
                        ),
                        Text(
                          monitoringStrings.ACSM,
                          style: AppTypography.bodyMedium.copyWith(
                            color: AppColors.neutral600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.neutral300),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          monitoringStrings.ON,
                          style: AppTypography.subtitleLarge.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.neutral900,
                          ),
                        ),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: onSwitchChanged,
                        activeColor: AppColors.white,
                        activeTrackColor: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 16,
                    maximum: 30,
                    showLabels: false,
                    showTicks: false,
                    startAngle: 180,
                    endAngle: 0,
                    axisLineStyle: AxisLineStyle(
                      thickness: 0.3,
                      thicknessUnit: GaugeSizeUnit.factor,
                      cornerStyle: CornerStyle.bothCurve,
                      color: AppColors.neutral200,
                    ),
                    pointers: <GaugePointer>[
                      RangePointer(
                        value: sliderValue,
                        width: 0.3,
                        sizeUnit: GaugeSizeUnit.factor,
                        cornerStyle: CornerStyle.bothCurve,
                        color: AppColors.primary,
                        enableAnimation: true,
                      ),
                      MarkerPointer(
                        value: sliderValue,
                        markerType: MarkerType.circle,
                        color: AppColors.white,
                        markerHeight: 30,
                        markerWidth: 30,
                        borderWidth: 5,
                        borderColor: AppColors.primary,
                        enableDragging: true,
                        onValueChanged: onSliderChanged,
                      ),
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        widget: Text(
                          '${sliderValue.round()}°',
                          style: AppTypography.displayLarge.copyWith(
                            fontSize: 48,
                            color: AppColors.neutral900,
                          ),
                        ),
                        angle: 90,
                        positionFactor: 0.1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: _buildControlButton(
                    monitoringStrings.Fan,
                    Row(
                      children: [
                        Image.asset(
                          AppImages.monitor.fan1,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 4),
                        Image.asset(AppImages.monitor.PartFan1, height: 12),
                        const SizedBox(width: 2),
                        Image.asset(AppImages.monitor.PartFan2, height: 18),
                        const SizedBox(width: 2),
                        Image.asset(AppImages.monitor.PartFan3, height: 24),
                      ],
                    ),
                    () {},
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildControlButton(
                    monitoringStrings.Swing,
                    Image.asset(
                      AppImages.monitor.Swing1,
                      width: 24,
                      height: 24,
                    ),
                    () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            _buildTimerButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildControlButton(
    String label,
    Widget icon,
    VoidCallback onPressed,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.neutral900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: AppColors.neutral300),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        elevation: 3,
        shadowColor: AppColors.neutral300.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Text(
            label,
            style: AppTypography.subtitleLarge.copyWith(
              color: AppColors.neutral900,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimerButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.neutral900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: AppColors.neutral300),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        elevation: 3,
        shadowColor: AppColors.neutral300.withOpacity(0.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.timer_outlined),
          const SizedBox(width: 8),
          Text(
            monitoringStrings.TimerMalam,
            style: AppTypography.subtitleLarge.copyWith(
              color: AppColors.neutral900,
            ),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
