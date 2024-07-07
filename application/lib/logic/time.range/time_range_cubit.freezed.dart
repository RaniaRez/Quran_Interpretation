// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_range_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeRangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        initial,
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeRangeStateCopyWith<$Res> {
  factory $TimeRangeStateCopyWith(
          TimeRangeState value, $Res Function(TimeRangeState) then) =
      _$TimeRangeStateCopyWithImpl<$Res, TimeRangeState>;
}

/// @nodoc
class _$TimeRangeStateCopyWithImpl<$Res, $Val extends TimeRangeState>
    implements $TimeRangeStateCopyWith<$Res> {
  _$TimeRangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      DateTime? validatedStartDate,
      DateTime? validatedEndDate,
      SelectedDate selectedDate});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TimeRangeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? validatedStartDate = freezed,
    Object? validatedEndDate = freezed,
    Object? selectedDate = null,
  }) {
    return _then(_$InitialImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validatedStartDate: freezed == validatedStartDate
          ? _value.validatedStartDate
          : validatedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validatedEndDate: freezed == validatedEndDate
          ? _value.validatedEndDate
          : validatedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as SelectedDate,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.startDate,
      required this.endDate,
      this.validatedStartDate,
      this.validatedEndDate,
      required this.selectedDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DateTime? validatedStartDate;
  @override
  final DateTime? validatedEndDate;
  @override
  final SelectedDate selectedDate;

  @override
  String toString() {
    return 'TimeRangeState.initial(startDate: $startDate, endDate: $endDate, validatedStartDate: $validatedStartDate, validatedEndDate: $validatedEndDate, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.validatedStartDate, validatedStartDate) ||
                other.validatedStartDate == validatedStartDate) &&
            (identical(other.validatedEndDate, validatedEndDate) ||
                other.validatedEndDate == validatedEndDate) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate,
      validatedStartDate, validatedEndDate, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        initial,
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial(
        startDate, endDate, validatedStartDate, validatedEndDate, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call(
        startDate, endDate, validatedStartDate, validatedEndDate, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(startDate, endDate, validatedStartDate, validatedEndDate,
          selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TimeRangeState {
  const factory _Initial(
      {required final DateTime startDate,
      required final DateTime endDate,
      final DateTime? validatedStartDate,
      final DateTime? validatedEndDate,
      required final SelectedDate selectedDate}) = _$InitialImpl;

  DateTime get startDate;
  DateTime get endDate;
  DateTime? get validatedStartDate;
  DateTime? get validatedEndDate;
  SelectedDate get selectedDate;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      DateTime? validatedStartDate,
      DateTime? validatedEndDate,
      SelectedDate selectedDate});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TimeRangeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? validatedStartDate = freezed,
    Object? validatedEndDate = freezed,
    Object? selectedDate = null,
  }) {
    return _then(_$LoadedImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validatedStartDate: freezed == validatedStartDate
          ? _value.validatedStartDate
          : validatedStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validatedEndDate: freezed == validatedEndDate
          ? _value.validatedEndDate
          : validatedEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as SelectedDate,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.startDate,
      required this.endDate,
      this.validatedStartDate,
      this.validatedEndDate,
      required this.selectedDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DateTime? validatedStartDate;
  @override
  final DateTime? validatedEndDate;
  @override
  final SelectedDate selectedDate;

  @override
  String toString() {
    return 'TimeRangeState.loaded(startDate: $startDate, endDate: $endDate, validatedStartDate: $validatedStartDate, validatedEndDate: $validatedEndDate, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.validatedStartDate, validatedStartDate) ||
                other.validatedStartDate == validatedStartDate) &&
            (identical(other.validatedEndDate, validatedEndDate) ||
                other.validatedEndDate == validatedEndDate) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate,
      validatedStartDate, validatedEndDate, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        initial,
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        startDate, endDate, validatedStartDate, validatedEndDate, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        startDate, endDate, validatedStartDate, validatedEndDate, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(startDate, endDate, validatedStartDate, validatedEndDate,
          selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TimeRangeState {
  const factory _Loaded(
      {required final DateTime startDate,
      required final DateTime endDate,
      final DateTime? validatedStartDate,
      final DateTime? validatedEndDate,
      required final SelectedDate selectedDate}) = _$LoadedImpl;

  DateTime get startDate;
  DateTime get endDate;
  DateTime? get validatedStartDate;
  DateTime? get validatedEndDate;
  SelectedDate get selectedDate;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TimeRangeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TimeRangeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        initial,
    required TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult? Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        initial,
    TResult Function(
            DateTime startDate,
            DateTime endDate,
            DateTime? validatedStartDate,
            DateTime? validatedEndDate,
            SelectedDate selectedDate)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TimeRangeState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
