import 'package:flutter/material.dart';
import 'package:gym_app/Screens/SignUpScreen.dart';
//import 'package:page_transition/page_transition.dart';
import '../Animations/FadeAnimation.dart';
import 'LoginScreen.dart';

var popValue;

class IntroPage extends StatefulWidget {
  static String id = 'intro_page';
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _pageSwapController;
  AnimationController _iconHideController;
  Animation<double> _iconHideAnimation;
  Animation<double> _scaleAnimation;
  Animation<double> _pageSwapAnimation;


  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _iconHideController.forward();
            }
          });

    _iconHideController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _iconHideAnimation =
      Tween<double>(begin: 1.0, end: 0.0).animate(_iconHideController)
        ..addStatusListener((status){
      if(status == AnimationStatus.completed){
        _pageSwapController.forward();
      }
    });


    _pageSwapController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _pageSwapAnimation =
        Tween<double>(begin: 1.0, end: 100.0).animate(_pageSwapController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
//              popValue = Navigator.push(
//                context,
//                PageTransition(
//                  type: PageTransitionType.fade,
//                  child:SignUpScreen(),
//                  duration: Duration(milliseconds: 500),
//                ),
//              );
              if(popValue != null) {
                Future.delayed(Duration(milliseconds: 1500), () {
                  setState(() {
                    _pageSwapController.reverse();
                  });
                  _pageSwapController.addStatusListener((status){
                    if(status == AnimationStatus.dismissed){
                      setState(() {
                        _iconHideController.reverse();
                      });
                      _iconHideController.addStatusListener((status){
                        setState(() {
                          _scaleController.reverse();

                        });
                      });
                    }
                  });
                });
              }
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/backgroundGymapp.jpg'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 105,
              right: 35,
              child: FadeAnimation(
                delay: 3.55,
                child: Container(
                  height: 150,
                  width: 5,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              right: 70,
              top: 100,
              child: FadeAnimation(
                delay: 3.5,
                child: Text(
                  'NXT',
                  style: TextStyle(
                    fontFamily: 'Calistoga',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.lime,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 65,
              top: 140,
              child: FadeAnimation(
                delay: 3.6,
                child: Text(
                  'LVL',
                  style: TextStyle(
                    fontFamily: 'Calistoga',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 65,
              top: 218,
              child: FadeAnimation(
                delay: 3.8,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Fitness ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Poppins'),
                    ),
                    TextSpan(
                      text: ' Center',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Poppins'),
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical:12.0,horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: FadeAnimation(
                          delay: 1.5,
                          child: SizedBox(
                            height: 150,
                            width: 10,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 3.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeAnimation(
                              delay: 1.55,
                              child: Text(
                                'Welcome',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60.0,
                                  fontFamily: 'Calistoga',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FadeAnimation(
                              delay: 1.6,
                              child: Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  'UNLEASH YOUR INNER',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                            FadeAnimation(
                              delay: 1.65,
                              child: Container(
                                margin: EdgeInsets.only(left: 5),
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  'ATHLETE',
                                  style: TextStyle(
                                    color: Colors.lime,
                                    fontSize: 25.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200.0,
                  ),
                  FadeAnimation(
                    delay: 1.8,
                    child: AnimatedBuilder(
                      animation: _scaleController,
                      builder: (context, child) => Transform.scale(
                        scale: _scaleAnimation.value,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 25.0),
                            padding: EdgeInsets.all(10),
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: InkWell(
                              onTap: () {
                                _scaleController.forward();
                              },
                              child: AnimatedBuilder(
                                animation: _pageSwapController,
                                builder: (context, child) => Transform.scale(
                                  scale: _pageSwapAnimation.value,
                                  child: Container(
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          offset: Offset(-1, 0),
                                          blurRadius: 20,
                                          spreadRadius: 1,
                                        ),
                                      ],
                                      color: Colors.white,
                                    ),
                                    child: AnimatedBuilder(
                                      animation: _iconHideController,
                                      builder: (context, child) => Icon(
                                        Icons.navigate_next,
                                        color: Colors.black.withOpacity(_iconHideAnimation.value),
                                        size: 26,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
        width: double.infinity,
      ),
    );
  }
}
