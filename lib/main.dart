import 'package:flutter/material.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/home/Hadeth/hadeth_details.dart';
import 'package:islami_project/home/home-screen.dart';
import 'package:islami_project/home/quran/sura_details.dart';
import 'package:islami_project/home/sebha/sebha.dart';

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
        SuraDetials.routeNam: (context) => SuraDetials(),
        SebhaTab.routeNam: (context) => SebhaTab(),
        HadethDetials.routeNam: (context) => HadethDetials()
      },
      theme: MyTheme.lightMode,
    );
  }
}
