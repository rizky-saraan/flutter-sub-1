import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      errorColor: redColor,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 22.0,
          color: Colors.green,
        ),
        headline6: TextStyle(fontSize: 15.0, color: Colors.orange),
        headline4: TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
        headline3: TextStyle(
          fontSize: 22.0,
          color: Colors.grey,
        ),
        caption: TextStyle(
          color: Color(0xFFCCC5AF),
        ),
        bodyText2: TextStyle(color: Color(0xFF807A6B)),
        bodyText1: TextStyle(
          color: Colors.brown,
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
