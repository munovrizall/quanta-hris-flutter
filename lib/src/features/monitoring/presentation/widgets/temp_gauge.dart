import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:quanta_hris/src/shared/styles/app_typography.dart';

/// A reusable semi-circle temperature gauge with a very simple API.
/// Controls: position, layout, and spacing.
enum GaugeLabelLayout { above, inside, below }

class TempGauge extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final Color accent;
  final ValueChanged<double> onChanged;

  // Simple controls
  final Alignment position; // place the gauge center using Alignment
  final GaugeLabelLayout layout; // label placement
  final double spacing; // px spacing between label and arc
  final double height; // widget height

  const TempGauge({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    required this.accent,
    this.position = Alignment.center,
    this.layout = GaugeLabelLayout.inside,
    this.spacing = 8,
    this.height = 300,
  });

  @override
  State<TempGauge> createState() => _TempGaugeState();
}

class _TempGaugeState extends State<TempGauge> {
  late double _v;
  @override
  void initState() {
    super.initState();
    _v = widget.value;
  }

  @override
  void didUpdateWidget(covariant TempGauge oldWidget) {
    super.didUpdateWidget(oldWidget);
    _v = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = Size(constraints.maxWidth, widget.height);
        // Convert Alignment (-1..1) to real coordinates inside available size.
        final center = Offset(
          size.width * (widget.position.x + 1) / 2,
          size.height * (widget.position.y + 1) / 2,
        );

        // Label placement derived from layout + spacing
        final radius = math.min(size.width, size.height) * 0.42;
        final widgetCenter = Offset(size.width / 2, size.height / 2);

        double labelY;
        switch (widget.layout) {
          case GaugeLabelLayout.above:
            labelY = center.dy - (radius + widget.spacing);
            break;
          case GaugeLabelLayout.inside:
            labelY = center.dy - (radius * 0.35 + widget.spacing);
            break;
          case GaugeLabelLayout.below:
            labelY = center.dy + widget.spacing;
            break;
        }
        final labelCenter = Offset(center.dx, labelY);
        final labelOffset = labelCenter - widgetCenter; // relative to Center()

        return GestureDetector(
          onPanDown: (d) => _update(d.localPosition, center),
          onPanUpdate: (d) => _update(d.localPosition, center),
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CustomPaint(
                    painter: _GaugePainter(
                      value: (_v - widget.min) / (widget.max - widget.min),
                      accent: widget.accent,
                      center: center,
                    ),
                  ),
                ),
                Center(
                  child: Transform.translate(
                    offset: labelOffset,
                    child: Text(
                      '${_v.toStringAsFixed(0)}°',
                      style: AppTypography.displayLarge.copyWith(
                        fontSize: 64,
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _update(Offset p, Offset center) {
    final dx = p.dx - center.dx;
    final dy = p.dy - center.dy;
    double angle = math.atan2(dy, dx); // [-pi, pi]
    if (angle < 0) angle += 2 * math.pi;
    angle = angle.clamp(math.pi, 2 * math.pi); // semi circle only
    final t = (angle - math.pi) / math.pi; // 0..1
    final mapped = widget.min + t * (widget.max - widget.min);
    setState(() => _v = mapped.clamp(widget.min, widget.max));
    widget.onChanged(_v);
  }
}

class _GaugePainter extends CustomPainter {
  final double value; // 0..1
  final Color accent;
  final Offset center;
  _GaugePainter({
    required this.value,
    required this.accent,
    required this.center,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = math.min(size.width, size.height) * 0.42;
    const start = math.pi;
    const sweep = math.pi;
    final bg = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round
      ..color = Colors.black12;
    final fg = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round
      ..color = accent;

    final rect = Rect.fromCircle(center: center, radius: radius);
    canvas.drawArc(rect, start, sweep, false, bg);
    canvas.drawArc(rect, start, sweep * value, false, fg);

    final knobAngle = start + sweep * value;
    final knob = Offset(
      center.dx + radius * math.cos(knobAngle),
      center.dy + radius * math.sin(knobAngle),
    );
    final knobPaint = Paint()..color = Colors.white;
    canvas.drawCircle(knob, 18, knobPaint);
    canvas.drawCircle(
      knob,
      18,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5
        ..color = accent,
    );
  }

  @override
  bool shouldRepaint(covariant _GaugePainter old) =>
      old.value != value || old.accent != accent || old.center != center;
}
