// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemindersImpl _$$RemindersImplFromJson(Map<String, dynamic> json) =>
    _$RemindersImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      read: json['read'] as bool,
    );

Map<String, dynamic> _$$RemindersImplToJson(_$RemindersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'timestamp': instance.timestamp.toIso8601String(),
      'read': instance.read,
    };
