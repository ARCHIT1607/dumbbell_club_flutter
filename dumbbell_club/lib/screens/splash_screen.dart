import 'package:dumbbell_club/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DUMBBELL CLUB',
      home: AnimatedSplashScreen(
      splash: Image.asset('images/dumbbells.png'),
      nextScreen: LoginPage(),
      backgroundColor: Colors.black,
      splashTransition: SplashTransition.fadeTransition,
    ),
    );
    
  }
}
