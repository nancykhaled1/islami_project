import 'package:flutter/cupertino.dart';

class AppConfigProviderLang extends ChangeNotifier {
  Locale appLocale = Locale('en');

  void changeLang(Locale newLang) {
    if (appLocale == newLang) {
      return;
    }
    appLocale = newLang;
    notifyListeners();
  }
}