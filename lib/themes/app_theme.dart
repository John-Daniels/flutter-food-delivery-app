import 'package:flutter/material.dart';
import 'package:food_deliver_app/themes/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        inputDecorationTheme: inputDecorationTheme,
        fontFamily: 'SfProRounded',
        scaffoldBackgroundColor: backgroundColor,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      );

  static get inputDecorationTheme => InputDecorationTheme(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        hintStyle: TextStyle(color: Colors.grey.shade500),
      );
}
