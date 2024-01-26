import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:app/shared/screens/islamic.screen.dart';
import 'package:app/shared/widgets/buttons/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart' as quran;

class SurahScreenArguments {
  final int surahNumber;
  SurahScreenArguments(this.surahNumber);
}

class SurahScreen extends StatelessWidget {
  static const routeName = "/surah";
  const SurahScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SurahScreenArguments;

    return IslamicScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 270.sp,
                      decoration: BoxDecoration(
                        color: surfaceSecondary,
                        borderRadius: BorderRadius.circular(kSpacingX2),
                        image: DecorationImage(
                          image: const AssetImage(
                              "assets/images/quran/islamic-pattern.png"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              kGray.shade800, BlendMode.overlay),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: kSpacingX4),
                          Text(
                            quran.getSurahName(args.surahNumber),
                            style: context.textTheme.titleLarge!.copyWith(
                              color: kPrimary.shade300,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: kSpacingX2),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  quran
                                      .getPlaceOfRevelation(args.surahNumber)
                                      .toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.bodySmall,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "${quran.getVerseCount(args.surahNumber).toString()} ${"quran:verses".translate(context)}"
                                      .toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: kSpacingX7),
                          Container(
                            height: 1,
                            color: kPrimary,
                          ),
                          SizedBox(height: kSpacingX3),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: kSpacingX3),
                            child: CustomButton(
                              text: "surah:play",
                              prefixIcon: Icons.play_arrow,
                              height: 32.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: kSpacingX1),
                  Expanded(
                    child: Container(
                      height: 270.sp,
                      decoration: BoxDecoration(
                        gradient: gradientPrimary,
                        borderRadius: BorderRadius.circular(kSpacingX2),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/quran/ramadan.png"),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: kSpacingX1),
                          Text(
                            quran.getSurahNameArabic(args.surahNumber),
                            style: context.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: kSpacingX2),
              Expanded(
                child: ListView.separated(
                  itemCount: quran.getVerseCount(args.surahNumber),
                  separatorBuilder: (context, index) => Divider(
                    color: kPrimary,
                    height: kSpacingX3,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                quran.getVerse(args.surahNumber, index + 1),
                                textAlign: TextAlign.right,
                                style: context.textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(width: kSpacingX1),
                            Container(
                              padding: EdgeInsets.all(kSpacingX1),
                              decoration: BoxDecoration(
                                border: Border.all(color: kPrimary, width: 2),
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                (index + 1).toString(),
                                style: context.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: kSpacingX1),
                        Text(
                          quran.getVerseTranslation(
                              args.surahNumber, index + 1),
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyMedium,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
