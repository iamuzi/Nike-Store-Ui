import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

abstract class AppColors {
  static Color get primaryColor => Color(0xff0101EE);
  static Color get secondaryColor => const Color(0xffB06DCC);
}

abstract class AppTextStyle {
  static TextStyle get bodyText =>
      TextStyle(fontSize: 15.0.sp, letterSpacing: 3);

  static TextStyle get titleText =>
      TextStyle(fontSize: 18.0.sp, letterSpacing: 2);

  static TextStyle get heading => TextStyle(
      fontSize: 25.0.sp, letterSpacing: 2.5, color: AppColors.primaryColor);

  static TextStyle get descText =>
      TextStyle(fontSize: 14, height: 1.6, color: Colors.black45);

  static TextStyle get btnText => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        letterSpacing: 1.5,
      );
}
