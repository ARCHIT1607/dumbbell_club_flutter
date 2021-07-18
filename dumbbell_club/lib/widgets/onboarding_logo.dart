import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingHeader extends StatelessWidget {
  final bool text;
  final bool subtext;

  const OnboardingHeader({
    Key? key,
    required this.text,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(40.0, 120.0, 40.0, 0.0),
          child: Image.asset(
            'assets/images/logo.png',
            height: 80,
          ),
        ),
        if (text)
          Text(
            "DUMBBELL CLUB",
            style: TextStyle(
                color: (Theme.of(context) == Brightness.dark)
                    ? Colors.white
                    : Colors.black,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
          ),
        SizedBox(
          height: 5.0,
        ),
        if (subtext)
          Text(
            "The Ultimate Fitness Cult",
            style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade400),
          ),
      ],
    );
  }
}
