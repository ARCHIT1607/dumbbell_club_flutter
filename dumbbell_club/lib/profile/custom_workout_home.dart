import 'package:dumbbell_club/utlis/routes.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

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
                  setState(() {
                    Navigator.pushNamed(context, MyRoutes.aboutYou);
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
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

class SubHeaderDescription extends StatelessWidget {
  const SubHeaderDescription({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  final text;
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w300),
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

class SelectButton extends StatefulWidget {
  const SelectButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final text;

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool buttonColor = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          buttonColor = true;
        });
      },
      child: Container(
        alignment: Alignment.centerLeft,
        width: width * 0.25,
        height: 40,
        decoration: BoxDecoration(
            color: buttonColor ? Colors.orange : Colors.black87,
            borderRadius: BorderRadius.circular(20.0)),
        child: Center(child: Text(this.widget.text)),
      ),
    );
  }
}

class GoalButtons extends StatefulWidget {
  const GoalButtons({
    Key? key,
    required this.text,
  }) : super(key: key);

  final text;
  @override
  _GoalButtonsState createState() => _GoalButtonsState();
}

class _GoalButtonsState extends State<GoalButtons> {
  bool buttonColor = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          buttonColor = true;
        });
      },
      child: Container(
        alignment: Alignment.centerLeft,
        width: width * 0.35,
        height: 40,
        decoration: BoxDecoration(
            color: buttonColor ? Colors.orange : Colors.black87,
            borderRadius: BorderRadius.circular(20.0)),
        child: Center(child: Text(this.widget.text)),
      ),
    );
  }
}
