import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Color(0xFFFFFFFF);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: whiteColor,
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: blackColor)));
}
