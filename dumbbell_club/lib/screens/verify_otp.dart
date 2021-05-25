import 'package:dumbbell_club/utlis/routes.dart';
import 'package:dumbbell_club/widgets/onboarding_logo.dart';
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
              height: 20.0,
            ),
            OnboardingHeader(text: false, subtext: false),
            Text(
              'VERIFY OTP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Enter the 6-digit OTP sent to ...',
              maxLines: 2,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis,
                  color: Constants.secondaryHeaderColor),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OTPDigitTextFieldBox(),
                OTPDigitTextFieldBox(),
                OTPDigitTextFieldBox(),
                OTPDigitTextFieldBox(),
                OTPDigitTextFieldBox(),
                OTPDigitTextFieldBox(),
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
                  width: 310,
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
      )),
    );
  }
}

class OTPDigitTextFieldBox extends StatelessWidget {
  final TextEditingController? controllerName;
  const OTPDigitTextFieldBox({Key? key, this.controllerName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 5.0,
      ),
      Container(
        width: 47.0,
        height: 55.0,
        alignment: Alignment.center,
        child: TextField(
          controller: controllerName,
          maxLength: 1,
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.center,
          decoration: InputDecoration(counterText: ''),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              width: 2.0,
              color: Colors.black,
            ),
            top: BorderSide(
              width: 2.0,
              color: Colors.black,
            ),
            left: BorderSide(
              width: 2.0,
              color: Colors.black,
            ),
            right: BorderSide(
              width: 2.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ]);
  }
}
