import 'package:dumbbell_club/utlis/routes.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AboutYou extends StatefulWidget {
  const AboutYou({Key? key}) : super(key: key);

  @override
  _AboutYouState createState() => _AboutYouState();
}

class _AboutYouState extends State<AboutYou> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: height * 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  )),
                  Container(
                    height: 1,
                    color: Colors.white,
                    width: width,
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpandablePanel(
                      header: Text(
                        "Birthday",
                        style: TextStyle(color: Colors.amber, fontSize: 20.0),
                      ),
                      collapsed: SizedBox(
                        height: 10.0,
                      ),
                      expanded: Container(
                          height: height * 0.15,
                          width: width,
                          color: Colors.amber,
                          child: Center(child: Text("Enter Birthdate"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpandablePanel(
                      header: Text(
                        "Height",
                        style: TextStyle(color: Colors.amber, fontSize: 20.0),
                      ),
                      collapsed: SizedBox(
                        height: 10.0,
                      ),
                      expanded: Container(
                          height: height * 0.15,
                          width: width,
                          color: Colors.amber,
                          child: Center(child: Text("Enter Height"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpandablePanel(
                      header: Text(
                        "Weight",
                        style: TextStyle(color: Colors.amber, fontSize: 20.0),
                      ),
                      collapsed: SizedBox(
                        height: 10.0,
                      ),
                      expanded: Container(
                          height: height * 0.15,
                          width: width,
                          color: Colors.amber,
                          child: Center(child: Text("Enter Weight"))),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, MyRoutes.duration);
                });
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                width: width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xffEA6003),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
