import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  int? selectedRadio1;
  int? selectedRadio2;
  int? selectedRadio3;
  int? selectedRadio4;
  var values = [];
  int star = 0;

  @override
  void initState() {
    super.initState();
    selectedRadio1 = 0;
    selectedRadio2 = 0;
    selectedRadio3 = 0;
    selectedRadio4 = 0;
  }

  setSelectedRadio1(String val) {
    setState(() {
      selectedRadio1 = int.parse(val);
      if (val == '1' && values.contains('2')) {
        print(values.contains('2'));
        values.remove('2');
      } else if (val == '2' && values.contains('1')) {
        print(values.contains('1'));
        values.remove('1');
      }
      values.add(val);
    });
  }

  setSelectedRadio2(String val) {
    setState(() {
      selectedRadio2 = int.parse(val);
      if (val == '3' && values.contains('4')) {
        print(values.contains('4'));
        values.remove('4');
      } else if (val == '4' && values.contains('3')) {
        print(values.contains('3'));
        values.remove('3');
      }
      values.add(val);
    });
  }

  setSelectedRadio3(String val) {
    setState(() {
      selectedRadio3 = int.parse(val);
      if (val == '5' && values.contains('6')) {
        print(values.contains('6'));
        values.remove('6');
      } else if (val == '6' && values.contains('5')) {
        print(values.contains('5'));
        values.remove('5');
      }
      values.add(val);
    });
  }

  setSelectedRadio4(String val) {
    setState(() {
      selectedRadio4 = int.parse(val);
      if (val == '7' && values.contains('8')) {
        print(values.contains('6'));
        values.remove('8');
      } else if (val == '8' && values.contains('7')) {
        print(values.contains('7'));
        values.remove('7');
      }
      values.add(val);
    });
  }

  RangeValues currentRangeValuesQuestion1 = const RangeValues(0, 5);
  RangeValues currentRangeValuesQuestion2 = const RangeValues(0, 5);
  RangeValues currentRangeValuesQuestion3 = const RangeValues(0, 5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFC4C4C4)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 70.0),
          child: Text(
            'Feedback',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  ' • Is the website user friendly?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: RangeSlider(
                      values: currentRangeValuesQuestion1,
                      min: 0,
                      max: 5,
                      divisions: 5,
                      labels: RangeLabels(
                        currentRangeValuesQuestion1.start.round().toString(),
                        currentRangeValuesQuestion1.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          currentRangeValuesQuestion1 = values;
                        });
                      },
                    ),
                  ),
                  Text(currentRangeValuesQuestion1.end.round().toString()),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  ' • Did you like our customised workouts?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: RangeSlider(
                      values: currentRangeValuesQuestion2,
                      min: 0,
                      max: 5,
                      divisions: 5,
                      labels: RangeLabels(
                        currentRangeValuesQuestion2.start.round().toString(),
                        currentRangeValuesQuestion2.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          currentRangeValuesQuestion2 = values;
                        });
                      },
                    ),
                  ),
                  Text(currentRangeValuesQuestion2.end.round().toString()),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  ' • Did you like the nutition plan we customised for you?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    child: RangeSlider(
                      values: currentRangeValuesQuestion3,
                      min: 0,
                      max: 5,
                      divisions: 5,
                      labels: RangeLabels(
                        currentRangeValuesQuestion3.start.round().toString(),
                        currentRangeValuesQuestion3.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          currentRangeValuesQuestion3 = values;
                        });
                      },
                    ),
                  ),
                  Text(currentRangeValuesQuestion3.end.round().toString()),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  ' • Please mention any difficulties you \'ve come across while using app ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey, focusColor: Colors.grey),
                  maxLines: 2,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  ' • Any additional changes that you’d like to incorporate?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey, focusColor: Colors.grey),
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Please rate our app :)',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        print("You pressed 1");
                        star = 1;
                      },
                      icon: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      )),
                  IconButton(
                      onPressed: () {
                        print("You pressed 2");
                        star = 2;
                      },
                      icon: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      )),
                  IconButton(
                      onPressed: () {
                        print("You pressed 3");
                        star = 3;
                      },
                      icon: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      )),
                  IconButton(
                      onPressed: () {
                        print("You pressed 4");
                        star = 4;
                      },
                      icon: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      )),
                  IconButton(
                      onPressed: () {
                        print("You pressed 5");
                        star = 5;
                      },
                      icon: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      )),
                ],
              ),
              Container(
                alignment: Alignment.center ,
                child: ElevatedButton(
                  onPressed: () {
                    print("Added values $values and star rating $star");
                  },
                  child: Text("Finish"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEA6003),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
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
