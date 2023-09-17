import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetTheme extends StatefulWidget {
  @override
  State<BottomSheetTheme> createState() => _BottomSheetThemeState();
}

class _BottomSheetThemeState extends State<BottomSheetTheme> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.appTheme == ThemeMode.light
                ? selectedtheme(AppLocalizations.of(context)!.light)
                : unselectedtheme(AppLocalizations.of(context)!.light)),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.dark);
          },
          child: provider.appTheme == ThemeMode.dark
              ? selectedtheme(AppLocalizations.of(context)!.dark)
              : unselectedtheme(AppLocalizations.of(context)!.dark),
        )
      ],
    );
  }

  Widget selectedtheme(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: MyTheme.primaryColor),
          ),
          Icon(Icons.check, color: Theme.of(context).primaryColor)
        ],
      ),
    );
  }

  Widget unselectedtheme(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: MyTheme.blackColor)),
    );
  }
}
