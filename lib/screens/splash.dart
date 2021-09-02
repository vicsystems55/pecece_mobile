import 'package:flutter/material.dart';
import 'package:pecece/screens/login.dart';

import 'package:pecece/screens/home.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

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
    return EasySplashScreen(
      logo: Image.asset('assets/images/logo.png'),
      title: Text(
        "Pecece",
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: Text(
        "Loading...",
        style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
        ),
      ),
      navigator: Home(),
      durationInSeconds: 5,
    );
  }
}
