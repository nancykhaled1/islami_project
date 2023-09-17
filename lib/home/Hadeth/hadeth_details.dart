import 'package:flutter/material.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/home/Hadeth/hadeth.dart';
import 'package:islami_project/home/Hadeth/item_hadeth_details.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class HadethDetials extends StatefulWidget {
  static const routeNam = 'hadeth_details';

  @override
  State<HadethDetials> createState() => _SuraDetialsState();
}

class _SuraDetialsState extends State<HadethDetials> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

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
            args.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: provider.appTheme == ThemeMode.light
            ? Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.05),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: MyTheme.whiteColor),
                child: ListView.builder(
                    itemCount: args.content.length,
                    itemBuilder: (context, index) {
                      return ItemHadethDetails(content: args.content[index]);
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
                    itemCount: args.content.length,
                    itemBuilder: (context, index) {
                      return ItemHadethDetails(content: args.content[index]);
                    }),
              ),
      )
    ]);
  }
}

