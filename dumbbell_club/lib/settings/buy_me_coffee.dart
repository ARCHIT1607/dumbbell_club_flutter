import 'package:flutter/material.dart';

class Coffee extends StatefulWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  _CoffeeState createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFFC4C4C4)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'Buy Me Coffee',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(28.0),
              width: 350,
              child: Text(
                "Our application is a free to use platform but we’d love if you could contribute to us. \n\nThe donations will go towards server and database costs.",
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                primary: Color(0xFFF1D333),
              ),
              onPressed: () {},
              child: Text(
                '☕ Buy me a coffee',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
