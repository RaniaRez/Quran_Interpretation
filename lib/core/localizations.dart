import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'const.dart';

class AppTranslations {
  Locale locale;
  static Map<dynamic, dynamic>? localizedValues;

  AppTranslations(this.locale);

  static AppTranslations? of(BuildContext context) =>
      Localizations.of<AppTranslations>(context, AppTranslations);

  static Future<AppTranslations> load(Locale locale) async {
    AppTranslations translations = AppTranslations(locale);
    String jsonContent =
        await rootBundle.loadString("lang/${locale.languageCode}.json");
    localizedValues = json.decode(jsonContent);
    return translations;
  }

  String? text(String key) => localizedValues![key];

  get currentLanguage => locale.languageCode;
}

class AppTranslationsDelegate extends LocalizationsDelegate<AppTranslations> {
  const AppTranslationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      supportedLanguages.contains(locale.languageCode);

  @override
  Future<AppTranslations> load(Locale locale) => AppTranslations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<AppTranslations> old) => false;
}

class AppLocalizations extends LocalizationsDelegate<AppTranslations> {
  final Locale newLocale;
  const AppLocalizations(this.newLocale);
  @override
  bool isSupported(Locale locale) =>
      supportedLanguages.contains(locale.languageCode);

  @override
  Future<AppTranslations> load(Locale locale) async =>
      await AppTranslations.load(newLocale);

  @override
  bool shouldReload(LocalizationsDelegate<AppTranslations> old) => true;
}
