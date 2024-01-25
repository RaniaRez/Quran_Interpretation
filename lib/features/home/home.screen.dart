import 'package:app/core/const.dart';
import 'package:app/core/extension.dart';
import 'package:app/core/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/quran.dart' as quran;

import 'widgets/features.card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height - context.appBarSize,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background/moon.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken)),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    quran.basmala,
                    textAlign: TextAlign.end,
                    style: context.textTheme.headlineMedium!.copyWith(
                      fontFamily: Fonts.muhammadi.name,
                    ),
                  ),
                  SizedBox(height: kSpacingX1),
                  Text(
                    quran.getVerse(112, 1),
                    textAlign: TextAlign.end,
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontFamily: Fonts.muhammadi.name,
                    ),
                  ),
                  SizedBox(height: kSpacingX1),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(quran.getVerseTranslation(112, 1),
                        maxLines: 3, style: context.textTheme.labelMedium),
                  ),
                ],
              ),
            ),
            SizedBox(height: kSpacingX2),
            Expanded(
                child: Container(
              width: context.width,
              padding: EdgeInsets.symmetric(
                  horizontal: kSpacingX2, vertical: kSpacingX3),
              decoration: BoxDecoration(
                color: surfaceBrand,
                borderRadius: BorderRadius.circular(kSpacingX6),
              ),
              child: SingleChildScrollView(
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: kSpacingX2,
                  runSpacing: kSpacingX2,
                  alignment: WrapAlignment.center,
                  children: [
                    FeaturesCard(
                      width: context.width - kSpacingX5,
                      height: 150.sp,
                      title: 'home:memorize-review-quran',
                      backgroundImage:
                          'assets/images/home/memorize-review-quran.png',
                    ),
                    FeaturesCard(
                      width: context.width / 2 - kSpacingX3,
                      height: 150.sp,
                      title: 'home:appointments',
                      backgroundImage: 'assets/images/home/appointments.png',
                    ),
                    FeaturesCard(
                      width: context.width / 2 - kSpacingX3,
                      height: 150.sp,
                      title: 'home:stories-of-prophets',
                      backgroundImage:
                          'assets/images/home/stories-of-prophets.png',
                    ),
                    FeaturesCard(
                      width: context.width / 2 - kSpacingX3,
                      height: 150.sp,
                      title: 'home:miracles',
                      backgroundImage: 'assets/images/home/miracles.png',
                    ),
                    FeaturesCard(
                      width: context.width / 2 - kSpacingX3,
                      height: 150.sp,
                      title: 'home:become-better-muslim',
                      backgroundImage:
                          'assets/images/home/become-better-muslim.png',
                    ),
                    FeaturesCard(
                      width: context.width / 2 - kSpacingX3,
                      height: 150.sp,
                      title: 'home:quran',
                      backgroundImage: 'assets/images/home/quran.png',
                    ),
                    FeaturesCard(
                      width: context.width / 2 - kSpacingX3,
                      height: 150.sp,
                      title: 'home:lessons-of-quran',
                      backgroundImage:
                          'assets/images/home/lessons-of-quran.png',
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
