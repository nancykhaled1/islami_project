import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image(image: AssetImage('assets/images/radio.png')),
        ),
        SizedBox(
          height: 60,
        ),
        Text(
          AppLocalizations.of(context)!.iza3a_radio,
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
