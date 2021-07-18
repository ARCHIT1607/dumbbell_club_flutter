import 'package:dumbbell_club/screens/profile.dart';
import 'package:dumbbell_club/screens/workout_screen.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'nutrition_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int currentTab = 0;

  final List screens = [
    DashboardScreen(),
    WorkoutScreen(),
    NutritionScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashboardScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232F3E),
      body: SingleChildScrollView(child: PageStorage(
        child: currentScreen,
        bucket: bucket),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber.shade700,
        onPressed: () {},
        child: Text(
          "GO",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
        ),
        elevation: 2.0,
      ),
    //   bottomNavigationBar: BottomAppBar(
    //     color: Colors.black,
    // shape: CircularNotchedRectangle(),
    // notchMargin: 15,
    // child: Container(
    //   height: 70,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Row(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           SizedBox(
    //             width: 10.0,
    //           ),
    //           MaterialButton(
    //             onPressed: () {
    //               setState(() {
    //                 currentScreen = DashboardScreen();
    //                 currentTab = 0;
    //               });
    //             },
    //             minWidth: 40,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Icon(
    //                   Icons.home_filled,
    //                   color: Colors.amber.shade400,
    //                 ),
    //                 Text(
    //                   "Home",
    //                   style: TextStyle(
    //                     color: Colors.amber.shade400,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           MaterialButton(
    //             onPressed: () {
    //               setState(() {
    //                 currentScreen = WorkoutScreen();
    //                 currentTab = 1;
    //               });
    //             },
    //             minWidth: 40,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Icon(
    //                   Icons.timer_rounded,
    //                   color: Colors.amber.shade400,
    //                 ),
    //                 Text(
    //                   "Workouts",
    //                   style: TextStyle(
    //                     color: Colors.amber.shade400,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           MaterialButton(
    //             onPressed: () {
    //               setState(() {
    //                 currentScreen = NutritionScreen();
    //                 currentTab = 2;
    //               });
    //             },
    //             minWidth: 40,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Icon(
    //                   Icons.food_bank_sharp,
    //                   color: Colors.amber.shade400,
    //                 ),
    //                 Text(
    //                   "Nutrition",
    //                   style: TextStyle(
    //                     color: Colors.amber.shade400,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           MaterialButton(
    //             onPressed: () {
    //               setState(() {
    //                 currentScreen = ProfileScreen();
    //                 currentTab = 3;
    //               });
    //             },
    //             minWidth: 40,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Icon(
    //                   Icons.account_circle,
    //                   color: Colors.amber.shade400,
    //                 ),
    //                 Text(
    //                   "Profile",
    //                   style: TextStyle(
    //                     color: Colors.amber.shade400,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           SizedBox(
    //             width: 10.0,
    //           )
    //         ],
    //       ),
          
    //     ],
    //   ),
    // ),
    // ),
    );
  }
}
