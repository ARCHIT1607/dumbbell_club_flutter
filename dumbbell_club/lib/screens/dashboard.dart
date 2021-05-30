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
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
            child: Container(
              padding:
                  EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: height * 0.3,
              color: Colors.black87,
              child: Column(
                children: [
                  ListTile(
                      title: Text(
                        "Monday, June 1",
                        style: TextStyle(
                            color: Colors.white54, fontWeight: FontWeight.w300),
                      ),
                      subtitle: Text(
                        "Hello Jon Snow",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                        ),
                      ),
                      trailing: CircleAvatar(
                        backgroundImage: ExactAssetImage(
                          'images/profile.JPG',
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            alignment: Alignment.topLeft,
            child: Text("Recent Workouts",
            style: TextStyle(  
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),),
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
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber
                ),),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: width * 0.3,
                  child: Text("Monday"),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber
                ),),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: width * 0.3,
                  child: Text("Monday"),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber
                ),),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  width: width * 0.3,
                  child: Text("Monday"),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
