import 'package:flutter/material.dart';
import '../Animations/FadeAnimation.dart';

class BannerPage extends StatelessWidget {
  BannerPage({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: FadeAnimation(
        delay: 4.0,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontFamily: 'Calistoga',
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

