import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dumbbell_club/screens/home.dart';
import 'package:dumbbell_club/screens/nutrition_screen.dart';
import 'package:dumbbell_club/screens/workout_screen.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileHomeScreen extends StatefulWidget {
  @override
  _ProfileHomeScreenState createState() => _ProfileHomeScreenState();
}

class _ProfileHomeScreenState extends State<ProfileHomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      HomePage(),
      WorkoutScreen(),
      NutritionScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Color(0xFFDE8A00),
              inactiveColor: Color(0xFF9CA5AF)),
          BottomNavyBarItem(
              icon: FaIcon(
                FontAwesomeIcons.dumbbell,
              ),
              title: Text('Workout'),
              activeColor: Color(0xFFDE8A00),
              inactiveColor: Color(0xFF9CA5AF)),
          BottomNavyBarItem(
              icon: FaIcon(
                FontAwesomeIcons.nutritionix,
              ),
              title: Text('Nutrition'),
              activeColor: Color(0xFFDE8A00),
              inactiveColor: Color(0xFF9CA5AF)),
          BottomNavyBarItem(
              icon: FaIcon(
                FontAwesomeIcons.userCircle,
              ),
              title: Text('Profile'),
              activeColor: Color(0xFFDE8A00),
              inactiveColor: Color(0xFF9CA5AF)),
        ],
      ),
      body: _widgetOptions.elementAt(currentIndex),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  final profileDetailText;
  final profileAttr;
  const ProfileDetails({
    Key? key,
    required this.profileDetailText,
    required this.profileAttr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          profileDetailText,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xffF1D333),
          ),
        ),
        Text(
          profileAttr,
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff606060),
          ),
        ),
      ],
    );
  }
}

class ProfileTile extends StatelessWidget {
  final profileTileText;
  final profileRouting;
  const ProfileTile({
    Key? key,
    required this.profileTileText,
    required this.profileRouting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF3A4B60),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.pushNamed(context, profileRouting);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(profileTileText),
            FaIcon(
              FontAwesomeIcons.angleRight,
              color: Color(0xFFF1D333),
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                CircleAvatar(
                  child: Image.asset('icons/avatar.png'),
                  radius: 50.0,
                ),
                SizedBox(height: 5),
                Text(
                  'Jon Snow',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  '@ username',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF898989),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProfileDetails(
                        profileAttr: 'Weight',
                        profileDetailText: '55 Kg',
                      ),
                      ProfileDetails(
                        profileAttr: 'Height',
                        profileDetailText: '170 cm',
                      ),
                      ProfileDetails(
                        profileAttr: 'Age',
                        profileDetailText: '17y,8m',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF1D333),
                      borderRadius: BorderRadius.circular(12)),
                  width: 150,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.heartbeat,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'BMI',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF606060)),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '23.5',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ProfileTile(
                  profileRouting: MyRoutes.resetPasswordRoute,
                  profileTileText: 'Measurements',
                ),
                ProfileTile(
                  profileRouting: MyRoutes.loginRoute,
                  profileTileText: 'Stats',
                ),
                ProfileTile(
                  profileRouting: MyRoutes.loginRoute,
                  profileTileText: 'Custom Workout',
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF3A4B60),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '“Winners never quit, \nQuitters never win.”',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFF1D333),
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    primary: Color(0xFFF1D333),
                  ),
                  onPressed: () {},
                  child: Text(
                    '☕ Buy me a coffee',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
