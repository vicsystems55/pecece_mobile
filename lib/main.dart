import 'package:flutter/material.dart';
import 'package:pecece/screens/splash.dart';
import 'package:pecece/screens/home.dart';
import 'package:pecece/screens/login.dart';
import 'package:pecece/screens/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: Colors.deepOrange),
      ),
      debugShowCheckedModeBanner: false,
      title: 'PECECE',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Splashscreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
      },
    );
  }
}
