// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      type: json['type'] as String,
      hifdh: json['hifdh'] == null
          ? null
          : ProgressHifdh.fromJson(json['hifdh'] as Map<String, dynamic>),
      repetition: json['repetition'] == null
          ? null
          : ProgressRepetition.fromJson(
              json['repetition'] as Map<String, dynamic>),
      talqueen: json['talqueen'] == null
          ? null
          : ProgressTalqeen.fromJson(json['talqueen'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'avatar': instance.avatar,
      'type': instance.type,
      'hifdh': instance.hifdh,
      'repetition': instance.repetition,
      'talqueen': instance.talqueen,
    };

_$ProgressHifdhImpl _$$ProgressHifdhImplFromJson(Map<String, dynamic> json) =>
    _$ProgressHifdhImpl(
      surah: json['surah'] as int,
      verse: json['verse'] as int,
      progress: json['progress'] as num,
    );

Map<String, dynamic> _$$ProgressHifdhImplToJson(_$ProgressHifdhImpl instance) =>
    <String, dynamic>{
      'surah': instance.surah,
      'verse': instance.verse,
      'progress': instance.progress,
    };

_$ProgressRepetitionImpl _$$ProgressRepetitionImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressRepetitionImpl(
      surah: json['surah'] as int,
      verse: json['verse'] as int,
      progress: json['progress'] as num,
    );

Map<String, dynamic> _$$ProgressRepetitionImplToJson(
        _$ProgressRepetitionImpl instance) =>
    <String, dynamic>{
      'surah': instance.surah,
      'verse': instance.verse,
      'progress': instance.progress,
    };

_$ProgressTalqeenImpl _$$ProgressTalqeenImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressTalqeenImpl(
      surah: json['surah'] as int,
      verse: json['verse'] as int,
      progress: json['progress'] as num,
    );

Map<String, dynamic> _$$ProgressTalqeenImplToJson(
        _$ProgressTalqeenImpl instance) =>
    <String, dynamic>{
      'surah': instance.surah,
      'verse': instance.verse,
      'progress': instance.progress,
    };
