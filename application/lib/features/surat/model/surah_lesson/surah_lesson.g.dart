// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahLessonImpl _$$SurahLessonImplFromJson(Map<String, dynamic> json) =>
    _$SurahLessonImpl(
      id: json['id'] as int,
      surahNumber: json['surahNumber'] as int,
      surahName: json['surahName'] as String,
      surahDescription: json['surahDescription'] as String,
      lessonNumber: json['lessonNumber'] as int,
      lessonTitle: json['lessonTitle'] as String,
      lessonContent: json['lessonContent'] as String,
    );

Map<String, dynamic> _$$SurahLessonImplToJson(_$SurahLessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surahNumber': instance.surahNumber,
      'surahName': instance.surahName,
      'surahDescription': instance.surahDescription,
      'lessonNumber': instance.lessonNumber,
      'lessonTitle': instance.lessonTitle,
      'lessonContent': instance.lessonContent,
    };
