import 'package:ecommerce_app/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
    textTheme: AppTextTheme.lightTextTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: ColorConst.primaryColor),
  );
  static final darkTheme = ThemeData.dark().copyWith(
    textTheme: AppTextTheme.darkTextTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: ColorConst.primaryColor),
  );
}

class AppTextTheme {
  static final lightTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    bodyLarge: GoogleFonts.poppins().copyWith(color: Colors.black),
    bodySmall: GoogleFonts.poppins().copyWith(color: Colors.black,fontSize: 14,),
    bodyMedium: GoogleFonts.poppins().copyWith(color: Colors.black),
    labelLarge: GoogleFonts.poppins().copyWith(color: Colors.black,fontWeight: FontWeight.bold,),
    labelMedium: GoogleFonts.poppins().copyWith(color: Colors.black),
    headlineSmall: GoogleFonts.poppins().copyWith(color: Colors.black),
    headlineMedium: GoogleFonts.poppins().copyWith(color: Colors.black),
    headlineLarge: GoogleFonts.poppins().copyWith(color: Colors.black),
  );
  static final darkTextTheme = GoogleFonts.poppinsTextTheme().copyWith(
    bodyLarge: GoogleFonts.poppins().copyWith(color: Colors.white),
    bodySmall: GoogleFonts.poppins().copyWith(color: Colors.white,fontSize: 14,),
    bodyMedium: GoogleFonts.poppins().copyWith(color: Colors.white),
    labelLarge: GoogleFonts.poppins().copyWith(color: Colors.white,fontWeight: FontWeight.bold,),
    labelMedium: GoogleFonts.poppins().copyWith(color: Colors.white),
    headlineSmall: GoogleFonts.poppins().copyWith(color: Colors.white),
    headlineMedium: GoogleFonts.poppins().copyWith(color: Colors.white),
    headlineLarge: GoogleFonts.poppins().copyWith(color: Colors.white),
  );
}
