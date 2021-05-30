import 'package:dumbbell_club/constant.dart';
import 'package:dumbbell_club/screens/login_page.dart';
import 'package:dumbbell_club/utlis/routes.dart';
import 'package:dumbbell_club/widgets/onboarding_logo.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _checkbox = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            OnboardingHeader(text: true, subtext: true),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: 'Enter your username',
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.verified_user_rounded),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      validator: MultiValidator(
                        [
                          RequiredValidator(errorText: "* Required"),
                        ],
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      controller: emailController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email_rounded),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      validator: MultiValidator(
                        [
                          RequiredValidator(errorText: "* Required"),
                          EmailValidator(errorText: "Enter valid email id"),
                        ],
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.password_rounded),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      validator: MultiValidator(
                        [
                          RequiredValidator(errorText: "* Required"),
                          MinLengthValidator(6,
                              errorText:
                                  "Password should be atleast 6 characters"),
                          MaxLengthValidator(15,
                              errorText:
                                  "Password should not be greater than 15 characters"),
                          PatternValidator(
                            r'(?=.*?[#?!@$%^&*-])',
                            errorText:
                                'passwords must have at least one special character',
                          )
                        ],
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: _checkbox,
                          onChanged: (value) {
                            setState(() {
                              _checkbox = !_checkbox;
                            });
                          },
                        ),
                        Text('I  accept the Terms & Conditions'),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Color(0xffF1D333),
                      child: GestureDetector(
                        onTap: () {
                          if (_checkbox == false) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text('Please accept terms and condition')));
                          }
                          if (_formKey.currentState!.validate() &&
                              _checkbox == true) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'You have entered ${emailController.text}')));
                            Navigator.pushNamed(
                                context, MyRoutes.verifyOtpRoute);
                          }
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
