import 'package:dumbbell_club/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../constant.dart';

class ResetPassword extends StatefulWidget {
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final textFieldValueHolder = TextEditingController();

  Future<http.Response> postRequest() async {
    var url = 'https://dumbbell-club-api.herokuapp.com/api/sendMail';
    String body = '';
    setState(() {
      body = textFieldValueHolder.text;
    });
    print('body value' + body);
    var response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
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
                        'RESET PASSWORD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.80,
                  // width: 300,
                  child: TextField(
                    controller: textFieldValueHolder,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintText: 'Enter your email',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email_rounded),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      Response response = postRequest() as http.Response;
                      // if (response.statusCode == 200)
                        Navigator.pushNamed(context, MyRoutes.newPasswordRoute);
                      // else {
                      //   print('failed');
                      // }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 300,
                      child: Text('SEND OTP',
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

// class ResetPasswordFormField extends StatelessWidget {
//   final String text;
//   final String hintText;
//   final IconData icon;

//   final bool obscureText;

//   ResetPasswordFormField(
//       {Key? key,
//       required this.text,
//       required this.icon,
//       required this.obscureText,
//       required this.hintText})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 55,
//       width: MediaQuery.of(context).size.width * 0.80,
//       // width: 300,
//       child: TextField(
//         controller: textFieldValueHolder,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           labelStyle: TextStyle(fontWeight: FontWeight.bold),
//           hintText: hintText,
//           labelText: text,
//           prefixIcon: Icon(icon),
//           border: UnderlineInputBorder(
//             borderSide: BorderSide(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
