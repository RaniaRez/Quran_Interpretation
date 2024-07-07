import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/surah_lesson/surah_lesson.dart';

part 'surah_lesson_state.dart';
part 'surah_lesson_cubit.freezed.dart';

class SurahLessonCubit extends Cubit<SurahLessonState> {
  SurahLessonCubit() : super(const SurahLessonState.initial());

  Future<void> load(int surahNumber, int lessonNumber) async {
    emit(const SurahLessonState.loading());
    try {
      final surahLesson = SurahLesson(
        id: 1,
        surahNumber: surahNumber,
        surahName: 'Al-Fatihah',
        surahDescription: 'Pembukaan',
        lessonNumber: lessonNumber,
        lessonTitle: 'What is Al-Fatihah?',
        lessonContent:
            'Surah Al-Fatihah is one of the very earliest Revelations to the Holy Prophet.\n\nThis Surah is in fact a prayer that Allah has taught to all those who want to make a study of His book. It has been placed at the very beginning of the Quran to teach this lesson to the reader: if you sincerely want to benefit from the Quran, you should offer this prayer to the Lord of the Universe.\n\nAl-Fatihah indirectly teaches that the best thing for a man is to pray for guidance to the straight path.',
      );
      if (lessonNumber == 2) {
        final surahLesson = SurahLesson(
            id: 1,
            surahNumber: surahNumber,
            surahName: 'Al-Fatihah',
            surahDescription: 'Pembukaan',
            lessonNumber: lessonNumber,
            lessonTitle: 'Important Etiquette of Making Du\'a (Prayer)',
            lessonContent:
                'The first part of Surah al Fatihah consists of praise of Allah, before the prayer itself is made to Allah. This teaches us an important etiquette of making du’a, that is, while asking anything from Allah, we do not put our request abruptly and bluntly to him.\n\nInstead, we begin by first acknowledging his favors and the highest position of Allah, by referring to His Beautiful Names (Asma ul Husna) and then asking Him what we want.');
        emit(SurahLessonState.loaded(
          surahLesson: surahLesson,
          last: true,
        ));
        return;
      }
      emit(SurahLessonState.loaded(
        surahLesson: surahLesson,
        last: false,
      ));
    } catch (e) {
      emit(const SurahLessonState.error(message: 'surat:lesson.error'));
    }
  }

  Future<void> nextLesson() async {
    try {
      state.maybeWhen(
        orElse: () {},
        loaded: (surahLesson, last) {
          if (last) {
            return;
          }
          load(surahLesson.surahNumber, surahLesson.lessonNumber + 1);
        },
      );
    } catch (e) {
      emit(const SurahLessonState.error(message: 'surat:lesson.error'));
    }
  }
}
