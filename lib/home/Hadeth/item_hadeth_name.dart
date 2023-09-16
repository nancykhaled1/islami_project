import 'package:flutter/material.dart';
import 'package:islami_project/home/Hadeth/hadeth_details.dart';

import 'hadeth.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          HadethDetials.routeNam,
          arguments: hadeth,
        );
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
