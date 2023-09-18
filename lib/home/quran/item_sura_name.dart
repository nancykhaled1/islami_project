import 'package:flutter/material.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/home/quran/sura_details.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          SuraDetials.routeNam,
          arguments: SuraDetialsArgs(name: name, index: index),
        );
      },
      child: Text(
        '$name',
        style: provider.appTheme == ThemeMode.light
            ? Theme.of(context).textTheme.titleSmall
            : Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: MyTheme.whiteColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
