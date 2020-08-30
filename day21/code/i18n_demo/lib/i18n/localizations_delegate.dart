import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:i18n_demo/i18n/localizations.dart';

class HYLocalizationsDelegate extends LocalizationsDelegate<HYLocalizations> {
  static HYLocalizationsDelegate delegate = HYLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ["zh", "en"].contains(locale.languageCode);
  }

  @override
  bool shouldReload(LocalizationsDelegate<HYLocalizations> old) {
    return false;
  }

  @override
  Future<HYLocalizations> load(Locale locale) async {
    final localizations = HYLocalizations(locale);
    await localizations.loadJson();
    return localizations;
  }
}