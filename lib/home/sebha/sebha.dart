import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_provider.dart';

class SebhaTab extends StatefulWidget {
  static const routeNam = 'sebha-screen';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with TickerProviderStateMixin {
  late AnimationController controller;
  int count = 0;
  List<String> bottomName = [
    'سبحان الله',
    'الله اكبر',
    'لا اله الا الله',
    'استغفر الله',
    'الحمد لله',
  ];
  double angle = 0;
  int index = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    angle += 10;
                  });
                },
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: angle * pi / 180,
                      child: Image.asset('assets/images/sebha.png'),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)!.no_sebha,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 69,
              height: 81,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  '$count',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  count++;
                  bottomClick();
                  setState(() {});
                },
                child: Text('${bottomName[index]}',
                    style: provider.appTheme == ThemeMode.light
                        ? Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: MyTheme.whiteColor)
                        : Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: MyTheme.blackColor))),
          ],
        ),
      ),
    );
  }

  void bottomClick() {
    if (count % 33 == 0) {
      index = (index + 1) % bottomName.length;
      count++;
      setState(() {});
    }
  }
}
