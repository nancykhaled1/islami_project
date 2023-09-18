
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_project/MyTheme.dart';
import 'package:islami_project/home/Hadeth/hadeth_details.dart';
import 'package:islami_project/home/home-screen.dart';
import 'package:islami_project/home/quran/sura_details.dart';
import 'package:islami_project/home/sebha/sebha.dart';
import 'package:islami_project/providers/app_Lang_provider.dart';
import 'package:islami_project/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppConfigProviderLang>(
          create: (_) => AppConfigProviderLang(),
        ),
        ChangeNotifierProvider<AppConfigProvider>(
          create: (_) => AppConfigProvider(),
        ),
        // Add other providers here
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var providerLang = Provider.of<AppConfigProviderLang>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeNam,
      routes: {
        HomeScreen.routeNam: (context) => HomeScreen(),
        SuraDetials.routeNam: (context) => SuraDetials(),
        SebhaTab.routeNam: (context) => SebhaTab(),
        HadethDetials.routeNam: (context) => HadethDetials()
      },
      theme: MyTheme.lightMode,
      darkTheme: MyTheme.datkMode,
      themeMode: provider.appTheme,
      locale: providerLang.appLocale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
