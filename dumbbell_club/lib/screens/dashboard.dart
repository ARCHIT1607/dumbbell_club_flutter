import 'package:dumbbell_club/profile/stats.dart';
import 'package:dumbbell_club/screens/workout_screen.dart';
import 'package:dumbbell_club/settings/settings_main.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool custom_workout = true;
    final List<String> weekdays = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    final List<String> months = [
      'January',
      'Febraury',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    DateTime date = DateTime.now();
    var day = weekdays[date.weekday - 1];
    var month = months[date.month - 1];
    var month_date = date.day;

    return Container(
        child: Column(children: [
      Column(children: [
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: ListTile(
              title: Text("$day, $month $month_date",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 14.0,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  )),
              subtitle: Text("Hello Jon ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 36.0,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  )),
              trailing: CircleAvatar(
                backgroundImage: ExactAssetImage(
                  "assets/images/profile.JPG",
                ),
                radius: 40.0,
              )),
        ),
        Stack(alignment: Alignment.bottomRight, children: [
          Container(
            height: height * 0.20,
            width: width * 0.90,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color(0xffFBFBFB),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffE1E1E1),
                      blurRadius: 8.0,
                      offset: Offset(0.0, 4.0))
                ],
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularPercentIndicator(
                        progressColor: Color(0xffFF7500),
                        radius: height * 0.15,
                        lineWidth: height * 0.020,
                        backgroundColor: Colors.orangeAccent,
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: 0.8,
                        animation: true,
                        animationDuration: 20,
                      ),
                      CircularPercentIndicator(
                        progressColor: Colors.amber,
                        radius: height * 0.10,
                        lineWidth: height * 0.020,
                        backgroundColor: Colors.amber.shade100,
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: 0.6,
                        animation: true,
                        animationDuration: 2,
                      )
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Weekly Stats",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xffFF7500),
                              radius: height * 0.015,
                            ),
                            SizedBox(width: 10.0),
                            Text("1270 kcal/2500 kcal"),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.001,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: height * 0.015,
                            ),
                            SizedBox(width: 10.0),
                            Text("2 hr 30 mins"),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.001,
                        ),
                        Row(
                          children: [
                            SizedBox(width: width * 0.40),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
          //Stats Navigation Button
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StatsScreen()));
            },
            child: Container(
              width: width * 0.12,
              height: height * 0.05,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xffFF7500),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffE1E1E1),
                        offset: Offset(-1.0, -1.0),
                        blurRadius: 2.0)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: height * 0.05,
              ),
            ),
          )
        ]),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          padding: EdgeInsets.only(left: width * 0.075, top: 20.0),
          alignment: Alignment.topLeft,
          child: Text(
            "New Favourite",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          height: height * 0.35 >= 250 ? height * 0.35 : 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FavouriteWorkout(
                width: width,
                height: height,
                title: "Weight Loss Training",
                subtitle: "Full body workout",
                duration: 40,
                calories: 350,
                image: "fav",
              ),
              FavouriteWorkout(
                width: width,
                height: height,
                title: "Mobility Burst",
                subtitle: "Full body workout",
                duration: 30,
                calories: 600,
                image: "fav",
              ),
              FavouriteWorkout(
                width: width,
                height: height,
                title: "Muscle Build Training",
                subtitle: "Full body workout",
                duration: 50,
                calories: 300,
                image: "fav",
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          alignment: Alignment.center,
          width: width * 0.9,
          height: height * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xffFF7500),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffE1E1E1),
                    blurRadius: 8.0,
                    offset: Offset(0.0, 4.0))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "You burned 1270 calories this week",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width * 0.3,
                height: height * 0.05,
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Share",
                      style: TextStyle(color: Color(0xffFF7500)),
                    ),
                    Icon(
                      Icons.ios_share_rounded,
                      color: Color(0xffFF7500),
                      size: 20.0,
                    )
                  ],
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xff232F3E)),
              )
            ],
          ),
        ),
        SizedBox(height: height * 0.05),
        Container(
          padding: EdgeInsets.only(left: 30.0, top: 10.0, bottom: 20.0),
          alignment: Alignment.topLeft,
          child: Text(
            "Custom Workout",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          width: width * 0.9,
          height: height * 0.30,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color(0xffFBFBFB),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    color: Color(0xffE1E1E1),
                    blurRadius: 8.0,
                    offset: Offset(0.0, 4.0))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      custom_workout == false
                          ? "Get your custom plan\n after answering this\n simple questionaire"
                          : "Continue your\ncustomised workout \nplan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.04,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color(0xff232F3E),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                          child: Text(
                        custom_workout == false ? "Create Plan" : "Resume",
                        style: TextStyle(color: Colors.white),
                      )),
                    )
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage:
                        ExactAssetImage('assets/images/warmup.jpg'),
                    radius: width * 0.2,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Container(
          padding: EdgeInsets.only(left: 30.0, top: 10.0),
          alignment: Alignment.topLeft,
          child: Text(
            "Challenges",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0, top: 10, bottom: 20.0),
          height: height * 0.4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ChallengeWidget(
                  height: height,
                  width: width,
                  title: "Core Challenge",
                  image_name: "core.jpg"),
              ChallengeWidget(
                  height: height,
                  width: width,
                  title: "Mobility Challenge",
                  image_name: "warmup.jpg"),
              ChallengeWidget(
                  height: height,
                  width: width,
                  title: "Stability Challenge",
                  image_name: "warmup.jpg"),
            ],
          ),
        ),
      ])
    ]));
  }
}

class ChallengeWidget extends StatelessWidget {
  const ChallengeWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    required this.image_name,
  }) : super(key: key);
  final double height;
  final double width;
  final String title;
  final String image_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      width: width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$title",
            style: TextStyle(
              fontSize: width * 0.05,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          CircleAvatar(
            backgroundImage: ExactAssetImage("assets/images/core2.jpg"),
            radius: width * 0.2,
          )
        ],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xffE1E1E1), blurRadius: 8.0, offset: Offset(0.0, 4.0))
      ], color: Color(0xffFBFBFB), borderRadius: BorderRadius.circular(20.0)),
    );
  }
}

class FavouriteWorkout extends StatelessWidget {
  const FavouriteWorkout({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.subtitle,
    required this.duration,
    required this.calories,
    required this.image,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final String subtitle;
  final int duration;
  final int calories;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(15.0),
      width: width * 0.8,
      child: Row(
        children: [
          //Text
          Container(
            width: width * 0.45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        Text(
                          "$subtitle",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[600],
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer_rounded,
                      size: width * 0.04,
                    ),
                    Text(
                      "$duration mins",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.04,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                    Icon(
                      Icons.local_fire_department_outlined,
                      size: width * 0.04,
                    ),
                    Text(
                      "$calories kcal",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorkoutScreen()));
                  },
                  child: Container(
                    width: width * 0.3,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color(0xffFF7500),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "START",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Images
          Container(
              width: width * 0.25,
              child: Image(
                image: AssetImage(
                  "assets/images/$image.jpg",
                ),
                fit: BoxFit.fill,
              )),
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xffFBFBFB),
          boxShadow: [
            BoxShadow(
                color: Color(0xffE1E1E1),
                blurRadius: 8.0,
                offset: Offset(0.0, 4.0))
          ],
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
