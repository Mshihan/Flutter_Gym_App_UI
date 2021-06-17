import 'package:flutter/material.dart';

class OnBoardImageCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(15, size.height-41,  45, size.height -48);
    path.lineTo(size.width-50, size.height-140);
    path.quadraticBezierTo(size.width-18, size.height-150, size.width, size.height-200);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}