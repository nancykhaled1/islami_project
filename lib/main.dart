import 'package:flutter/material.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/home/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeNam,
      routes: {
        HomeScreen.routeNam: (context) => HomeScreen(),
      },
      theme: MyTheme.lightMode,
    );
  }
}
