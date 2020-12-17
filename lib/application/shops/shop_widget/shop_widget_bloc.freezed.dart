// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'shop_widget_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShopWidgetEventTearOff {
  const _$ShopWidgetEventTearOff();

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
  }

// ignore: unused_element
  _InProgress inProgress(num percent) {
    return _InProgress(
      percent,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShopWidgetEvent = _$ShopWidgetEventTearOff();

/// @nodoc
mixin _$ShopWidgetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult inProgress(num percent),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult inProgress(num percent),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult inProgress(_InProgress value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult inProgress(_InProgress value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ShopWidgetEventCopyWith<$Res> {
  factory $ShopWidgetEventCopyWith(
          ShopWidgetEvent value, $Res Function(ShopWidgetEvent) then) =
      _$ShopWidgetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopWidgetEventCopyWithImpl<$Res>
    implements $ShopWidgetEventCopyWith<$Res> {
  _$ShopWidgetEventCopyWithImpl(this._value, this._then);

  final ShopWidgetEvent _value;
  // ignore: unused_field
  final $Res Function(ShopWidgetEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ShopWidgetEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'ShopWidgetEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult inProgress(num percent),
  }) {
    assert(initialized != null);
    assert(inProgress != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult inProgress(num percent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult inProgress(_InProgress value),
  }) {
    assert(initialized != null);
    assert(inProgress != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult inProgress(_InProgress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ShopWidgetEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
  $Res call({num percent});
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res>
    extends _$ShopWidgetEventCopyWithImpl<$Res>
    implements _$InProgressCopyWith<$Res> {
  __$InProgressCopyWithImpl(
      _InProgress _value, $Res Function(_InProgress) _then)
      : super(_value, (v) => _then(v as _InProgress));

  @override
  _InProgress get _value => super._value as _InProgress;

  @override
  $Res call({
    Object percent = freezed,
  }) {
    return _then(_InProgress(
      percent == freezed ? _value.percent : percent as num,
    ));
  }
}

/// @nodoc
class _$_InProgress implements _InProgress {
  const _$_InProgress(this.percent) : assert(percent != null);

  @override
  final num percent;

  @override
  String toString() {
    return 'ShopWidgetEvent.inProgress(percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InProgress &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality().equals(other.percent, percent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percent);

  @override
  _$InProgressCopyWith<_InProgress> get copyWith =>
      __$InProgressCopyWithImpl<_InProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult inProgress(num percent),
  }) {
    assert(initialized != null);
    assert(inProgress != null);
    return inProgress(percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult inProgress(num percent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult inProgress(_InProgress value),
  }) {
    assert(initialized != null);
    assert(inProgress != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult inProgress(_InProgress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements ShopWidgetEvent {
  const factory _InProgress(num percent) = _$_InProgress;

  num get percent;
  _$InProgressCopyWith<_InProgress> get copyWith;
}

/// @nodoc
class _$ShopWidgetStateTearOff {
  const _$ShopWidgetStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress(num percent) {
    return _ActionInProgress(
      percent,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShopWidgetState = _$ShopWidgetStateTearOff();

/// @nodoc
mixin _$ShopWidgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(num percent),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(num percent),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ShopWidgetStateCopyWith<$Res> {
  factory $ShopWidgetStateCopyWith(
          ShopWidgetState value, $Res Function(ShopWidgetState) then) =
      _$ShopWidgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopWidgetStateCopyWithImpl<$Res>
    implements $ShopWidgetStateCopyWith<$Res> {
  _$ShopWidgetStateCopyWithImpl(this._value, this._then);

  final ShopWidgetState _value;
  // ignore: unused_field
  final $Res Function(ShopWidgetState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ShopWidgetStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ShopWidgetState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(num percent),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(num percent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ShopWidgetState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
  $Res call({num percent});
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ShopWidgetStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;

  @override
  $Res call({
    Object percent = freezed,
  }) {
    return _then(_ActionInProgress(
      percent == freezed ? _value.percent : percent as num,
    ));
  }
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress(this.percent) : assert(percent != null);

  @override
  final num percent;

  @override
  String toString() {
    return 'ShopWidgetState.actionInProgress(percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionInProgress &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality().equals(other.percent, percent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percent);

  @override
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith =>
      __$ActionInProgressCopyWithImpl<_ActionInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(num percent),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    return actionInProgress(percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(num percent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ShopWidgetState {
  const factory _ActionInProgress(num percent) = _$_ActionInProgress;

  num get percent;
  _$ActionInProgressCopyWith<_ActionInProgress> get copyWith;
}
