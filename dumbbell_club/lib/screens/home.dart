import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
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
                        'HOME SCREEN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30,
                            fontFamily: GoogleFonts.poppins().fontFamily,)
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
