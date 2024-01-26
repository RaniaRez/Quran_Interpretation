import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:quran/quran.dart' as quran;

import '../../core/const.dart';
import '../../core/extension.dart';
import '../../shared/screens/islamic.screen.dart';
import '../../shared/widgets/buttons/button.widget.dart';
import '../../shared/widgets/loading/loader.widget.dart';
import 'logic/surat_lesson/surah_lesson_cubit.dart';

class SurahLessonScreenArguments {
  final int surahNumber;
  final int lessonNumber;

  SurahLessonScreenArguments(this.surahNumber, this.lessonNumber);
}

class SurahLessonScreen extends StatefulWidget {
  static const String routeName = '/surah/lesson';
  const SurahLessonScreen({super.key});

  @override
  State<SurahLessonScreen> createState() => _SurahLessonScreenState();
}

class _SurahLessonScreenState extends State<SurahLessonScreen> {
  late SurahLessonScreenArguments args;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    args = ModalRoute.of(context)!.settings.arguments
        as SurahLessonScreenArguments;
    context.read<SurahLessonCubit>().load(args.surahNumber, args.lessonNumber);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IslamicScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kSpacingX2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${"surah:surah".translate(context)} ${quran.getSurahName(args.surahNumber)}',
                style: context.textTheme.headlineLarge,
              ),
              SizedBox(height: kSpacingX3),
              Expanded(
                child: BlocBuilder<SurahLessonCubit, SurahLessonState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Container(),
                      loading: () => Center(child: Loader(size: kSpacingX2)),
                      loaded: (surahLesson, last) => ListView(
                        children: [
                          Text(
                            surahLesson.lessonTitle,
                            maxLines: 4,
                            style: context.textTheme.labelLarge,
                          ),
                          SizedBox(height: kSpacingX2),
                          Text(
                            surahLesson.lessonContent,
                            maxLines: 100,
                            style: context.textTheme.labelMedium!
                                .copyWith(fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: kSpacingX2),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: kSpacingX2),
                            child: Row(
                              children: [
                                const Expanded(
                                  child: CustomButton(
                                    text: "surah:quiz",
                                    suffixIcon: LucideIcons.shieldQuestion,
                                    height: 32,
                                  ),
                                ),
                                if (!last)
                                  Expanded(
                                    child: Row(
                                      children: [
                                        SizedBox(width: kSpacingX2),
                                        Expanded(
                                          child: CustomButton(
                                            text: "surah:next",
                                            suffixIcon: LucideIcons.arrowRight,
                                            height: 32,
                                            onPressed: () => context
                                                .read<SurahLessonCubit>()
                                                .nextLesson(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
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
