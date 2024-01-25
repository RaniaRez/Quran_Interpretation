// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'hifdh')
  ProgressHifdh? get hifdh => throw _privateConstructorUsedError;
  @JsonKey(name: 'repetition')
  ProgressRepetition? get repetition => throw _privateConstructorUsedError;
  @JsonKey(name: 'talqueen')
  ProgressTalqeen? get talqueen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'hifdh') ProgressHifdh? hifdh,
      @JsonKey(name: 'repetition') ProgressRepetition? repetition,
      @JsonKey(name: 'talqueen') ProgressTalqeen? talqueen});

  $ProgressHifdhCopyWith<$Res>? get hifdh;
  $ProgressRepetitionCopyWith<$Res>? get repetition;
  $ProgressTalqeenCopyWith<$Res>? get talqueen;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? avatar = null,
    Object? type = null,
    Object? hifdh = freezed,
    Object? repetition = freezed,
    Object? talqueen = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      hifdh: freezed == hifdh
          ? _value.hifdh
          : hifdh // ignore: cast_nullable_to_non_nullable
              as ProgressHifdh?,
      repetition: freezed == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as ProgressRepetition?,
      talqueen: freezed == talqueen
          ? _value.talqueen
          : talqueen // ignore: cast_nullable_to_non_nullable
              as ProgressTalqeen?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgressHifdhCopyWith<$Res>? get hifdh {
    if (_value.hifdh == null) {
      return null;
    }

    return $ProgressHifdhCopyWith<$Res>(_value.hifdh!, (value) {
      return _then(_value.copyWith(hifdh: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgressRepetitionCopyWith<$Res>? get repetition {
    if (_value.repetition == null) {
      return null;
    }

    return $ProgressRepetitionCopyWith<$Res>(_value.repetition!, (value) {
      return _then(_value.copyWith(repetition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgressTalqeenCopyWith<$Res>? get talqueen {
    if (_value.talqueen == null) {
      return null;
    }

    return $ProgressTalqeenCopyWith<$Res>(_value.talqueen!, (value) {
      return _then(_value.copyWith(talqueen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'hifdh') ProgressHifdh? hifdh,
      @JsonKey(name: 'repetition') ProgressRepetition? repetition,
      @JsonKey(name: 'talqueen') ProgressTalqeen? talqueen});

  @override
  $ProgressHifdhCopyWith<$Res>? get hifdh;
  @override
  $ProgressRepetitionCopyWith<$Res>? get repetition;
  @override
  $ProgressTalqeenCopyWith<$Res>? get talqueen;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? avatar = null,
    Object? type = null,
    Object? hifdh = freezed,
    Object? repetition = freezed,
    Object? talqueen = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      hifdh: freezed == hifdh
          ? _value.hifdh
          : hifdh // ignore: cast_nullable_to_non_nullable
              as ProgressHifdh?,
      repetition: freezed == repetition
          ? _value.repetition
          : repetition // ignore: cast_nullable_to_non_nullable
              as ProgressRepetition?,
      talqueen: freezed == talqueen
          ? _value.talqueen
          : talqueen // ignore: cast_nullable_to_non_nullable
              as ProgressTalqeen?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'avatar') required this.avatar,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'hifdh') this.hifdh,
      @JsonKey(name: 'repetition') this.repetition,
      @JsonKey(name: 'talqueen') this.talqueen});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'avatar')
  final String avatar;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'hifdh')
  final ProgressHifdh? hifdh;
  @override
  @JsonKey(name: 'repetition')
  final ProgressRepetition? repetition;
  @override
  @JsonKey(name: 'talqueen')
  final ProgressTalqeen? talqueen;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, avatar: $avatar, type: $type, hifdh: $hifdh, repetition: $repetition, talqueen: $talqueen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hifdh, hifdh) || other.hifdh == hifdh) &&
            (identical(other.repetition, repetition) ||
                other.repetition == repetition) &&
            (identical(other.talqueen, talqueen) ||
                other.talqueen == talqueen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, avatar,
      type, hifdh, repetition, talqueen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'username') required final String username,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'avatar') required final String avatar,
      @JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'hifdh') final ProgressHifdh? hifdh,
      @JsonKey(name: 'repetition') final ProgressRepetition? repetition,
      @JsonKey(name: 'talqueen') final ProgressTalqeen? talqueen}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'avatar')
  String get avatar;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'hifdh')
  ProgressHifdh? get hifdh;
  @override
  @JsonKey(name: 'repetition')
  ProgressRepetition? get repetition;
  @override
  @JsonKey(name: 'talqueen')
  ProgressTalqeen? get talqueen;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressHifdh _$ProgressHifdhFromJson(Map<String, dynamic> json) {
  return _ProgressHifdh.fromJson(json);
}

