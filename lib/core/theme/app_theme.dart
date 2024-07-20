import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:itlala/core/utils/constant/app_colors.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        primaryColor: AppColor.blackColor,
        iconTheme: const IconThemeData(color: AppColor.titleBoardgingColor),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.blackColor,
          ),
          backgroundColor: AppColor.hiddenColor,
          iconTheme: IconThemeData(
            color: AppColor.blackColor,
          ),
        ),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          headlineLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 28.sp,
            height: 1.46,
            fontWeight: FontWeight.w500,
          ),
          headlineSmall: GoogleFonts.poppins(
            color: AppColor.titleBoardgingColor,
            fontSize: 14.sp,
            height: 1.48,
            fontWeight: FontWeight.w600,
          ),
          headlineMedium: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
          labelMedium: GoogleFonts.poppins(
            color: AppColor.titleBoardgingColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: GoogleFonts.poppins(
            color: AppColor.igthColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
          ),
          titleSmall: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
          bodyLarge: GoogleFonts.poppins(
            color: AppColor.blackColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: GoogleFonts.poppins(
            color: AppColor.titleBoardgingColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        primaryColor: AppColor.whiteColor,
        iconTheme: const IconThemeData(color: AppColor.whiteColor),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColor.whiteColor,
          ),
          backgroundColor: AppColor.blackColor,
          iconTheme: IconThemeData(
            color: AppColor.whiteColor,
          ),
        ),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
          headlineLarge: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 28.sp,
            height: 1.46,
            fontWeight: FontWeight.w500,
          ),
          headlineSmall: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 14.sp,
            height: 1.48,
            fontWeight: FontWeight.w600,
          ),
          headlineMedium: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
          labelMedium: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
          ),
          titleSmall: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
          bodyLarge: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: GoogleFonts.poppins(
            color: AppColor.whiteColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
