import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingHome extends StatefulWidget {
  const SettingHome({Key? key}) : super(key: key);

  @override
  _SettingHomeState createState() => _SettingHomeState();
}

class _SettingHomeState extends State<SettingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFC4C4C4)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 70.0),
          child: Text(
            'Settings',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SettingsTile(
                  tileIcon: FontAwesomeIcons.userCircle,
                  tileText: 'My Account',
                  routeName: MyRoutes.myAccountRoute,
                ),
                SettingsTile(
                    tileIcon: Icons.account_box_sharp,
                    tileText: 'About Us',
                    routeName: MyRoutes.abouUsRoute),
                SettingsTile(
                  tileIcon: FontAwesomeIcons.coffee,
                  tileText: 'Buy me a coffee',
                  routeName: MyRoutes.coffeRoute,
                ),
                SettingsTile(
                  tileIcon: FontAwesomeIcons.info,
                  tileText: 'Help',
                  routeName: null,
                ),
                SettingsTile(
                    tileIcon: FontAwesomeIcons.idCardAlt,
                    tileText: 'Contact Us',
                    routeName: MyRoutes.contactRoute),
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
  const SettingsTile({
    Key? key,
    required this.tileText,
    required this.tileIcon,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: ListTile(
        leading: FaIcon(
          tileIcon,
          color: Colors.red,
        ),
        title: Text(
          tileText,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
