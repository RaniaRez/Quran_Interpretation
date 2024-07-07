// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_lesson.freezed.dart';
part 'surah_lesson.g.dart';

@freezed
class SurahLesson with _$SurahLesson {
  const factory SurahLesson({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'surahNumber') required int surahNumber,
    @JsonKey(name: 'surahName') required String surahName,
    @JsonKey(name: 'surahDescription') required String surahDescription,
    @JsonKey(name: 'lessonNumber') required int lessonNumber,
    @JsonKey(name: 'lessonTitle') required String lessonTitle,
    @JsonKey(name: 'lessonContent') required String lessonContent,
  }) = _SurahLesson;

  factory SurahLesson.fromJson(Map<String, dynamic> json) =>
      _$SurahLessonFromJson(json);
}
