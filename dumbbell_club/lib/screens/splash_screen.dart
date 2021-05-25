import 'package:dumbbell_club/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Container(
          child: Image.asset(
            'images/logo.png',
          ),
        ),
        nextScreen: LoginPage(),
        backgroundColor: Colors.black,
        splashTransition: SplashTransition.fadeTransition,
        centered: true,
        splashIconSize: 200.0,
        duration: 2000,
      ),
    );
  }
}
