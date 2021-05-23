
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class VerifyOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(

            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'images/dumbbells.png',
                height: 80,
              ),
              Text(
                'VERIFY OTP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                'Enter the 6-digit OTP sent to ...',
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    color: Constants.secondaryHeaderColor),
              ),
              SizedBox(
                height: 60,
              ),
                Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 300,
                    child: Text('CONFIRM',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            fontFamily: GoogleFonts.poppins().fontFamily)),
                    color: Constants.primarySwatch,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.verifyOtpRoute);
                },
                child: RichText(
                  text: TextSpan(
                    text: "Didn’t get an OTP?",
                    style: TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Send Again',
                        style: TextStyle(color: Constants.primarySwatch),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