/// @nodoc
mixin _$ProgressHifdh {
  @JsonKey(name: 'surah')
  int get surah => throw _privateConstructorUsedError;
  @JsonKey(name: 'verse')
  int get verse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressHifdhCopyWith<ProgressHifdh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressHifdhCopyWith<$Res> {
  factory $ProgressHifdhCopyWith(
          ProgressHifdh value, $Res Function(ProgressHifdh) then) =
      _$ProgressHifdhCopyWithImpl<$Res, ProgressHifdh>;
  @useResult
  $Res call(
      {@JsonKey(name: 'surah') int surah, @JsonKey(name: 'verse') int verse});
}

/// @nodoc
class _$ProgressHifdhCopyWithImpl<$Res, $Val extends ProgressHifdh>
    implements $ProgressHifdhCopyWith<$Res> {
  _$ProgressHifdhCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? verse = null,
  }) {
    return _then(_value.copyWith(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressHifdhImplCopyWith<$Res>
    implements $ProgressHifdhCopyWith<$Res> {
  factory _$$ProgressHifdhImplCopyWith(
          _$ProgressHifdhImpl value, $Res Function(_$ProgressHifdhImpl) then) =
      __$$ProgressHifdhImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'surah') int surah, @JsonKey(name: 'verse') int verse});
}

