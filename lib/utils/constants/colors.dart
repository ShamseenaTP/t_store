import 'package:flutter/material.dart';

class TColors {
  TColors._();

// app basic colors
  static Color primary = const Color(0xFF4B68FF);
  static Color secondory = const Color(0xFFFFE24B);
  static Color accent = const Color(0xFFb0c7ff);

 
  //text colors
  static Color textPrimary = const Color(0xFF333333);
  static Color textSecondory = const Color(0xFF6C757D);
  static Color textWhite = Colors.white;

  // background colors
  static Color light = const Color(0xFFF6F6F6);
  static Color dark = const Color(0xFF272727);
  static Color primaryBackground = const Color(0xFFF3F5FF);

  // background container colors
  static Color lightContainer = const Color(0xFFF6F6F6);
  static Color darkContainer = TColors.textWhite.withOpacity(0.1);

  // button colors
  static Color buttonPrimary = const Color(0xFF4b68ff);
  static Color buttonSecondory = const Color(0xFF6C757D);
  static Color buttonDisabled = const Color(0xFFC4C4C4);

  // border colors
  static Color borderPrimary = const Color(0xFFD9D9D9);
  static Color borderSecondory = const Color(0xFFE6E6E6);

  // error and validation color
  static Color error = const Color(0xFFD32F2F);
  static Color success = const Color(0xFF388E3C);
  static Color warning = const Color(0xFFF57C00);
  static Color info = const Color(0xFF1976D2);

  // neutral shades
  static Color black = const Color(0xFF232323);
  static Color darkerGrey = const Color(0xFF4F4F4F);
  static Color darkGrey = const Color(0xFF939393);
  static Color grey = const Color(0xFFE0E0E0);
  static Color softGrey = const Color(0xFFF4F4F4);
  static Color lightGrey = const Color(0xFFF9F9F9);
  static Color white = const Color(0xFFFFFFFF);
}
