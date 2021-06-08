import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CustomWorkoutHome extends StatefulWidget {
  const CustomWorkoutHome({Key? key}) : super(key: key);

  @override
  _CustomWorkoutHomeState createState() => _CustomWorkoutHomeState();
}

class _CustomWorkoutHomeState extends State<CustomWorkoutHome> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderWidget(),
              Image.asset("images/custom_workout.png"),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  "You have not created a custom workout",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      enableDrag: true,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Column(
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
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 20.0),
                                ),
                                collapsed: SizedBox(
                                  height: 10.0,
                                ),
                                expanded: Container(
                                    height: height * 0.15,
                                    width: width,
                                    color: Colors.amber,
                                    child:
                                        Center(child: Text("Enter Birthdate"))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExpandablePanel(
                                header: Text(
                                  "Height",
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 20.0),
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
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 20.0),
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
                            Container(
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
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        );
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
                      "Create Workout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.all(20.0),
        height: height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "John Snow",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "@username",
              style: TextStyle(
                  color: Colors.white24,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400),
            )
          ],
        ));
  }
}
