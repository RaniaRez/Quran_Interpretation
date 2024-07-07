import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/const.dart';

class CustomLoader extends StatefulWidget {
  const CustomLoader({super.key, this.size = 20});
  final double size;

  @override
  CustomLoaderState createState() => CustomLoaderState();
}

class CustomLoaderState extends State<CustomLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double get size => widget.size;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller.repeat(reverse: false);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) => SizedBox(
          height: size,
          width: size,
          child: CustomPaint(
            painter: CustomCircularLoader(controller: _controller),
          )),
    );
  }
}

class CustomCircularLoader extends CustomPainter {
  CustomCircularLoader({
    required this.controller,
  })  : animation = Tween(begin: 0.0, end: 1.0).animate(controller),
        super(repaint: controller);

  final AnimationController controller;
  final Animation<double> animation;

  final double pi = math.pi;
  final double _epsilon = 0.000001;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final gradient = SweepGradient(
      startAngle: 0,
      endAngle: pi + (2 * pi),
      colors: [
        kPrimary,
        kPrimary.withOpacity(0.9),
        kPrimary.withOpacity(0.8),
        kPrimary.withOpacity(0.7),
        kPrimary.withOpacity(0.6),
        kPrimary.withOpacity(0.5),
        kPrimary.withOpacity(0.3),
        kPrimary.withOpacity(0.2),
        kPrimary.withOpacity(0.2),
        kPrimary.withOpacity(0.1),
        const Color(0xffEAEFF5),
      ],
      stops: const [
        0.0,
        0.1,
        0.2,
        0.3,
        0.4,
        0.5,
        0.6,
        0.7,
        0.8,
        0.9,
        1.0,
      ],
      transform: GradientRotation(((2 * pi) - _epsilon) * animation.value),
    );
    final backgroundGradient = SweepGradient(
        tileMode: TileMode.decal,
        startAngle: 0,
        endAngle: 2 * pi,
        colors: [
          const Color(0xffEAEFF5),
          kPrimary.withOpacity(0.1),
          kPrimary.withOpacity(0.2),
          kPrimary.withOpacity(0.4),
          kPrimary.withOpacity(0.5),
          kPrimary.withOpacity(0.6),
          kPrimary.withOpacity(0.7),
          kPrimary.withOpacity(0.8),
          kPrimary.withOpacity(0.9),
        ],
        stops: const [
          0.0,
          0.1,
          0.2,
          0.3,
          0.4,
          0.5,
          0.6,
          0.7,
          0.8,
        ],
        transform: GradientRotation(((2 * pi)) * animation.value));
    final backgroundPaint = Paint()
      ..shader = backgroundGradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width / 5
      ..strokeCap = StrokeCap.round;
    final paint = Paint()
      ..strokeWidth = size.width / 5
      ..style = PaintingStyle.stroke
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.round
      ..color = kPrimary
      ..strokeJoin = StrokeJoin.round;
    canvas.drawArc(
      rect,
      0,
      pi * 2,
      false,
      backgroundPaint,
    );
    canvas.drawArc(
      rect,
      animation.value * 2 * pi,
      0.72,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
