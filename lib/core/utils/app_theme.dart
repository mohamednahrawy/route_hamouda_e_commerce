import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColor,
    primaryColor: AppColors.primaryColor,
    inputDecorationTheme: InputDecorationTheme(
        hintStyle:
            GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w300)),
    textTheme: TextTheme(
        headlineLarge: GoogleFonts.poppins(
            letterSpacing: 0.5,
            wordSpacing: 0.2,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor),
        labelLarge: GoogleFonts.poppins(
            letterSpacing: 0.5,
            wordSpacing: 0.2,
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor),
        labelMedium: GoogleFonts.poppins(
            letterSpacing: 0.5,
            wordSpacing: 0.2,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500, /// Medium
            color: AppColors.whiteColor),
        labelSmall: GoogleFonts.poppins(
            letterSpacing: 0.5,
            wordSpacing: 0.2,
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
            color: AppColors.whiteColor)),
  );
}
