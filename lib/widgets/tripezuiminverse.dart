import 'package:flutter/material.dart';

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double trapeziumHeight =
        size.height; 

    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 53 / 100,
        0.0); 
    path.lineTo(size.width * 47 / 100, trapeziumHeight);
    path.lineTo(size.width, trapeziumHeight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}
