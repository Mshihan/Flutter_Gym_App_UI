import 'package:flutter/material.dart';
import 'package:gym_app/Screens/LandingPage.dart';
import 'package:gym_app/Screens/LoginScreen.dart';
import '../Animations/FadeAnimation.dart';
import '../Components/BannerPage.dart';
import '../Components/Button.dart';
import '../Components/AccountDescription.dart';
import 'package:http/http.dart' as http;
//import 'package:requests/requests.dart';
//import 'package:shared_preferences/shared_preferences.dart';



class SignUpScreen extends StatefulWidget {
  static String id = 'signup_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String alertText = '';
  String username;
  String password;
  Icon passwordIcon;
  bool textType = true;
  IconData icon = Icons.visibility;
  final formTextUsernameController = TextEditingController();
  final formTextPasswordController = TextEditingController();


  Future<String> post(String username, String password) async {
//    var result = await Requests.post(
//        "http://esh-fitness.tk/test2.php",
//        body: {
//          "username": username,
//          "password": password,
//        }
//    );


    var Result = await http.post(
        "http://esh-fitness.tk/test2.php",
        body: {
          "username": username,
          "password": password,
        }
    );
//    var result = await http.post
//    return (Result.body);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/signupbackground.jpg'),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3),
                              BlendMode.darken),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 90,
                      top: 100,
                      child: FadeAnimation(
                        delay: 3.5,
                        child: Text(
                          'NXT',
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
                      top: 140,
                      child: FadeAnimation(
                        delay: 3.7,
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
                      right: 35,
                      top: 218,
                      child: FadeAnimation(
                        delay: 3.9,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: BannerPage(
                  text: 'SIGN UP',
                ),
              ),
              FadeAnimation(
                delay: 4.15,
                child: Center(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                        accentColor: Colors.black87,
                        primaryColor: Colors.black87,
                        textSelectionColor: Colors.black87),
                    child: Container(
                      width: 400,
                      height: 58,
                      margin: EdgeInsets.symmetric(horizontal: 35),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4, left: 24, right: 16),
                        child: TextFormField(
                          controller: formTextUsernameController,
                          onChanged: ((value){
                            username = value;
                          }),
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                            fontFamily: 'Calistoga',
                            fontWeight: FontWeight.normal,
                          ),
                          decoration: InputDecoration(
                            errorStyle: TextStyle(
                              color: Colors.red,
                            ),
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              fontSize: 16,
//                              fontFamily: 'Calistoga',
                              color: Colors.black54,
                            ),
                            hoverColor: Colors.red,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.email,
                              ),
                              onPressed: () {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FadeAnimation(
                delay: 4.2,
                child: Center(
                  child: Theme(
                    data: Theme.of(context).copyWith(
                        accentColor: Colors.black87,
                        primaryColor: Colors.black87,
                        textSelectionColor: Colors.black87),
                    child: Container(
                      width: 400,
                      height: 58,
                      margin: EdgeInsets.symmetric(horizontal: 35),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 4, left: 24, right: 16),
                        child: TextFormField(
                          controller: formTextPasswordController,
                          onChanged: ((value){
                            password = value;
                          }),
                          keyboardType: TextInputType.text,
                          obscureText: textType,
                          style: TextStyle(
                            fontFamily: 'Calistoga',
                            fontWeight: FontWeight.normal,
                          ),
                          decoration: InputDecoration(
                            errorStyle: TextStyle(
                              color: Colors.red,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                            hoverColor: Colors.red,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                icon,
                              ),
                              onPressed: () {
                                setState(() {
                                  icon == Icons.visibility ? icon = Icons.visibility_off : icon = Icons.visibility;
                                  icon == Icons.visibility ? textType = true : textType = false;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
//                BuildInputFields(
//                  passwordCharacterSettings: true,
//                ).
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                alertText,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              FadeAnimation(
                delay: 4.25,
                child: Container(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: Button(
                    text: 'SIGN UP',
                    onPress: () async{
                      String state = await post(username, password);
                       state == 'success ' ? Navigator.pushNamed(context, LandingPage.id) : alertText = 'Incorrect Username or Password';
                      formTextUsernameController.clear();
                      formTextPasswordController.clear();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              AccountDescription(
                description: 'Don\'t have an account?',
              ),
              SizedBox(
                height: 28.0,
              ),
              FadeAnimation(
                delay: 4.25,
                child: Container(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: Button(
                    text: 'LOGIN',
                    onPress: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
