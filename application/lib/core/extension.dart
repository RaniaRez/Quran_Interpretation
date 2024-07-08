import 'dart:convert';

import 'package:app/core/const.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

import 'localizations.dart';

extension ColorExtension on Color {
  Color get lighter => Color.fromARGB(
        alpha,
        (red + 255) ~/ 2,
        (green + 255) ~/ 2,
        (blue + 255) ~/ 2,
      );
  Color get darker => Color.fromARGB(
        alpha,
        red ~/ 2,
        green ~/ 2,
        blue ~/ 2,
      );
}

extension TranslateExtension on String {
  String translate(BuildContext context) =>
      AppTranslations.of(context)!.text(this) ?? this;
}

extension GetTextTheme on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension Navigation on BuildContext {
  void push(Widget page) {
    Navigator.of(this).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushReplacement(Widget page) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  void pushAndRemoveUntil(Widget page) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => page,
      ),
      (route) => false,
    );
  }

  void pop({bool? pop}) {
    Navigator.of(this).pop(pop);
  }

  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void pushNamedAndRemoveUntil(String routeName) {
    Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pushReplacementNamed(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }

  bool get canPop => Navigator.of(this).canPop();
}

extension ScreenSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get paddingTop => MediaQuery.of(this).padding.top;
  double get paddingBottom => MediaQuery.of(this).padding.bottom;
  double get paddingLeft => MediaQuery.of(this).padding.left;
  double get paddingRight => MediaQuery.of(this).padding.right;
  double get appBarSize => MediaQuery.of(this).padding.top + kToolbarHeight;
}

extension SnackBarExtension on BuildContext {
  void successSnackBar(String message) {
    final snackBar = SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Success', // Update the title to indicate success
        message: message.translate(this),
        contentType: ContentType.success,
        color: kPrimary,
      ),
    );
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void errorSnackBar(String message) {
    final snackBar = SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Error', // Update the title to indicate error
        message: message.translate(this),
        contentType: ContentType.failure,
        color: kPrimary,
      ),
    );
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void warningSnackBar(String message) {
    final snackBar = SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Warning', // Update the title to indicate warning
        message: message.translate(this),
        contentType: ContentType.warning,
        color: kPrimary,
      ),
    );
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  void infoSnackBar(String title, String message) {
    final snackBar = SnackBar(
      elevation: 0,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title.translate(this),
        message: message.translate(this),
        contentType: ContentType.help,
        color: kPrimary,
      ),
    );
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

extension StringExtension on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';

  String get firstLetterCapitalized =>
      '${this[0].toUpperCase()}${substring(1)}';
  String get firstLetterLowercased => '${this[0].toLowerCase()}${substring(1)}';
  String get allLettersCapitalized =>
      split(' ').map((str) => str.firstLetterCapitalized).join(' ');
  String get allLettersLowercased =>
      split(' ').map((str) => str.firstLetterLowercased).join(' ');
  String get firstLetterCapitalizedAllWords =>
      split(' ').map((str) => str.firstLetterCapitalized).join(' ');
  String get firstLetterLowercasedAllWords =>
      split(' ').map((str) => str.firstLetterLowercased).join(' ');
  String get allLettersCapitalizedAllWords =>
      split(' ').map((str) => str.allLettersCapitalized).join(' ');
  String get allLettersLowercasedAllWords =>
      split(' ').map((str) => str.allLettersLowercased).join(' ');
  String get firstLetterCapitalizedAllSentences =>
      split('. ').map((str) => str.firstLetterCapitalized).join('. ');
  String get firstLetterLowercasedAllSentences =>
      split('. ').map((str) => str.firstLetterLowercased).join('. ');
  String get allLettersCapitalizedAllSentences =>
      split('. ').map((str) => str.allLettersCapitalized).join('. ');
  String get allLettersLowercasedAllSentences =>
      split('. ').map((str) => str.allLettersLowercased).join('. ');
  String get firstLetterCapitalizedAllParagraphs =>
      split('\n\n').map((str) => str.firstLetterCapitalized).join('\n\n');
  String get firstLetterLowercasedAllParagraphs =>
      split('\n\n').map((str) => str.firstLetterLowercased).join('\n\n');
  String get allLettersCapitalizedAllParagraphs =>
      split('\n\n').map((str) => str.allLettersCapitalized).join('\n\n');
  String get allLettersLowercasedAllParagraphs =>
      split('\n\n').map((str) => str.allLettersLowercased).join('\n\n');
  String get firstLetterCapitalizedAll =>
      split('\n\n').map((str) => str.firstLetterCapitalized).join('\n\n');
  String get firstLetterLowercasedAll =>
      split('\n\n').map((str) => str.firstLetterLowercased).join('\n\n');
  String get allLettersCapitalizedAll =>
      split('\n\n').map((str) => str.allLettersCapitalized).join('\n\n');
  String get allLettersLowercasedAll =>
      split('\n\n').map((str) => str.allLettersLowercased).join('\n\n');
  String get firstLetterCapitalizedAllWordsAll =>
      split('\n\n').map((str) => str.firstLetterCapitalized).join('\n\n');
  String get firstLetterLowercasedAllWordsAll =>
      split('\n\n').map((str) => str.firstLetterLowercased).join('\n\n');
  String get allLettersCapitalizedAllWordsAll =>
      split('\n\n').map((str) => str.allLettersCapitalized).join('\n\n');
  String get allLettersLowercasedAllWordsAll =>
      split('\n\n').map((str) => str.allLettersLowercased).join('\n\n');
  String get firstLetterCapitalizedAllSentencesAll =>
      split('\n\n').map((str) => str.firstLetterCapitalized).join('\n\n');

  bool get isEmail =>
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(this);
  bool get isPhoneNumber => RegExp(r'^[0-9]{10}$').hasMatch(this);
  bool get isPassword =>
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$').hasMatch(this);
  bool get isUsername => RegExp(r'^[a-zA-Z0-9_]{3,}$').hasMatch(this);
  bool get isName => RegExp(r'^[a-zA-Z]{3,}$').hasMatch(this);
  bool get isNumber => RegExp(r'^[0-9]+$').hasMatch(this);
  bool get isAlphabet => RegExp(r'^[a-zA-Z]+$').hasMatch(this);
  bool get isUrl => RegExp(
          r'^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$')
      .hasMatch(this);
  bool get isHexColor =>
      RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$').hasMatch(this);
  bool get isIp =>
      RegExp(r'^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$').hasMatch(this);
  bool get isDate => RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(this);
  bool get isTime => RegExp(r'^\d{2}:\d{2}:\d{2}$').hasMatch(this);
  bool get isDateTime =>
      RegExp(r'^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$').hasMatch(this);
  bool get isCreditCard =>
      RegExp(r'^[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}$').hasMatch(this);
  bool get isHtml =>
      RegExp(r'^<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)$').hasMatch(this);
  bool get isJson =>
      (json.decode(this) is Map<String, dynamic>) ||
      (json.decode(this) is List<dynamic>);
  bool get isBase64 => RegExp(r'^[A-Za-z0-9+/=]+$').hasMatch(this);
}
