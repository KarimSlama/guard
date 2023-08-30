import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';

ThemeData themeDark = ThemeData(
  scaffoldBackgroundColor: Colors.black26,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.black26,
    surface: AppColors.darkGreyBlue,
    background: Colors.black26,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black26,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.cairo(
      color: AppColors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: const IconThemeData(color: AppColors.white, size: 26),
    toolbarTextStyle: GoogleFonts.cairo(
      color: AppColors.white,
      fontSize: 14,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.white,
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.cairo(
      color: AppColors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    unselectedLabelColor: AppColors.grey,
    labelColor: AppColors.white,
  ),
);
