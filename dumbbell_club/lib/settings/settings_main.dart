import 'package:dumbbell_club/utlis/CustomTheme.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:dumbbell_club/utlis/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingHome extends StatefulWidget {
  const SettingHome({Key? key}) : super(key: key);

  @override
  _SettingHomeState createState() => _SettingHomeState();
}

class _SettingHomeState extends State<SettingHome> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 70.0),
          child: Text(
            'Settings',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 100,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          NetworkImage('./assets/images/avatar.png'),
                    ),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.white70,
                        width: 4.0,
                      ),
                    ),
                  ),
                  title: Text(
                    'KAKASHI HATAKE',
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text('@ username'),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      primary: Color(0xFFF1D333),
                    ),
                    onPressed: () {},
                    child: Text(
                      '☕ Buy me a coffee',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ),
                SettingsTile(
                  tileIcon: FontAwesomeIcons.userCircle,
                  tileText: 'My Account',
                  routeName: MyRoutes.myAccountRoute,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SettingsTile(
                        tileIcon: Icons.account_box_sharp,
                        tileText: 'Dark Theme',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28.0),
                      child: FlutterSwitch(
                        height: 20.0,
                        width: 40.0,
                        padding: 4.0,
                        toggleSize: 15.0,
                        borderRadius: 10.0,
                        value: status,
                        onToggle: (value) {
                          setState(() {
                            status = value;
                            if (status) {
                              _themeChanger.setTheme(CustomTheme.darkTheme);
                            } else {
                              _themeChanger.setTheme(CustomTheme.lightTheme);
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SettingsTile(
                    tileIcon: Icons.account_box_sharp,
                    tileText: 'About Us',
                    routeName: MyRoutes.abouUsRoute),
                SettingsTile(
                  tileIcon: FontAwesomeIcons.comments,
                  tileText: 'Feedback',
                  routeName: MyRoutes.feedbackRoute,
                ),
                SettingsTile(
                  tileIcon: Icons.logout,
                  tileText: 'Logout',
                  routeName: MyRoutes.homeRoute,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final tileText;
  final tileIcon;
  final routeName;
  final toggleButton;
  const SettingsTile(
      {Key? key,
      required this.tileText,
      required this.tileIcon,
      this.routeName,
      this.toggleButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: ListTile(
        leading: FaIcon(
          tileIcon,
        ),
        title: Text(
          tileText,
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        trailing: toggleButton,
      ),
    );
  }
}
