import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColorLight: Colors.black,
    primaryColor: Colors.black,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    canvasColor: Color(0xFF202020),
    fontFamily: GoogleFonts.poppins().fontFamily,
    primaryColor: Colors.white,
  );
}
