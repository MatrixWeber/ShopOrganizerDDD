// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  DurationToLong<T> durationToLong<T>(
      {@required T failedValue, @required Duration maxDuration}) {
    return DurationToLong<T>(
      failedValue: failedValue,
      maxDuration: maxDuration,
    );
  }

// ignore: unused_element
  MaxTypeExceeded<T> maxTypeExceeded<T>(
      {@required T failedValue, @required T max}) {
    return MaxTypeExceeded<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  IsNotAPhoneNumber<T> isNotAPhoneNumber<T>({@required T failedValue}) {
    return IsNotAPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  IsNotALetter<T> isNotALetter<T>({@required T failedValue}) {
    return IsNotALetter<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Multiline<T> with DiagnosticableTreeMixin implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.multiline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $MultilineCopyWith<T, Multiline<T>> get copyWith;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ListTooLong<T> with DiagnosticableTreeMixin implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.listTooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

/// @nodoc
abstract class $DurationToLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $DurationToLongCopyWith(
          DurationToLong<T> value, $Res Function(DurationToLong<T>) then) =
      _$DurationToLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, Duration maxDuration});
}

/// @nodoc
class _$DurationToLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $DurationToLongCopyWith<T, $Res> {
  _$DurationToLongCopyWithImpl(
      DurationToLong<T> _value, $Res Function(DurationToLong<T>) _then)
      : super(_value, (v) => _then(v as DurationToLong<T>));

  @override
  DurationToLong<T> get _value => super._value as DurationToLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object maxDuration = freezed,
  }) {
    return _then(DurationToLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      maxDuration:
          maxDuration == freezed ? _value.maxDuration : maxDuration as Duration,
    ));
  }
}

/// @nodoc
class _$DurationToLong<T>
    with DiagnosticableTreeMixin
    implements DurationToLong<T> {
  const _$DurationToLong(
      {@required this.failedValue, @required this.maxDuration})
      : assert(failedValue != null),
        assert(maxDuration != null);

  @override
  final T failedValue;
  @override
  final Duration maxDuration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.durationToLong(failedValue: $failedValue, maxDuration: $maxDuration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.durationToLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('maxDuration', maxDuration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DurationToLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.maxDuration, maxDuration) ||
                const DeepCollectionEquality()
                    .equals(other.maxDuration, maxDuration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(maxDuration);

  @JsonKey(ignore: true)
  @override
  $DurationToLongCopyWith<T, DurationToLong<T>> get copyWith =>
      _$DurationToLongCopyWithImpl<T, DurationToLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return durationToLong(failedValue, maxDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (durationToLong != null) {
      return durationToLong(failedValue, maxDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return durationToLong(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (durationToLong != null) {
      return durationToLong(this);
    }
    return orElse();
  }
}

abstract class DurationToLong<T> implements ValueFailure<T> {
  const factory DurationToLong(
      {@required T failedValue,
      @required Duration maxDuration}) = _$DurationToLong<T>;

  @override
  T get failedValue;
  Duration get maxDuration;
  @override
  @JsonKey(ignore: true)
  $DurationToLongCopyWith<T, DurationToLong<T>> get copyWith;
}

/// @nodoc
abstract class $MaxTypeExceededCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MaxTypeExceededCopyWith(
          MaxTypeExceeded<T> value, $Res Function(MaxTypeExceeded<T>) then) =
      _$MaxTypeExceededCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, T max});
}

/// @nodoc
class _$MaxTypeExceededCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MaxTypeExceededCopyWith<T, $Res> {
  _$MaxTypeExceededCopyWithImpl(
      MaxTypeExceeded<T> _value, $Res Function(MaxTypeExceeded<T>) _then)
      : super(_value, (v) => _then(v as MaxTypeExceeded<T>));

  @override
  MaxTypeExceeded<T> get _value => super._value as MaxTypeExceeded<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(MaxTypeExceeded<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as T,
    ));
  }
}

