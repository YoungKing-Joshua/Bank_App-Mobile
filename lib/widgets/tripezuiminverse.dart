import 'package:flutter/material.dart';

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double trapeziumHeight =
        size.height; // Set the height of the trapezium

    path.moveTo(size.width, 0.0);
    path.lineTo(size.width * 53 / 100,
        0.0); // Adjust the points to create a right-angle trapezium
    path.lineTo(size.width * 47 / 100, trapeziumHeight);
    path.lineTo(size.width, trapeziumHeight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TrapeziumClipper oldClipper) => false;
}
