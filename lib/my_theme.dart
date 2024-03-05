import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color grayColor = const Color(0xFF667085);
  static Color greenColor = const Color(0xFF027A48);
  static Color moovColor = Color(0xFF371B34);
  static Color blackColor = Color(0xFF371B34);

  static ThemeData lightMode = ThemeData(
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.inter(
            fontSize: 20, fontWeight: FontWeight.w600, color: moovColor),
        bodyMedium: GoogleFonts.inter(
            fontSize: 20, fontWeight: FontWeight.w400, color: moovColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData());
}
