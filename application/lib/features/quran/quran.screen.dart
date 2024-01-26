import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:app/shared/screens/islamic.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/quran.dart' as quran;

import '../../logic/auth/auth_bloc.dart';
import '../../models/user/user.dart';
import 'widgets/progressbar.widget.dart';
import 'widgets/surat.card.widget.dart';

class QuranScreen extends StatelessWidget {
  static const String routeName = '/quran';
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    User user = context.watch<AuthBloc>().user;

    return IslamicScaffold(
      body: SafeArea(
        child: Container(
          width: context.width,
          height: context.height,
          padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(kSpacingX2),
                decoration: BoxDecoration(
                  color: kGray.shade300,
                  borderRadius: BorderRadius.circular(kSpacingX2),
                  image: const DecorationImage(
                    image:
                        AssetImage("assets/images/quran/islamic-pattern.png"),
                    alignment: Alignment(2, 0),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "quran:progress-hifdh".translate(context),
                      style: context.textTheme.titleSmall!
                          .copyWith(color: textPrimary),
                    ),
                    SizedBox(height: kSpacingHalf),
                    ProgressBar(
                      value: user.hifdh?.progress.toDouble() ?? 0.0,
                      details:
                          "${((user.hifdh?.progress ?? 0) * 100).toInt()}% ${"general:in".translate(context)} ${"quran:progress-hifdh".translate(context)}",
                      textStyle: context.textTheme.titleSmall!
                          .copyWith(color: textPrimary),
                      backgroundColor: kGray.shade700.withOpacity(0.5),
                    ),
                    SizedBox(height: kSpacingX1),
                    Text(
                      "quran:progress-repetition".translate(context),
                      style: context.textTheme.titleSmall!
                          .copyWith(color: textPrimary),
                    ),
                    SizedBox(height: kSpacingHalf),
                    ProgressBar(
                      value: user.repetition?.progress.toDouble() ?? 0.0,
                      details:
                          "${((user.repetition?.progress ?? 0) * 100).toInt()}% ${"general:in".translate(context)} ${"quran:progress-repetition".translate(context)}",
                      textStyle: context.textTheme.titleSmall!
                          .copyWith(color: textPrimary),
                      backgroundColor: kGray.shade700.withOpacity(0.5),
                    ),
                    SizedBox(height: kSpacingX1),
                    Text(
                      "quran:progress-talqueen".translate(context),
                      style: context.textTheme.titleSmall!
                          .copyWith(color: textPrimary),
                    ),
                    SizedBox(height: kSpacingHalf),
                    ProgressBar(
                      value: user.talqueen?.progress.toDouble() ?? 0.0,
                      details:
                          "${((user.talqueen?.progress ?? 0) * 100).toInt()}% ${"general:in".translate(context)} ${"quran:progress-talqueen".translate(context)}",
                      textStyle: context.textTheme.titleSmall!
                          .copyWith(color: textPrimary),
                      backgroundColor: kGray.shade700.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kSpacingX2),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return SuratCard(
                      backgroundImage:
                          "assets/images/home/memorize-review-quran.png",
                      arabicName: quran.getSurahNameArabic(index + 1),
                      englishName: quran.getSurahName(index + 1),
                      englishTranslationName:
                          quran.getSurahNameEnglish(index + 1),
                      numberVerses: quran.getVerseCount(index + 1),
                      numberSurat: index + 1,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    height: kSpacingX1,
                  ),
                  itemCount: 114,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
