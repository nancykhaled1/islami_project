import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color primaryDarkcolor = Color(0xFF141A2E);
  static Color yellowColor = Color(0xFFFACC1D);

  static ThemeData lightMode = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: blackColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700, color: blackColor),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w500, color: blackColor),
      titleSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: blackColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    )),
  );
  static ThemeData datkMode = ThemeData(
    primaryColor: primaryDarkcolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: whiteColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: whiteColor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700, color: whiteColor),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w500, color: whiteColor),
      titleSmall: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: yellowColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: MyTheme.yellowColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    )),
  );
}
