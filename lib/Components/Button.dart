import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.text, this.onPress});
  final String text;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      animationDuration: Duration(milliseconds: 1000),
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 25),
      color: Colors.black.withOpacity(0.7),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontFamily: 'Calistoga',
          fontWeight: FontWeight.w900,
          letterSpacing: 1,
//          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
