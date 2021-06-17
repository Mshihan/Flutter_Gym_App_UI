import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'sa';

class FadeAnimation extends StatelessWidget {
  FadeAnimation({this.delay, this.child});
  final double delay;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    final tween = MultiTrackTween([
      Track("opacity").add(
        Duration(milliseconds: 500),
        Tween(begin: 0.0, end: 1.0),

      ),
      Track("translateY").add(
        Duration(milliseconds: 300),
        Tween(begin: 30.0, end: 0.0),
      ),
    ]);

    return ControlledAnimation(
      delay: Duration(
        milliseconds: (500 * delay).round(),
      ),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
          offset: Offset(0, animation["translateY"]),
          child: child,
        ),
      ),
    );
  }
}
