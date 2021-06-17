import 'package:flutter/material.dart';

class GradientEffect extends StatelessWidget {
  GradientEffect({this.start, this.finish});
  final double start;
  final double finish;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(start),
            Colors.black.withOpacity(finish),
          ],
        ),
      ),
    );
  }
}
