import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/providers/app_Lang_provider.dart';
import 'package:islami_project/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetLanguage extends StatefulWidget {
  @override
  State<BottomSheetLanguage> createState() => _BottomSheetLanguage();
}

class _BottomSheetLanguage extends State<BottomSheetLanguage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var providerLang = Provider.of<AppConfigProviderLang>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
            onTap: () {
              providerLang.changeLang(Locale('en'));
            },
            child: providerLang.appLocale == Locale('en')
                ? selectedtheme(AppLocalizations.of(context)!.english)
                : unselectedtheme(AppLocalizations.of(context)!.english)),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            providerLang.changeLang(Locale('ar'));
          },
          child: providerLang.appLocale == Locale('ar')
              ? selectedtheme(AppLocalizations.of(context)!.arabic)
              : unselectedtheme(AppLocalizations.of(context)!.arabic),
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