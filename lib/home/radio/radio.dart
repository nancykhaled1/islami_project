import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      /// mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image(image: AssetImage('assets/images/radio.png')),
        ),
        SizedBox(
          height: 60,
        ),
        Text(
          'iza3a elquran alkarem',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 100,
        ),
        Image(image: AssetImage('assets/images/group5.png'))
      ],
    );
  }
}
