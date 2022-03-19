import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mpv_v1/src/styles_colors/colors/colors_views.dart';

class ProgressPainter extends CustomPainter {
  ProgressPainter({required this.barra});

  double barra;

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
    ..strokeWidth = 6
    ..color = ColorSelect.txtBoHe
    ..style = PaintingStyle.stroke;
    Offset offset = Offset(size.width / 2, size.height * 0.50);
    canvas.drawCircle(offset, size.height * 0.48, paint);
    
    final paint2 = Paint()
    ..strokeWidth = 6
    ..color = ColorSelect.paginatorNext
    ..style = PaintingStyle.stroke;

    Offset offset2 = Offset(size.width * 0.50, size.height * 0.50);
    double porcentaje = pi * 2 * (barra / 100.0);
    Rect rect = Rect.fromCircle(center: offset2, radius: size.height * 0.48);
    canvas.drawArc(rect, -pi/2, porcentaje, false, paint2);
   
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}