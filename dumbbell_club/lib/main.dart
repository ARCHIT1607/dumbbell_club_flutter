import 'package:dumbbell_club/profile/custom_workout_home.dart';
import 'package:dumbbell_club/profile/custom_workut/about_you.dart';
import 'package:dumbbell_club/profile/custom_workut/duration.dart';
import 'package:dumbbell_club/profile/custom_workut/goals.dart';
import 'package:dumbbell_club/profile/profile_home.dart';
import 'package:dumbbell_club/profile/stats.dart';
import 'package:dumbbell_club/screens/dashboard.dart';
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
      initialRoute: MyRoutes.loginRoute,
      routes: {
        '/': (context) => RegisterPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.resetPasswordRoute: (context) => ResetPassword(),
        MyRoutes.registerRoute: (context) => RegisterPage(),
        MyRoutes.verifyOtpRoute: (context) => VerifyOtp(),
        MyRoutes.newPasswordRoute: (context) => NewPassowrd(),
        MyRoutes.splashScreenRoute: (context) => SplashScreen(),
        MyRoutes.dashboardRoute: (context) => DashboardScreen(),
        MyRoutes.workoutRoute: (context) => WorkoutScreen(),
        MyRoutes.nutritionPageRoute: (context) => NutritionScreen(),
        MyRoutes.profileRoute: (context) => ProfileHomeScreen(),
        MyRoutes.customWorkoutHome : (context) => CustomWorkoutHome(),
        MyRoutes.aboutYou : (context) => AboutYou(),
        MyRoutes.duration : (context) => DurationPage(),
        MyRoutes.goals : (context) => GoalsPage(),
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
