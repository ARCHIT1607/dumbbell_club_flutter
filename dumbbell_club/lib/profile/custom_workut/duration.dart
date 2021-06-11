import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';

class DurationPage extends StatefulWidget {
  const DurationPage({
    Key? key,
  }) : super(key: key);


  @override
  State<DurationPage> createState() => _DurationPageState();
}

class _DurationPageState extends State<DurationPage> {
  List<bool> isSelected = [];
  @override
  void initState() {
    isSelected = [true, false, false];
    super.initState();
  }

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
          body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 20.0, bottom: 5.0),
            child: Text(
              "Duration & Location",
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
                "Amount of time & location dedicated for your workout",
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
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubHeader(text: "Average Time"),
                      Text(
                        "Duration per day you will be willing to workout",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SelectButton(text: "0-20 mins"),
                          SelectButton(text: "20-40 mins"),
                          SelectButton(text: "40+ mins")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubHeader(text: "Days/week"),
                      Text(
                        "The number of days you can workout in a week",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SelectButton(text: "3 days"),
                          SelectButton(text: "4-5 days"),
                          SelectButton(text: "5+ days")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubHeader(text: "Location"),
                      Text(
                        "The place where you will workout",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 20.0),
                      // ToggleButtons(
                      //   isSelected: isSelected,
                      //   onPressed: (int index) {
                      //     setState(() {
                      //       for (int i = 0; i < isSelected.length; i++) {
                      //         isSelected[i] = i == index;
                      //       }
                      //     });
                      //   },
                      //   children: [Text("Home"), Text("Gym"), Text("Both")],
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SelectButton(text: "Home"),
                          SelectButton(text: "Gym"),
                          SelectButton(text: "Both")
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(height: 20.0),
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, MyRoutes.goals);
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