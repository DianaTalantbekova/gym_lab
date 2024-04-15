import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class BottomNavigationIndicatorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(35.5, 1.5);
    path.lineTo(0, 0.5);
    path.lineTo(35.5, 0);
    path.lineTo(71, 0.5);
    path.lineTo(35.5, 1.5);
    path.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.shader = ui.Gradient.linear(
      Offset(size.width * 0.05633803, size.height * 25.00050),
      Offset(size.width * 0.9577465, size.height * 25.00045),
      [
        Colors.white.withOpacity(0),
        Colors.white.withOpacity(1),
        Colors.white.withOpacity(0)
      ],
      [0, 0.484375, 1],
    );
    canvas.drawPath(path, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
