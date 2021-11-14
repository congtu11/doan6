
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(size.width * 0.2, 0.0);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width * 0.2, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}