/// @nodoc
class __$$ProgressHifdhImplCopyWithImpl<$Res>
    extends _$ProgressHifdhCopyWithImpl<$Res, _$ProgressHifdhImpl>
    implements _$$ProgressHifdhImplCopyWith<$Res> {
  __$$ProgressHifdhImplCopyWithImpl(
      _$ProgressHifdhImpl _value, $Res Function(_$ProgressHifdhImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? verse = null,
  }) {
    return _then(_$ProgressHifdhImpl(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressHifdhImpl implements _ProgressHifdh {
  const _$ProgressHifdhImpl(
      {@JsonKey(name: 'surah') required this.surah,
      @JsonKey(name: 'verse') required this.verse});

  factory _$ProgressHifdhImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressHifdhImplFromJson(json);

  @override
  @JsonKey(name: 'surah')
  final int surah;
  @override
  @JsonKey(name: 'verse')
  final int verse;

  @override
  String toString() {
    return 'ProgressHifdh(surah: $surah, verse: $verse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressHifdhImpl &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.verse, verse) || other.verse == verse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, surah, verse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressHifdhImplCopyWith<_$ProgressHifdhImpl> get copyWith =>
      __$$ProgressHifdhImplCopyWithImpl<_$ProgressHifdhImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressHifdhImplToJson(
      this,
    );
  }
}

abstract class _ProgressHifdh implements ProgressHifdh {
  const factory _ProgressHifdh(
      {@JsonKey(name: 'surah') required final int surah,
      @JsonKey(name: 'verse') required final int verse}) = _$ProgressHifdhImpl;

  factory _ProgressHifdh.fromJson(Map<String, dynamic> json) =
      _$ProgressHifdhImpl.fromJson;

  @override
  @JsonKey(name: 'surah')
  int get surah;
  @override
  @JsonKey(name: 'verse')
  int get verse;
  @override
  @JsonKey(ignore: true)
  _$$ProgressHifdhImplCopyWith<_$ProgressHifdhImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressRepetition _$ProgressRepetitionFromJson(Map<String, dynamic> json) {
  return _ProgressRepetition.fromJson(json);
}

/// @nodoc
mixin _$ProgressRepetition {
  @JsonKey(name: 'surah')
  int get surah => throw _privateConstructorUsedError;
  @JsonKey(name: 'verse')
  int get verse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressRepetitionCopyWith<ProgressRepetition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressRepetitionCopyWith<$Res> {
  factory $ProgressRepetitionCopyWith(
          ProgressRepetition value, $Res Function(ProgressRepetition) then) =
      _$ProgressRepetitionCopyWithImpl<$Res, ProgressRepetition>;
  @useResult
  $Res call(
      {@JsonKey(name: 'surah') int surah, @JsonKey(name: 'verse') int verse});
}

/// @nodoc
class _$ProgressRepetitionCopyWithImpl<$Res, $Val extends ProgressRepetition>
    implements $ProgressRepetitionCopyWith<$Res> {
  _$ProgressRepetitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? verse = null,
  }) {
    return _then(_value.copyWith(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressRepetitionImplCopyWith<$Res>
    implements $ProgressRepetitionCopyWith<$Res> {
  factory _$$ProgressRepetitionImplCopyWith(_$ProgressRepetitionImpl value,
          $Res Function(_$ProgressRepetitionImpl) then) =
      __$$ProgressRepetitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'surah') int surah, @JsonKey(name: 'verse') int verse});
}

/// @nodoc
class __$$ProgressRepetitionImplCopyWithImpl<$Res>
    extends _$ProgressRepetitionCopyWithImpl<$Res, _$ProgressRepetitionImpl>
    implements _$$ProgressRepetitionImplCopyWith<$Res> {
  __$$ProgressRepetitionImplCopyWithImpl(_$ProgressRepetitionImpl _value,
      $Res Function(_$ProgressRepetitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? verse = null,
  }) {
    return _then(_$ProgressRepetitionImpl(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressRepetitionImpl implements _ProgressRepetition {
  const _$ProgressRepetitionImpl(
      {@JsonKey(name: 'surah') required this.surah,
      @JsonKey(name: 'verse') required this.verse});

  factory _$ProgressRepetitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressRepetitionImplFromJson(json);

  @override
  @JsonKey(name: 'surah')
  final int surah;
  @override
  @JsonKey(name: 'verse')
  final int verse;

  @override
  String toString() {
    return 'ProgressRepetition(surah: $surah, verse: $verse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressRepetitionImpl &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.verse, verse) || other.verse == verse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, surah, verse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressRepetitionImplCopyWith<_$ProgressRepetitionImpl> get copyWith =>
      __$$ProgressRepetitionImplCopyWithImpl<_$ProgressRepetitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressRepetitionImplToJson(
      this,
    );
  }
}

abstract class _ProgressRepetition implements ProgressRepetition {
  const factory _ProgressRepetition(
          {@JsonKey(name: 'surah') required final int surah,
          @JsonKey(name: 'verse') required final int verse}) =
      _$ProgressRepetitionImpl;

  factory _ProgressRepetition.fromJson(Map<String, dynamic> json) =
      _$ProgressRepetitionImpl.fromJson;

  @override
  @JsonKey(name: 'surah')
  int get surah;
  @override
  @JsonKey(name: 'verse')
  int get verse;
  @override
  @JsonKey(ignore: true)
  _$$ProgressRepetitionImplCopyWith<_$ProgressRepetitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgressTalqeen _$ProgressTalqeenFromJson(Map<String, dynamic> json) {
  return _ProgressTalqeen.fromJson(json);
}

/// @nodoc
mixin _$ProgressTalqeen {
  @JsonKey(name: 'surah')
  int get surah => throw _privateConstructorUsedError;
  @JsonKey(name: 'verse')
  int get verse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressTalqeenCopyWith<ProgressTalqeen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressTalqeenCopyWith<$Res> {
  factory $ProgressTalqeenCopyWith(
          ProgressTalqeen value, $Res Function(ProgressTalqeen) then) =
      _$ProgressTalqeenCopyWithImpl<$Res, ProgressTalqeen>;
  @useResult
  $Res call(
      {@JsonKey(name: 'surah') int surah, @JsonKey(name: 'verse') int verse});
}

/// @nodoc
class _$ProgressTalqeenCopyWithImpl<$Res, $Val extends ProgressTalqeen>
    implements $ProgressTalqeenCopyWith<$Res> {
  _$ProgressTalqeenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? verse = null,
  }) {
    return _then(_value.copyWith(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressTalqeenImplCopyWith<$Res>
    implements $ProgressTalqeenCopyWith<$Res> {
  factory _$$ProgressTalqeenImplCopyWith(_$ProgressTalqeenImpl value,
          $Res Function(_$ProgressTalqeenImpl) then) =
      __$$ProgressTalqeenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'surah') int surah, @JsonKey(name: 'verse') int verse});
}

/// @nodoc
class __$$ProgressTalqeenImplCopyWithImpl<$Res>
    extends _$ProgressTalqeenCopyWithImpl<$Res, _$ProgressTalqeenImpl>
    implements _$$ProgressTalqeenImplCopyWith<$Res> {
  __$$ProgressTalqeenImplCopyWithImpl(
      _$ProgressTalqeenImpl _value, $Res Function(_$ProgressTalqeenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? verse = null,
  }) {
    return _then(_$ProgressTalqeenImpl(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressTalqeenImpl implements _ProgressTalqeen {
  const _$ProgressTalqeenImpl(
      {@JsonKey(name: 'surah') required this.surah,
      @JsonKey(name: 'verse') required this.verse});

  factory _$ProgressTalqeenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressTalqeenImplFromJson(json);

  @override
  @JsonKey(name: 'surah')
  final int surah;
  @override
  @JsonKey(name: 'verse')
  final int verse;

  @override
  String toString() {
    return 'ProgressTalqeen(surah: $surah, verse: $verse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressTalqeenImpl &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.verse, verse) || other.verse == verse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, surah, verse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressTalqeenImplCopyWith<_$ProgressTalqeenImpl> get copyWith =>
      __$$ProgressTalqeenImplCopyWithImpl<_$ProgressTalqeenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressTalqeenImplToJson(
      this,
    );
  }
}

abstract class _ProgressTalqeen implements ProgressTalqeen {
  const factory _ProgressTalqeen(
          {@JsonKey(name: 'surah') required final int surah,
          @JsonKey(name: 'verse') required final int verse}) =
      _$ProgressTalqeenImpl;

  factory _ProgressTalqeen.fromJson(Map<String, dynamic> json) =
      _$ProgressTalqeenImpl.fromJson;

  @override
  @JsonKey(name: 'surah')
  int get surah;
  @override
  @JsonKey(name: 'verse')
  int get verse;
  @override
  @JsonKey(ignore: true)
  _$$ProgressTalqeenImplCopyWith<_$ProgressTalqeenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
