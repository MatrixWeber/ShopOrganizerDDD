// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskDescriptionTearOff {
  const _$TaskDescriptionTearOff();

// ignore: unused_element
  _TaskDescription call(
      {@required UniqueId id,
      @required TaskName name,
      @required TaskDuration duration,
      @required Price price}) {
    return _TaskDescription(
      id: id,
      name: name,
      duration: duration,
      price: price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskDescription = _$TaskDescriptionTearOff();

/// @nodoc
mixin _$TaskDescription {
  UniqueId get id;
  TaskName get name;
  TaskDuration get duration;
  Price get price;

  $TaskDescriptionCopyWith<TaskDescription> get copyWith;
}

/// @nodoc
abstract class $TaskDescriptionCopyWith<$Res> {
  factory $TaskDescriptionCopyWith(
          TaskDescription value, $Res Function(TaskDescription) then) =
      _$TaskDescriptionCopyWithImpl<$Res>;
  $Res call({UniqueId id, TaskName name, TaskDuration duration, Price price});
}

/// @nodoc
class _$TaskDescriptionCopyWithImpl<$Res>
    implements $TaskDescriptionCopyWith<$Res> {
  _$TaskDescriptionCopyWithImpl(this._value, this._then);

  final TaskDescription _value;
  // ignore: unused_field
  final $Res Function(TaskDescription) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object duration = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as TaskName,
      duration:
          duration == freezed ? _value.duration : duration as TaskDuration,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

/// @nodoc
abstract class _$TaskDescriptionCopyWith<$Res>
    implements $TaskDescriptionCopyWith<$Res> {
  factory _$TaskDescriptionCopyWith(
          _TaskDescription value, $Res Function(_TaskDescription) then) =
      __$TaskDescriptionCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, TaskName name, TaskDuration duration, Price price});
}

/// @nodoc
class __$TaskDescriptionCopyWithImpl<$Res>
    extends _$TaskDescriptionCopyWithImpl<$Res>
    implements _$TaskDescriptionCopyWith<$Res> {
  __$TaskDescriptionCopyWithImpl(
      _TaskDescription _value, $Res Function(_TaskDescription) _then)
      : super(_value, (v) => _then(v as _TaskDescription));

  @override
  _TaskDescription get _value => super._value as _TaskDescription;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object duration = freezed,
    Object price = freezed,
  }) {
    return _then(_TaskDescription(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as TaskName,
      duration:
          duration == freezed ? _value.duration : duration as TaskDuration,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

/// @nodoc
class _$_TaskDescription extends _TaskDescription {
  const _$_TaskDescription(
      {@required this.id,
      @required this.name,
      @required this.duration,
      @required this.price})
      : assert(id != null),
        assert(name != null),
        assert(duration != null),
        assert(price != null),
        super._();

  @override
  final UniqueId id;
  @override
  final TaskName name;
  @override
  final TaskDuration duration;
  @override
  final Price price;

  @override
  String toString() {
    return 'TaskDescription(id: $id, name: $name, duration: $duration, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDescription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$TaskDescriptionCopyWith<_TaskDescription> get copyWith =>
      __$TaskDescriptionCopyWithImpl<_TaskDescription>(this, _$identity);
}

abstract class _TaskDescription extends TaskDescription {
  const _TaskDescription._() : super._();
  const factory _TaskDescription(
      {@required UniqueId id,
      @required TaskName name,
      @required TaskDuration duration,
      @required Price price}) = _$_TaskDescription;

  @override
  UniqueId get id;
  @override
  TaskName get name;
  @override
  TaskDuration get duration;
  @override
  Price get price;
  @override
  _$TaskDescriptionCopyWith<_TaskDescription> get copyWith;
}
