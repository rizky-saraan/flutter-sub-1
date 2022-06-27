import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      errorColor: redColor,
      fontFamily: "Roboto",
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: primaryColor,
        ),
        headline3: TextStyle(
          fontSize: 22.0,
          color: whiteColor,
        ),
        headline4: TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
        headline6: TextStyle(
          fontSize: 12,
          color: blackColor,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          color: Colors.brown,
        ),
        bodyText2: TextStyle(
          color: blackColor,
        ),
        button: TextStyle(
          color: blackColor,
        ),
        caption: TextStyle(
          color: blackColor,
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        buttonColor: accentColor,
      ),
    );
  }
}
