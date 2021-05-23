import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
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
                      'DUMBBELL CLUB',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'The Ultimate Fitness Cult',
                      style: TextStyle(
                          color: Constants.secondaryHeaderColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InputFormField(
                text: "Email",
                hintText: 'Enter your email',
                icon: Icons.email_rounded,
                controllerName: null,
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              InputFormField(
                hintText: 'Enter your password',
                text: "Password",
                icon: Icons.password,
                controllerName: null,
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1,
                        vertical: 10),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.resetPasswordRoute);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 300,
                    child: Text('LOGIN',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            fontFamily: GoogleFonts.poppins().fontFamily)),
                    color: Constants.primarySwatch,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Constants.secondaryHeaderColor,
                        height: 36,
                      ),
                    ),
                  ),
                  Text("OR"),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                        child: Divider(
                          color: Constants.secondaryHeaderColor,
                          height: 36,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/google.png'),
                  SizedBox(
                    width: 25,
                  ),
                  Image.asset('images/facebook.png'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  text: "Don't have an account Yet?",
                  style: TextStyle(color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign UP',
                      style: TextStyle(color: Constants.primarySwatch),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final IconData icon;
  final TextEditingController? controllerName;
  final bool obscureText;

  const InputFormField(
      {Key? key,
      required this.text,
      required this.icon,
      this.controllerName,
      required this.obscureText,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.80,
      // width: 300,
      child: TextField(
        controller: controllerName,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          hintText: hintText,
          labelText: text,
          prefixIcon: Icon(icon),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
