import 'package:flutter/material.dart';

class Constants {
  static String appName = "Flutter Travel";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blueGrey[900];
  static Color darkAccent = Colors.white;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: Colors.red,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      color: Colors.red,
      elevation: 0,
      toolbarTextStyle: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).headline6,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: lightAccent),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.red),
  );

  static ThemeData darkTheme = ThemeData(
    // brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      color: Colors.red,
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: darkAccent, brightness: Brightness.dark),
  );
}
