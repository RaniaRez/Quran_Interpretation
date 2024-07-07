import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

import '../../../core/const.dart';
import '../../../core/extension.dart';
import '../models/duaa.dart';

class DuaaCard extends StatelessWidget {
  const DuaaCard({super.key, required this.duaa});
  final Duaa duaa;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.width,
        padding:
            EdgeInsets.symmetric(horizontal: kSpacingX2, vertical: kSpacingX1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSpacingX1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quran.getVerse(duaa.surah.toInt(), duaa.ayah.toInt()),
              maxLines: 10,
              textAlign: TextAlign.end,
              style: context.textTheme.headlineLarge,
            ),
            SizedBox(height: kSpacingX1),
            Text(
              quran.getVerseTranslation(duaa.surah.toInt(), duaa.ayah.toInt()),
              style: context.textTheme.bodyMedium,
            ),
            SizedBox(height: kSpacingX2),
            Center(
              child: Text(
                "${duaa.surah}:${duaa.ayah}",
                style: context.textTheme.bodyMedium,
              ),
            )
          ],
        ));
  }
}
