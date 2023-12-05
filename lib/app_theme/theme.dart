import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData light = ThemeData(
      primaryColor: const Color.fromARGB(255, 255, 119, 0),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.luckiestGuy(
            fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
        bodyMedium: GoogleFonts.josefinSans(),
      ),
      useMaterial3: true);
}
