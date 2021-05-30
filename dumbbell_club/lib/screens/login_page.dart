import 'package:dumbbell_club/utlis/routes.dart';
import 'package:dumbbell_club/widgets/onboarding_logo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                OnboardingHeader(text: true, subtext: true),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
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
                      Padding(
                        padding: const EdgeInsets.only(right: 34.0, top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(color: Color(0xffF1D333)),
                              ),
                              onTap: () => {
                                Navigator.pushNamed(
                                    context, MyRoutes.resetPasswordRoute),
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: Material(
                          color: Color(0xffF1D333),
                          child: GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        'You have entered valid email ${emailController.text} and password')));
                                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                              }
                              
                            },
                            child: Container(
                              child: Text(
                                "LOGIN",
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
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 20.0),
                              child: Divider(
                                color: Constants.secondaryHeaderColor,
                                height: 36,
                              ),
                            ),
                          ),
                          Text("OR"),
                          Expanded(
                            child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 15.0),
                              child: Divider(
                                color: Constants.secondaryHeaderColor,
                                height: 36,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.registerRoute);
                        },
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have an account Yet?",
                            style: TextStyle(color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Sign Up',
                                style:
                                    TextStyle(color: Constants.primarySwatch),
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
        ),
      ),
    );
  }
}

class InputFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  final bool obscureText;
  final validator;
  final autofill;

  const InputFormField(
      {Key? key,
      required this.text,
      required this.icon,
      this.controller,
      required this.obscureText,
      required this.hintText,
      required this.validator,
      this.autofill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.80,
      // width: 300,
      child: TextFormField(
        controller: controller,
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
        validator: validator,
        keyboardType: TextInputType.emailAddress,
        autofillHints: autofill,
      ),
    );
  }
}
