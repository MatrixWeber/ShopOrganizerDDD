// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'worker_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkerFailureTearOff {
  const _$WorkerFailureTearOff();

// ignore: unused_element
  _Unexpected unexpected(String funcionName) {
    return _Unexpected(
      funcionName,
    );
  }

// ignore: unused_element
  _UnableToUpdate unableToUpdate() {
    return const _UnableToUpdate();
  }

// ignore: unused_element
  _InsufficientPermissions insufficientPermissions() {
    return const _InsufficientPermissions();
  }
}

/// @nodoc
// ignore: unused_element
const $WorkerFailure = _$WorkerFailureTearOff();

/// @nodoc
mixin _$WorkerFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(String funcionName),
    @required TResult unableToUpdate(),
    @required TResult insufficientPermissions(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(String funcionName),
    TResult unableToUpdate(),
    TResult insufficientPermissions(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult insufficientPermissions(_InsufficientPermissions value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult insufficientPermissions(_InsufficientPermissions value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WorkerFailureCopyWith<$Res> {
  factory $WorkerFailureCopyWith(
          WorkerFailure value, $Res Function(WorkerFailure) then) =
      _$WorkerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkerFailureCopyWithImpl<$Res>
    implements $WorkerFailureCopyWith<$Res> {
  _$WorkerFailureCopyWithImpl(this._value, this._then);

  final WorkerFailure _value;
  // ignore: unused_field
  final $Res Function(WorkerFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
  $Res call({String funcionName});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$WorkerFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;

  @override
  $Res call({
    Object funcionName = freezed,
  }) {
    return _then(_Unexpected(
      funcionName == freezed ? _value.funcionName : funcionName as String,
    ));
  }
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.funcionName) : assert(funcionName != null);

  @override
  final String funcionName;

  @override
  String toString() {
    return 'WorkerFailure.unexpected(funcionName: $funcionName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected &&
            (identical(other.funcionName, funcionName) ||
                const DeepCollectionEquality()
                    .equals(other.funcionName, funcionName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(funcionName);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedCopyWith<_Unexpected> get copyWith =>
      __$UnexpectedCopyWithImpl<_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(String funcionName),
    @required TResult unableToUpdate(),
    @required TResult insufficientPermissions(),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(insufficientPermissions != null);
    return unexpected(funcionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(String funcionName),
    TResult unableToUpdate(),
    TResult insufficientPermissions(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(funcionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult insufficientPermissions(_InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(insufficientPermissions != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult insufficientPermissions(_InsufficientPermissions value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements WorkerFailure {
  const factory _Unexpected(String funcionName) = _$_Unexpected;

  String get funcionName;
  @JsonKey(ignore: true)
  _$UnexpectedCopyWith<_Unexpected> get copyWith;
}

/// @nodoc
abstract class _$UnableToUpdateCopyWith<$Res> {
  factory _$UnableToUpdateCopyWith(
          _UnableToUpdate value, $Res Function(_UnableToUpdate) then) =
      __$UnableToUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnableToUpdateCopyWithImpl<$Res>
    extends _$WorkerFailureCopyWithImpl<$Res>
    implements _$UnableToUpdateCopyWith<$Res> {
  __$UnableToUpdateCopyWithImpl(
      _UnableToUpdate _value, $Res Function(_UnableToUpdate) _then)
      : super(_value, (v) => _then(v as _UnableToUpdate));

  @override
  _UnableToUpdate get _value => super._value as _UnableToUpdate;
}

/// @nodoc
class _$_UnableToUpdate implements _UnableToUpdate {
  const _$_UnableToUpdate();

  @override
  String toString() {
    return 'WorkerFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(String funcionName),
    @required TResult unableToUpdate(),
    @required TResult insufficientPermissions(),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(insufficientPermissions != null);
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(String funcionName),
    TResult unableToUpdate(),
    TResult insufficientPermissions(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult insufficientPermissions(_InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(insufficientPermissions != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult insufficientPermissions(_InsufficientPermissions value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class _UnableToUpdate implements WorkerFailure {
  const factory _UnableToUpdate() = _$_UnableToUpdate;
}

/// @nodoc
abstract class _$InsufficientPermissionsCopyWith<$Res> {
  factory _$InsufficientPermissionsCopyWith(_InsufficientPermissions value,
          $Res Function(_InsufficientPermissions) then) =
      __$InsufficientPermissionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$WorkerFailureCopyWithImpl<$Res>
    implements _$InsufficientPermissionsCopyWith<$Res> {
  __$InsufficientPermissionsCopyWithImpl(_InsufficientPermissions _value,
      $Res Function(_InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as _InsufficientPermissions));

  @override
  _InsufficientPermissions get _value =>
      super._value as _InsufficientPermissions;
}

/// @nodoc
class _$_InsufficientPermissions implements _InsufficientPermissions {
  const _$_InsufficientPermissions();

  @override
  String toString() {
    return 'WorkerFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult unexpected(String funcionName),
    @required TResult unableToUpdate(),
    @required TResult insufficientPermissions(),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult unexpected(String funcionName),
    TResult unableToUpdate(),
    TResult insufficientPermissions(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult unexpected(_Unexpected value),
    @required TResult unableToUpdate(_UnableToUpdate value),
    @required TResult insufficientPermissions(_InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(unableToUpdate != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult unexpected(_Unexpected value),
    TResult unableToUpdate(_UnableToUpdate value),
    TResult insufficientPermissions(_InsufficientPermissions value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions implements WorkerFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
}
