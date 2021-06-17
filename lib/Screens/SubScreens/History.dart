import 'package:flutter/material.dart';
import 'package:gym_app/Animations/FadeAnimation.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(
        delay: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'HELLO UNAME',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/profile.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//            Container(
//              child: TableCalendar(
//                calendarStyle: CalendarStyle(
//                  todayColor: Colors.black26,
//                  selectedColor: Colors.redAccent,
//                  todayStyle: TextStyle(
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white,
//                  ),
//                ),
//                calendarController: _calendarController,
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
