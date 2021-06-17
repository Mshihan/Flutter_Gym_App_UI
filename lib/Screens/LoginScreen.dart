import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  final url = 'http://esh-fitness.tk/gym/MemberRegistration';
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    FlutterWebviewPlugin().dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'LOGIN',
          style: TextStyle(
            fontFamily: 'Calistoga',
            color: Colors.white,
          ),
        ),
      ),
      url: 'http://esh-fitness.tk/gym/MemberRegistration',
      withLocalStorage: true,
    );
  }
}
