// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'duaa.freezed.dart';
part 'duaa.g.dart';

@freezed
class Duaa with _$Duaa {
  const factory Duaa({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'surah') required num surah,
    @JsonKey(name: 'ayah') required num ayah,
  }) = _Duaa;

  factory Duaa.fromJson(Map<String, dynamic> json) => _$DuaaFromJson(json);
}
