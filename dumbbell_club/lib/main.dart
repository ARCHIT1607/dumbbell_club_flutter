import 'package:dumbbell_club/profile/custom_workout_home.dart';
import 'package:dumbbell_club/profile/profile_home.dart';
import 'package:dumbbell_club/screens/dashboard.dart';
import 'package:dumbbell_club/screens/home.dart';
import 'package:dumbbell_club/screens/login_page.dart';
import 'package:dumbbell_club/screens/new_password.dart';
import 'package:dumbbell_club/screens/nutrition_screen.dart';
import 'package:dumbbell_club/screens/register.dart';
import 'package:dumbbell_club/screens/reset_password.dart';
import 'package:dumbbell_club/screens/splash_screen.dart';
import 'package:dumbbell_club/screens/verify_otp.dart';
import 'package:dumbbell_club/screens/workout_screen.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        canvasColor: Color(0xff202020),
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryColor: Colors.white,
      ),
      initialRoute: MyRoutes.customWorkoutHome,
      routes: {
        '/': (context) => RegisterPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.resetPasswordRoute: (context) => ResetPassword(),
        MyRoutes.registerRoute: (context) => RegisterPage(),
        MyRoutes.verifyOtpRoute: (context) => VerifyOtp(),
        MyRoutes.newPasswordRoute: (context) => NewPassowrd(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.splashScreenRoute: (context) => SplashScreen(),
        MyRoutes.dashboardRoute: (context) => DashboardScreen(),
        MyRoutes.workoutRoute: (context) => WorkoutScreen(),
        MyRoutes.nutritionPageRoute: (context) => NutritionScreen(),
        MyRoutes.profileRoute: (context) => ProfileHomeScreen(),
        MyRoutes.customWorkoutHome : (context) => CustomWorkoutHome(),
      },
    );
  }
}
