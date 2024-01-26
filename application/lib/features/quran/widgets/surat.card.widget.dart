import 'package:app/features/surat/lessson.screen.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../../core/const.dart';
import '../../../core/extension.dart';
import '../../../shared/widgets/buttons/button.widget.dart';
import '../../surat/surat.screen.dart';

class SuratCard extends StatelessWidget {
  const SuratCard({
    super.key,
    required this.backgroundImage,
    required this.arabicName,
    required this.englishName,
    required this.englishTranslationName,
    required this.numberVerses,
    required this.numberSurat,
  });

  final String backgroundImage;
  final String arabicName;
  final String englishName;
  final String englishTranslationName;
  final int numberVerses;
  final int numberSurat;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(kSpacingX2),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(kGray.shade800, BlendMode.overlay),
          ),
          borderRadius: BorderRadius.circular(kSpacingX2),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(kSpacingX1),
                  decoration: BoxDecoration(
                      border: Border.all(color: kGray.shade300),
                      shape: BoxShape.circle),
                  child: Text(
                    numberSurat.toString(),
                    style: context.textTheme.headlineMedium,
                  ),
                ),
                SizedBox(width: kSpacingX1),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        englishName,
                        style: context.textTheme.headlineMedium,
                      ),
                      Text(
                        englishTranslationName,
                        style: context.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      arabicName,
                      style: context.textTheme.headlineMedium,
                    ),
                    Text(
                      "${numberVerses.toString()} ${"quran:verses".translate(context)}",
                      style: context.textTheme.labelMedium,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: kSpacingX2),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "quran:learn",
                    prefixIcon: LucideIcons.brain,
                    height: kSpacingX3,
                    width: kSpacingX6,
                    onPressed: () {
                      context.pushNamed(
                        SurahLessonScreen.routeName,
                        arguments: SurahLessonScreenArguments(numberSurat, 1),
                      );
                    },
                  ),
                ),
                SizedBox(width: kSpacingX1),
                Expanded(
                  child: CustomButton(
                    text: "quran:read",
                    prefixIcon: LucideIcons.book,
                    height: kSpacingX3,
                    width: kSpacingX6,
                    onPressed: () => context.pushNamed(SurahScreen.routeName,
                        arguments: SurahScreenArguments(numberSurat)),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
