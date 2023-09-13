import 'package:flutter/material.dart';
import 'package:islami_project/home/quran/sura_details.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          SuraDetials.routeNam,
          arguments: SuraDetialsArgs(name: name, index: index),
        );
      },
      child: Text(
        '$name',
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
