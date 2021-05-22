import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      brightness: Brightness.light,
      canvasColor: Colors.white,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: Colors.black,
      secondaryHeaderColor: Color(0xff7C7C7C),
      primarySwatch: Colors.amber);

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      canvasColor: Color(0xff202020),
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: Colors.white,
      secondaryHeaderColor: Color(0xff7C7C7C),
      primarySwatch: Colors.amber);
}
