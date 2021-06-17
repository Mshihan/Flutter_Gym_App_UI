import 'package:flutter/material.dart';
import '../Animations/FadeAnimation.dart';


class AccountDescription extends StatelessWidget {
  AccountDescription({this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 4.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.black.withOpacity(0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            child: Text(
              description,
              style: TextStyle(
                fontFamily: 'Lobster',
                fontWeight: FontWeight.w700,
                fontSize: 17.0,
                shadows: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.black.withOpacity(0.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

