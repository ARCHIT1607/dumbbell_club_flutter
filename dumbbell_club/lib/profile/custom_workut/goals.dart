import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({
    Key? key,
  }) : super(key: key);


  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
          body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 20.0, top: 20.0, bottom: 5.0),
            child: Text(
              "Goals",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900),
            ),
          )),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Text(
                "What do you plan to achieve by working out",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 12),
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.white,
            width: width,
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoalButtons(text: "Lose Weight"),
                  SubHeaderDescription(
                      text: "Reduce extra fats and get in shape"),
                  SizedBox(
                    height: 20.0,
                  ),
                  GoalButtons(text: "Build Muscle"),
                  SubHeaderDescription(
                      text: "Reduce extra fats and get in shape"),
                  SizedBox(
                    height: 20.0,
                  ),
                  GoalButtons(text: "Shred"),
                  SubHeaderDescription(
                      text: "Reduce extra fats and get in shape"),
                  SizedBox(
                    height: 20.0,
                  ),
                  GoalButtons(text: "Maintain"),
                  SubHeaderDescription(
                      text: "Reduce extra fats and get in shape"),
                  SizedBox(
                    height: 20.0,
                  ),
                  GoalButtons(text: "Flexibility"),
                  SubHeaderDescription(
                      text: "Reduce extra fats and get in shape"),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
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

class SubHeader extends StatelessWidget {
  const SubHeader({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  final text;
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
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
