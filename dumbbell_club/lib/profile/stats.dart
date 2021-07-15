import 'package:dumbbell_club/profile/bar_chart.dart';
import 'package:dumbbell_club/profile/profile_home.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Color(0xFFC4C4C4)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Color(0xFFC4C4C4),
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                CircleAvatar(
                  radius: 30.0,
                  child: ClipOval(child: Image.asset('images/avatar.png')),
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
                        profileAttr: 'Total Workouts',
                        profileDetailText: '20',
                      ),
                      ProfileDetails(
                        profileAttr: 'Total Time',
                        profileDetailText: '340 mins',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Weekly Stats'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF3A4B60),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          StatsIcon(
                            iconColor: Color(0xFFF1D333),
                            statsIcon: Icons.check,
                            day: 'Mon',
                          ),
                          StatsIcon(
                            iconColor: Color(0xFFF1D333),
                            statsIcon: Icons.check,
                            day: 'Tue',
                          ),
                          StatsIcon(
                            iconColor: Color(0xFFF1D333),
                            statsIcon: Icons.check,
                            day: 'Wed',
                          ),
                          StatsIcon(
                            iconColor: Color(0xFFDE8A00),
                            statsIcon: Icons.block,
                            day: 'Thr',
                          ),
                          StatsIcon(
                            iconColor: Color(0xFFF1D333),
                            statsIcon: Icons.check,
                            day: 'Fri',
                          ),
                          StatsIcon(
                            iconColor: Color(0xFFF1D333),
                            statsIcon: Icons.play_arrow,
                            day: 'Sat',
                          ),
                          StatsIcon(
                            iconColor: Color(0xFFF1D333),
                            statsIcon: Icons.check,
                            day: 'Sun',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Calorie Count'),
                  ),
                ),
                BarChartSample2(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Activity'),
                        ),
                        InkWell(
                          child: Text(
                            'See All',
                            style: TextStyle(color: Color(0xffF1D333)),
                          ),
                          onTap: () => {
                            Navigator.pushNamed(
                                context, MyRoutes.resetPasswordRoute),
                          },
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RecentWorkout(boxColor: 0xFF3A4B60),
                          RecentWorkout(boxColor: 0xFFDE8A00),
                          RecentWorkout(boxColor: 0xFF3A4B60),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}

class RecentWorkout extends StatelessWidget {
  final boxColor;
  const RecentWorkout({
    Key? key,
    this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Color(boxColor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class StatsIcon extends StatelessWidget {
  final statsIcon;
  final iconColor;
  final day;
  const StatsIcon({
    Key? key,
    required this.statsIcon,
    required this.iconColor,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            shape: CircleBorder(),
            color: iconColor,
            // padding: EdgeInsets.all(20),
            onPressed: () {},
            child: Icon(
              statsIcon,
              size: 15,
              color: Color(0xFF303D4E),
            ),
          ),
          Text(day)
        ],
      ),
    );
  }
}
