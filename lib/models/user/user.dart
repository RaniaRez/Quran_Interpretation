// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'avatar') required String avatar,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'hifdh') ProgressHifdh? hifdh,
    @JsonKey(name: 'repetition') ProgressRepetition? repetition,
    @JsonKey(name: 'talqueen') ProgressTalqeen? talqueen,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class ProgressHifdh with _$ProgressHifdh {
  const factory ProgressHifdh({
    @JsonKey(name: 'surah') required int surah,
    @JsonKey(name: 'verse') required int verse,
    @JsonKey(name: 'progress') required num progress,
  }) = _ProgressHifdh;

  factory ProgressHifdh.fromJson(Map<String, dynamic> json) =>
      _$ProgressHifdhFromJson(json);
}

@freezed
class ProgressRepetition with _$ProgressRepetition {
  const factory ProgressRepetition({
    @JsonKey(name: 'surah') required int surah,
    @JsonKey(name: 'verse') required int verse,
    @JsonKey(name: 'progress') required num progress,
  }) = _ProgressRepetition;

  factory ProgressRepetition.fromJson(Map<String, dynamic> json) =>
      _$ProgressRepetitionFromJson(json);
}

@freezed
class ProgressTalqeen with _$ProgressTalqeen {
  const factory ProgressTalqeen({
    @JsonKey(name: 'surah') required int surah,
    @JsonKey(name: 'verse') required int verse,
    @JsonKey(name: 'progress') required num progress,
  }) = _ProgressTalqeen;

  factory ProgressTalqeen.fromJson(Map<String, dynamic> json) =>
      _$ProgressTalqeenFromJson(json);
}
