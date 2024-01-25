import 'package:flutter/material.dart';

class MoneyHelper {
  static String format(BuildContext context, double amount) {
    final String locale =
        Localizations.localeOf(context).languageCode.toLowerCase();
    final String formattedAmount = amount
        .toStringAsFixed(2)
        .replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ' ');

    final String formattedCurrency = getFormattedCurrency(locale);
    return '$formattedAmount $formattedCurrency';
  }

  static String getFormattedCurrency(String locale) {
    switch (locale) {
      case 'ar':
        return 'دج';
      // Add more cases for other locales if needed
      default:
        return 'Da';
    }
  }
}
