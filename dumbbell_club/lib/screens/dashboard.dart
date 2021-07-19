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
                  )),
              subtitle: Text("Hello Jon ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 36.0,
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
                        radius: height * 0.15,
                        lineWidth: height * 0.020,
                        backgroundColor: Colors.red.shade100,
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
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
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
          Container(
            width: width * 0.12,
            height: height * 0.05,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xffFF7500),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            child: Icon(
              Icons.keyboard_arrow_right_rounded,
              size: height * 0.04,
            ),
          )
        ]),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          padding: EdgeInsets.only(left: 30.0, top: 20.0),
          alignment: Alignment.topLeft,
          child: Text(
            "New Favourite",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0, top: 10, bottom: 20.0),
          height: height * 0.3,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FavouriteWorkout(
                  width: width,
                  height: height,
                  title: "Weight Loss Training",
                  subtitle: "Full body workout",
                  duration: 40,
                  calories: 350),
              FavouriteWorkout(
                  width: width,
                  height: height,
                  title: "Mobility Burst",
                  subtitle: "Full body workout",
                  duration: 30,
                  calories: 600),
              FavouriteWorkout(
                  width: width,
                  height: height,
                  title: "Muscle Build Training",
                  subtitle: "Full body workout",
                  duration: 50,
                  calories: 300),
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
                    child: Text(
                  "Share",
                  style: TextStyle(color: Color(0xffFF7500)),
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
                      "Get your custom plan\n after answering this\n simple questionaire",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
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
                        "Create Plan",
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
                        ExactAssetImage('assets/images/custom.jpg'),
                    radius: 60.0,
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
                width: width,
                title: "Core Challenge",
                image_name: "core.jpg"),
              ChallengeWidget(
                width: width,
                title: "Mobility Challenge",
                image_name: "warmup.jpg"),
              ChallengeWidget(
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
    required this.width,
    required this.title,
    required this.image_name,
  }) : super(key: key);

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
      child: Text(
        "$title",
        style: TextStyle(
          fontSize: width * 0.05, 
          fontWeight: FontWeight.w600,
          ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/$image_name"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color(0xffFF7500).withOpacity(0.6), BlendMode.dstATop)),
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

class FavouriteWorkout extends StatelessWidget {
  const FavouriteWorkout({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.subtitle,
    required this.duration,
    required this.calories,
  }) : super(key: key);

  final double width;
  final double height;
  final String title;
  final String subtitle;
  final int duration;
  final int calories;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      width: width * 0.8,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
              child: Image(
            image: AssetImage("assets/images/treadmill.jpg"),
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: TextStyle(
                        fontSize: width * 0.07, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "$subtitle",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[600]),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.06,
                    width: width * 0.25,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xffFF7500),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          size: 18.0,
                        ),
                        Text(
                          "$duration mins",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.06,
                    width: width * 0.25,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xffE1E1E1),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text("$calories kcal"),
                  ),
                ],
              )
            ],
          ),
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
