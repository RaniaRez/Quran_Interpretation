part of 'surah_lesson_cubit.dart';

@freezed
class SurahLessonState with _$SurahLessonState {
  const factory SurahLessonState.initial() = _Initial;
  const factory SurahLessonState.loading() = _Loading;
  const factory SurahLessonState.loaded({
    required SurahLesson surahLesson,
    required bool last,
  }) = _Loaded;
  const factory SurahLessonState.error({required String message}) = _Error;
}
