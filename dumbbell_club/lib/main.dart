import 'package:dumbbell_club/profile/profile_home.dart';
import 'package:dumbbell_club/profile/stats.dart';
import 'package:dumbbell_club/screens/dashboard.dart';
import 'package:dumbbell_club/screens/home.dart';
import 'package:dumbbell_club/screens/index.dart';
import 'package:dumbbell_club/screens/login_page.dart';
import 'package:dumbbell_club/screens/new_password.dart';
import 'package:dumbbell_club/screens/nutrition_screen.dart';
import 'package:dumbbell_club/screens/register.dart';
import 'package:dumbbell_club/screens/reset_password.dart';
import 'package:dumbbell_club/settings/buy_me_coffee.dart';
import 'package:dumbbell_club/settings/contact_us.dart';
import 'package:dumbbell_club/settings/feedback.dart';
import 'package:dumbbell_club/settings/my_account.dart';
import 'package:dumbbell_club/settings/settings_main.dart';
import 'package:dumbbell_club/screens/splash_screen.dart';
import 'package:dumbbell_club/screens/verify_otp.dart';
import 'package:dumbbell_club/screens/workout_screen.dart';
import 'package:dumbbell_club/settings/about_us.dart';
import 'package:dumbbell_club/utlis/CustomTheme.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:dumbbell_club/utlis/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool light = true;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(CustomTheme.lightTheme),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      initialRoute: MyRoutes.indexRoute,
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
        MyRoutes.statsRoute: (context) => StatsScreen(),
        MyRoutes.settingsRoute: (context) => SettingHome(),
        MyRoutes.abouUsRoute: (context) => AboutUs(),
        MyRoutes.coffeRoute: (context) => Coffee(),
        MyRoutes.myAccountRoute: (context) => MyAccount(),
        MyRoutes.feedbackRoute: (context) => FeedBack(),
        MyRoutes.contactRoute: (context) => ContactUs(),
        MyRoutes.indexRoute: (context) => Index(),
      },
    );
  }
}
