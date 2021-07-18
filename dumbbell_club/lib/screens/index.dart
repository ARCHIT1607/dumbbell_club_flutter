import 'package:dumbbell_club/profile/profile_home.dart';
import 'package:dumbbell_club/screens/home.dart';
import 'package:dumbbell_club/screens/workout_screen.dart';
import 'package:dumbbell_club/settings/buy_me_coffee.dart';
import 'package:dumbbell_club/settings/settings_main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'nutrition_screen.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    // Text('Home Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    // Text('Search Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    // Text('Profile Page',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    SettingHome(),
    WorkoutScreen(),
    NutritionScreen(),
    Coffee(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter BottomNavigationBar Example'),
          backgroundColor: Colors.green),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(
                Icons.home,
                color: Color(0xFFDE8A00),
              ),
              label: '',
              backgroundColor: Color(0xFF131313),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.dumbbell,
              ),
              activeIcon: FaIcon(
                FontAwesomeIcons.dumbbell,
                color: Color(0xFFDE8A00),
              ),
              label: '',
              backgroundColor: Color(0xFF131313),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.utensils,
              ),
              activeIcon: FaIcon(
                FontAwesomeIcons.utensils,
                color: Color(0xFFDE8A00),
              ),
              label: '',
              backgroundColor: Color(0xFF131313),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.userCircle,
              ),
              activeIcon: FaIcon(
                FontAwesomeIcons.userCircle,
                color: Color(0xFFDE8A00),
              ),
              label: '',
              backgroundColor: Color(0xFF131313),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
