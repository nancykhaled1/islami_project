import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/home/quran/item_sura_details.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class SuraDetials extends StatefulWidget {
  static const routeNam = 'sura_details';

  @override
  State<SuraDetials> createState() => _SuraDetialsState();
}

class _SuraDetialsState extends State<SuraDetials> {
  List<String> verses = [];

  void LoadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetialsArgs;
    if (verses.isEmpty) {
      LoadFile(args.index);
    }

    return Stack(children: [
      provider.appTheme == ThemeMode.light
          ? Image(
              image: AssetImage('assets/images/background_light.png'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            )
          : Image(
              image: AssetImage('assets/images/dark_background.png'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : provider.appTheme == ThemeMode.light
                ? Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.height * 0.05),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyTheme.whiteColor),
                    child: ListView.builder(
                        itemCount: verses.length,
                        itemBuilder: (context, index) {
                          return ItemSuraDetails(
                            content: verses[index],
                            index: index,
                          );
                        }),
                  )
                : Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.height * 0.05),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyTheme.primaryDarkcolor),
                    child: ListView.builder(
                        itemCount: verses.length,
                        itemBuilder: (context, index) {
                          return ItemSuraDetails(
                            content: verses[index],
                            index: index,
                          );
                        }),
                  ),
      )
    ]);
  }
}

class SuraDetialsArgs {
  String name;
  int index;

  SuraDetialsArgs({required this.name, required this.index});
}