/// @nodoc
class _$MaxTypeExceeded<T>
    with DiagnosticableTreeMixin
    implements MaxTypeExceeded<T> {
  const _$MaxTypeExceeded({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final T max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.maxTypeExceeded(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.maxTypeExceeded'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaxTypeExceeded<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $MaxTypeExceededCopyWith<T, MaxTypeExceeded<T>> get copyWith =>
      _$MaxTypeExceededCopyWithImpl<T, MaxTypeExceeded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return maxTypeExceeded(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (maxTypeExceeded != null) {
      return maxTypeExceeded(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return maxTypeExceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (maxTypeExceeded != null) {
      return maxTypeExceeded(this);
    }
    return orElse();
  }
}

abstract class MaxTypeExceeded<T> implements ValueFailure<T> {
  const factory MaxTypeExceeded({@required T failedValue, @required T max}) =
      _$MaxTypeExceeded<T>;

  @override
  T get failedValue;
  T get max;
  @override
  @JsonKey(ignore: true)
  $MaxTypeExceededCopyWith<T, MaxTypeExceeded<T>> get copyWith;
}

/// @nodoc
abstract class $IsNotAPhoneNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $IsNotAPhoneNumberCopyWith(IsNotAPhoneNumber<T> value,
          $Res Function(IsNotAPhoneNumber<T>) then) =
      _$IsNotAPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IsNotAPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IsNotAPhoneNumberCopyWith<T, $Res> {
  _$IsNotAPhoneNumberCopyWithImpl(
      IsNotAPhoneNumber<T> _value, $Res Function(IsNotAPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as IsNotAPhoneNumber<T>));

  @override
  IsNotAPhoneNumber<T> get _value => super._value as IsNotAPhoneNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IsNotAPhoneNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$IsNotAPhoneNumber<T>
    with DiagnosticableTreeMixin
    implements IsNotAPhoneNumber<T> {
  const _$IsNotAPhoneNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.isNotAPhoneNumber(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.isNotAPhoneNumber'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNotAPhoneNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $IsNotAPhoneNumberCopyWith<T, IsNotAPhoneNumber<T>> get copyWith =>
      _$IsNotAPhoneNumberCopyWithImpl<T, IsNotAPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return isNotAPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNotAPhoneNumber != null) {
      return isNotAPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return isNotAPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNotAPhoneNumber != null) {
      return isNotAPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class IsNotAPhoneNumber<T> implements ValueFailure<T> {
  const factory IsNotAPhoneNumber({@required T failedValue}) =
      _$IsNotAPhoneNumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $IsNotAPhoneNumberCopyWith<T, IsNotAPhoneNumber<T>> get copyWith;
}

/// @nodoc
abstract class $IsNotALetterCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $IsNotALetterCopyWith(
          IsNotALetter<T> value, $Res Function(IsNotALetter<T>) then) =
      _$IsNotALetterCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IsNotALetterCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IsNotALetterCopyWith<T, $Res> {
  _$IsNotALetterCopyWithImpl(
      IsNotALetter<T> _value, $Res Function(IsNotALetter<T>) _then)
      : super(_value, (v) => _then(v as IsNotALetter<T>));

  @override
  IsNotALetter<T> get _value => super._value as IsNotALetter<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(IsNotALetter<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$IsNotALetter<T>
    with DiagnosticableTreeMixin
    implements IsNotALetter<T> {
  const _$IsNotALetter({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.isNotALetter(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.isNotALetter'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNotALetter<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $IsNotALetterCopyWith<T, IsNotALetter<T>> get copyWith =>
      _$IsNotALetterCopyWithImpl<T, IsNotALetter<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult exceedingLength(T failedValue, int max),
    @required TResult empty(T failedValue),
    @required TResult multiline(T failedValue),
    @required TResult listTooLong(T failedValue, int max),
    @required TResult invalidEmail(T failedValue),
    @required TResult shortPassword(T failedValue),
    @required TResult durationToLong(T failedValue, Duration maxDuration),
    @required TResult maxTypeExceeded(T failedValue, T max),
    @required TResult isNotAPhoneNumber(T failedValue),
    @required TResult isNotALetter(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return isNotALetter(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult exceedingLength(T failedValue, int max),
    TResult empty(T failedValue),
    TResult multiline(T failedValue),
    TResult listTooLong(T failedValue, int max),
    TResult invalidEmail(T failedValue),
    TResult shortPassword(T failedValue),
    TResult durationToLong(T failedValue, Duration maxDuration),
    TResult maxTypeExceeded(T failedValue, T max),
    TResult isNotAPhoneNumber(T failedValue),
    TResult isNotALetter(T failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNotALetter != null) {
      return isNotALetter(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult multiline(Multiline<T> value),
    @required TResult listTooLong(ListTooLong<T> value),
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult durationToLong(DurationToLong<T> value),
    @required TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    @required TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    @required TResult isNotALetter(IsNotALetter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(durationToLong != null);
    assert(maxTypeExceeded != null);
    assert(isNotAPhoneNumber != null);
    assert(isNotALetter != null);
    return isNotALetter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult multiline(Multiline<T> value),
    TResult listTooLong(ListTooLong<T> value),
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult durationToLong(DurationToLong<T> value),
    TResult maxTypeExceeded(MaxTypeExceeded<T> value),
    TResult isNotAPhoneNumber(IsNotAPhoneNumber<T> value),
    TResult isNotALetter(IsNotALetter<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (isNotALetter != null) {
      return isNotALetter(this);
    }
    return orElse();
  }
}

abstract class IsNotALetter<T> implements ValueFailure<T> {
  const factory IsNotALetter({@required T failedValue}) = _$IsNotALetter<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $IsNotALetterCopyWith<T, IsNotALetter<T>> get copyWith;
}
