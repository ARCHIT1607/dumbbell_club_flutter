import 'package:dumbbell_club/screens/login_page.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 120.0),
              child: Image.asset(
                'images/dumbbells.png',
                height: 80,
              ),
            ),
            Text(
              "DUMBBELL CLUB",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "The Ultimate Fitness Cult",
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade400),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                children: [
                  InputFormField(
                      text: "Username",
                      icon: Icons.account_circle_rounded,
                      obscureText: false,
                      hintText: "Enter Username"),
                  InputFormField(
                      text: "Email",
                      icon: Icons.email_rounded,
                      obscureText: false,
                      hintText: "Enter Email"),
                  InputFormField(
                      text: "Password",
                      icon: Icons.password_rounded,
                      obscureText: true,
                      hintText: "Enter Password"),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    color: Color(0xffF1D333),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.loginRoute);
                      },
                      child: Container(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        alignment: Alignment.center,
                        height: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign IN',
                            style: TextStyle(
                              color: Color(0xffF1D333),
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
