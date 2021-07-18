import 'package:dumbbell_club/utlis/CustomTheme.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingHome extends StatefulWidget {
  const SettingHome({Key? key}) : super(key: key);

  @override
  _SettingHomeState createState() => _SettingHomeState();
}

class _SettingHomeState extends State<SettingHome> {
  bool _light = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? CustomTheme.darkTheme : CustomTheme.lightTheme,
      home: Scaffold(
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
                        // backgroundImage:
                        //     NetworkImage('./assets/images/avatar.png'),
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
                        // child: FlutterSwitch(
                        //   height: 20.0,
                        //   width: 40.0,
                        //   padding: 4.0,
                        //   toggleSize: 15.0,
                        //   borderRadius: 10.0,
                        //   value: status,
                        //   onToggle: (value) {
                        //     setState(() {
                        //       status = value;
                        //       print(status);
                        //       if (status) {
                        //         print('inside true');
                        //         _themeChanger
                        //             .setTheme(AppTheme.darkTheme(context));
                        //         print(_themeChanger
                        //             .setTheme(AppTheme.darkTheme(context)));
                        //       } else {
                        //         _themeChanger
                        //             .setTheme(AppTheme.lightTheme(context));
                        //       }
                        //     });
                        //   },
                        // ),
                        child: Switch(
                            value: _light,
                            activeColor: Colors.white,
                            onChanged: (toggle) {
                              setState(() {
                                _light = toggle;
                              });
                            }),
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
                    routeName: MyRoutes.indexRoute,
                  ),
                ],
              ),
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
