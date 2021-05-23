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
              child: Image.network(
                'https://image.flaticon.com/icons/png/512/2446/2446353.png',
                fit: BoxFit.contain,
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
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color(0xffC4C4C4),
                      ),
                      hintText: 'Enter Username',
                      labelText: 'Username',
                      hintStyle: TextStyle(
                        color: Color(0xffC4C4C4),
                      ),
                      labelStyle: TextStyle(color: Color(0xffC4C4C4)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    validator: (value) {
                      return (value != null) ? 'Enter Username' : null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_rounded,
                        color: Color(0xffC4C4C4),
                      ),
                      hintText: 'johnsnow@gmail.com',
                      labelText: 'Email',
                      hintStyle: TextStyle(
                        color: Color(0xffC4C4C4),
                      ),
                      labelStyle: TextStyle(color: Color(0xffC4C4C4)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    validator: (value) {
                      return (value != null) ? 'Enter Email' : null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Color(0xffC4C4C4),
                      ),
                      hintText: 'Enter Password',
                      labelText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xffC4C4C4),
                      ),
                      labelStyle: TextStyle(color: Color(0xffC4C4C4)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    validator: (value) {
                      return (value != null) ? 'Enter Username' : null;
                    },
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    color: Color(0xffF1D333),
                    child: Container(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                      alignment: Alignment.center,
                      height: 50.0,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  RichText(
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
