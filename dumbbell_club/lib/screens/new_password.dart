import 'package:dumbbell_club/screens/login_page.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:dumbbell_club/widgets/onboarding_logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class NewPassowrd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      OnboardingHeader(text: false, subtext: false),
                      Text(
                        'NEW PASSWORD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InputFormField(
                  text: "Password",
                  hintText: 'Enter Password',
                  icon: Icons.password_rounded,
                  controller: null,
                  obscureText: true,
                  validator: null,
                ),
                InputFormField(
                  text: "Confirm Password",
                  hintText: 'Enter Password',
                  icon: Icons.password_rounded,
                  controller: null,
                  obscureText: true,
                  validator: null,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 300,
                      child: Text('SUBMIT',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              fontFamily: GoogleFonts.poppins().fontFamily)),
                      color: Constants.primarySwatch,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
