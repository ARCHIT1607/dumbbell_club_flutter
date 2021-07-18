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
      child: Column(
        children: [
          Column(
            children: [
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
                        "images/profile.JPG",
                      ),
                      radius: 40.0,
                    )),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [Container(
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
                        bottomRight: Radius.circular(20.0))
                    ),                                
                    child: Icon(Icons.keyboard_arrow_right_rounded,
                    size: height * 0.04,),
                  )]
              ),
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
                    Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      width: width * 0.8,
                      child: Text("Chest"),
                      decoration: BoxDecoration(
                    color: Color(0xffFBFBFB),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffE1E1E1),
                          blurRadius: 8.0,
                          offset: Offset(0.0, 4.0))
                    ],
                    borderRadius: BorderRadius.circular(20.0)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      width: width * 0.8,
                      child: Text("Legs"),
                      decoration: BoxDecoration(
                    color: Color(0xffFBFBFB),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffE1E1E1),
                          blurRadius: 8.0,
                          offset: Offset(0.0, 4.0))
                    ],
                    borderRadius: BorderRadius.circular(20.0)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      width: width * 0.8,
                      child: Text("Arms"),
                      decoration: BoxDecoration(
                    color: Color(0xffFBFBFB),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xffE1E1E1),
                          blurRadius: 8.0,
                          offset: Offset(0.0, 4.0))
                    ],
                    borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            width: width * 0.9,
            height: height * 0.15,
            decoration: BoxDecoration(
                color: Color(0xffFF7500), borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: [
                Text(
                  "You burned 1270 calories this week",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: width * 0.3,
                  height: 40.0,
                  child: Center(child: Text("Share",
                  style: TextStyle(color: Color(0xffFF7500)),)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xff232F3E)),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(left: 30.0, top: 10.0, bottom: 20.0),
            alignment: Alignment.topLeft,
            child: Text(
              "Custom Workout",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            width: width * 0.9,
            height: height * 0.30,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(20.0)),
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
                        child: Center(child: Text("Create Plan")),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage('images/custom.jpg'),
                      radius: 60.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height * 0.1,
            width: width,
            color: Colors.black45,
            child: Center(child: Text("Archit MC")),
          )
        ],
      ),
    );
  }
}

class BottonWaveClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height / 1.5);
    var firstControlPoint = Offset(60, size.height / 1.7);
    var firstEndPoint = Offset(size.width / 2.5, size.height / 1.3);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    // var middleControlPoint = Offset(size.width /2, size.height / 1.1);
    // var middleEndPoint = Offset(size.width / 1.7, size.height / 1.2);
    // path.quadraticBezierTo(middleControlPoint.dx, middleControlPoint.dy,
    //     middleEndPoint.dx, middleEndPoint.dy);
    var secondControlPoint = Offset(size.width / 1.6, size.height / 1.2);
    var secondEndPoint = Offset(size.width, size.height / 1.6);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
