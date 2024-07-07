// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'duaa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Duaa _$DuaaFromJson(Map<String, dynamic> json) {
  return _Duaa.fromJson(json);
}

/// @nodoc
mixin _$Duaa {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'surah')
  num get surah => throw _privateConstructorUsedError;
  @JsonKey(name: 'ayah')
  num get ayah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DuaaCopyWith<Duaa> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuaaCopyWith<$Res> {
  factory $DuaaCopyWith(Duaa value, $Res Function(Duaa) then) =
      _$DuaaCopyWithImpl<$Res, Duaa>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'surah') num surah,
      @JsonKey(name: 'ayah') num ayah});
}

/// @nodoc
class _$DuaaCopyWithImpl<$Res, $Val extends Duaa>
    implements $DuaaCopyWith<$Res> {
  _$DuaaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? ayah = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as num,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DuaaImplCopyWith<$Res> implements $DuaaCopyWith<$Res> {
  factory _$$DuaaImplCopyWith(
          _$DuaaImpl value, $Res Function(_$DuaaImpl) then) =
      __$$DuaaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'surah') num surah,
      @JsonKey(name: 'ayah') num ayah});
}

/// @nodoc
class __$$DuaaImplCopyWithImpl<$Res>
    extends _$DuaaCopyWithImpl<$Res, _$DuaaImpl>
    implements _$$DuaaImplCopyWith<$Res> {
  __$$DuaaImplCopyWithImpl(_$DuaaImpl _value, $Res Function(_$DuaaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? surah = null,
    Object? ayah = null,
  }) {
    return _then(_$DuaaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as num,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DuaaImpl implements _Duaa {
  const _$DuaaImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'surah') required this.surah,
      @JsonKey(name: 'ayah') required this.ayah});

  factory _$DuaaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuaaImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'surah')
  final num surah;
  @override
  @JsonKey(name: 'ayah')
  final num ayah;

  @override
  String toString() {
    return 'Duaa(id: $id, surah: $surah, ayah: $ayah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuaaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.ayah, ayah) || other.ayah == ayah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, surah, ayah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DuaaImplCopyWith<_$DuaaImpl> get copyWith =>
      __$$DuaaImplCopyWithImpl<_$DuaaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuaaImplToJson(
      this,
    );
  }
}

abstract class _Duaa implements Duaa {
  const factory _Duaa(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'surah') required final num surah,
      @JsonKey(name: 'ayah') required final num ayah}) = _$DuaaImpl;

  factory _Duaa.fromJson(Map<String, dynamic> json) = _$DuaaImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'surah')
  num get surah;
  @override
  @JsonKey(name: 'ayah')
  num get ayah;
  @override
  @JsonKey(ignore: true)
  _$$DuaaImplCopyWith<_$DuaaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
