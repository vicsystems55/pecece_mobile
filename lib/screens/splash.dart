import 'package:flutter/material.dart';
import 'package:pecece/screens/login.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:pecece/screens/home.dart';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: Home(),
        title: new Text(
          'Pecece',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);
  }
} 





