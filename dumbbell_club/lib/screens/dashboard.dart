import 'package:dumbbell_club/widgets/bar_chart_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Stack(children: [
            ClipPath(
              clipper: BottonWaveClipper(),
              child: Container(
                child: Container(
                  height: height * 0.5,
                  width: width,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: ListTile(                    
                      title: Text(
                        "Monday, June 1",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                      subtitle: Text(
                        "Hello Jon ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 36.0,
                        ),
                      ),
                      trailing: CircleAvatar(
                        backgroundImage: ExactAssetImage(
                          'images/profile.JPG',
                        ),
                        radius: 40.0,
                      )),
                ),
                Container(
                  
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text("Weekly Stats",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),),
                      BarChartWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ]),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            alignment: Alignment.topLeft,
            child: Text(
              "Recent Workouts",
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: width * 0.3,
                  child: Text("Monday"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.amber, Colors.orange.shade900]
                       ),
                ),),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: width * 0.3,
                  child: Text("Monday"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.amber, Colors.orange.shade900]
                       ),
                ),),
                
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: width * 0.3,
                  child: Text("Monday"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.amber),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: width * 0.3,
                  child: Text("Monday"),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.amber),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),            
            width: width * 0.9,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              children: [
                Text("You burned 1270 calories this week",
                style: TextStyle(
                  fontSize: 15.0,                  
                ),),
                SizedBox(height: 10.0,),
                Container(
                  width: width * 0.3,
                  height: 40.0,
                  child: Center(child: Text("Share")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber
                  ),
                )
              ],
            ),),
          
          
        ],
      ),
    );
  }
}


class BottonWaveClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height / 1.2);
  var firstControlPoint = Offset(55, size.height / 1.7);
  var firstEndPoint = Offset(size.width / 1.7, size.height / 1.3);
  path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
      firstEndPoint.dx, firstEndPoint.dy);
  var secondControlPoint = Offset(size.width - (35), size.height - 95);
  var secondEndPoint = Offset(size.width, size.height / 2);
  path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
      secondEndPoint.dx, secondEndPoint.dy);
  path.lineTo(size.width, size.height - 40);
  path.lineTo(size.width, 0.0);
  path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
