import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Monday, June1"),
                    Image.asset('images/user.png')
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Text("weekly data"),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.black87),
                )
              ],
            ), 
    );
  }
}