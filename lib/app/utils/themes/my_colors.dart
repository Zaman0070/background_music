import 'package:flutter/material.dart';

class MyColors {
  //common colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color blue = Color(0xFF0066FF);
  static const Color red = Color(0xFFFF0000);
  static const Color green = Color(0xFF10CD00);
  static const Color yellow = Color(0xFFFFCE4D);
  static const Color bluishTextColor = Color(0xFF838999);
  static const Color darkGreyTagColor = Color(0xFF1E1E1E);
  static const Color redTagColor = Color(0xFFFF000F);
  static const Color textFieldFillColor = Color(0xFF1D1D1D);
  static const Color pointColor = Color(0xFF10CD00);

  //dark theme Colors
  static const Color darkThemeColor = Color(0xFF000000);
  static const Color darkTitleColor = Color(0xFFFFFFFF);
  static const Color darkTextColor = Color(0xFFFFFFFF);
  static const Color darkLightTextColor = Color(0xFF666666);
  static const Color darkContainerColor = Color(0xFF2C2C2C);
  static const Color darkButtonTextColor = Color(0xFF000000);

  //Bright theme Color
  static const Color lightThemeColor = Color(0xFFFFFFFF);
  static const Color lightTitleColor = Color(0xFF000000);
  static const Color lightTextColor = Color(0xFF000000);
  static const Color lightLightTextColor = Color(0xFF666666);
  static const Color lightContainerColor = Color(0xFFD9D9D9);
  static const Color lightButtonTextColor = Color(0xFFFFFFFF);

  //how to use colors
  // colorscheme.primary : for text and title
  // colorscheme.secondary : for light text
  // colorscheme.onPrimary : for text on buttons
  // colorscheme.primaryContainer : for containers like text-fields, barbers card ,checkout etc ...
  // colorscheme.secondaryContainer : for button colors
}
