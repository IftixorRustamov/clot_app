import 'package:clot_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../app_responsive.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodyLarge: TextStyle(
        color: AppColors.black10,
        fontSize: AppResponsive.height(0.034),
        fontWeight: FontWeight.w700,
        fontFamily: 'circularStd'),
    bodyMedium: TextStyle(
        color: AppColors.black10,
        fontSize: AppResponsive.height(0.026),
        fontWeight: FontWeight.w700,
        fontFamily: 'circularStd'),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.purple,
    onPrimary: Colors.white70,
    secondary: Colors.black,
    onSecondary: Colors.black,
    error: Colors.black,
    onError: Colors.black,
    surface: Colors.black,
    onSurface: Colors.black,
  ),
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.darkGrey,
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyLarge: TextStyle(
        color: AppColors.white,
        fontSize: AppResponsive.height(0.034),
        fontWeight: FontWeight.w700,
        fontFamily: 'circularStd'),
    bodyMedium: TextStyle(
        color: AppColors.white,
        fontSize: AppResponsive.height(0.026),
        fontWeight: FontWeight.w700,
        fontFamily: 'circularStd'),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.purple,
    onPrimary: Colors.white70,
    secondary: Colors.black,
    onSecondary: Colors.black,
    error: Colors.black,
    onError: Colors.black,
    surface: Colors.black,
    onSurface: Colors.black,
  ),
);
