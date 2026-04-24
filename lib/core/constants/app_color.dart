import 'package:flutter/material.dart';

class AppColor {
  static const Color primaryColor = Colors.deepPurple;
  static const Color secondaryColor = Colors.pinkAccent;

  //light backgroudcolor
  static Color lightbackgroudColor = Colors.white;

  //darkbackgroupcolor
  static Color darkbackgroudColor = Colors.black;

  static ThemeData lightMode() {
    return ThemeData(
      scaffoldBackgroundColor: lightbackgroudColor,
      primaryColor: primaryColor,
      appBarTheme: AppBarTheme(backgroundColor: lightbackgroudColor),
      textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
      ),
    );
  }

  static ThemeData darkMode() {
    return ThemeData(
      scaffoldBackgroundColor: darkbackgroudColor,
      primaryColor: secondaryColor,
      appBarTheme: AppBarTheme(backgroundColor: darkbackgroudColor),
      textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      colorScheme: ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
      ),
    );
  }
}
