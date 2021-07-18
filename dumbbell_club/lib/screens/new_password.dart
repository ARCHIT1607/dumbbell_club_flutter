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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Constants.primarySwatch,
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: 250,
                      child: Text('CONFIRM',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              fontFamily: GoogleFonts.poppins().fontFamily)),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
