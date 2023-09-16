import 'package:flutter/material.dart';
import 'package:islami_project/home/quran/quran.dart';
import 'package:islami_project/home/radio/radio.dart';
import 'package:islami_project/home/sebha/sebha.dart';

import 'Hadeth/hadeth.dart';

class HomeScreen extends StatefulWidget {
  static const routeNam = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    RadioTab(),
    SebhaTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/images/background_light.png'),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/moshaf_blue.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran.png')),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                    label: 'Sebha'),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
}
