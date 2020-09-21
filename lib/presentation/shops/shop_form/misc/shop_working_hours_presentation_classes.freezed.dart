// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'shop_working_hours_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShopWorkingHoursPrimitiveTearOff {
  const _$ShopWorkingHoursPrimitiveTearOff();

// ignore: unused_element
  _ShopWorkingHoursPrimitive call({@required num workingHours}) {
    return _ShopWorkingHoursPrimitive(
      workingHours: workingHours,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShopWorkingHoursPrimitive = _$ShopWorkingHoursPrimitiveTearOff();

/// @nodoc
mixin _$ShopWorkingHoursPrimitive {
  num get workingHours;

  $ShopWorkingHoursPrimitiveCopyWith<ShopWorkingHoursPrimitive> get copyWith;
}

/// @nodoc
abstract class $ShopWorkingHoursPrimitiveCopyWith<$Res> {
  factory $ShopWorkingHoursPrimitiveCopyWith(ShopWorkingHoursPrimitive value,
          $Res Function(ShopWorkingHoursPrimitive) then) =
      _$ShopWorkingHoursPrimitiveCopyWithImpl<$Res>;
  $Res call({num workingHours});
}

/// @nodoc
class _$ShopWorkingHoursPrimitiveCopyWithImpl<$Res>
    implements $ShopWorkingHoursPrimitiveCopyWith<$Res> {
  _$ShopWorkingHoursPrimitiveCopyWithImpl(this._value, this._then);

  final ShopWorkingHoursPrimitive _value;
  // ignore: unused_field
  final $Res Function(ShopWorkingHoursPrimitive) _then;

  @override
  $Res call({
    Object workingHours = freezed,
  }) {
    return _then(_value.copyWith(
      workingHours:
          workingHours == freezed ? _value.workingHours : workingHours as num,
    ));
  }
}

/// @nodoc
abstract class _$ShopWorkingHoursPrimitiveCopyWith<$Res>
    implements $ShopWorkingHoursPrimitiveCopyWith<$Res> {
  factory _$ShopWorkingHoursPrimitiveCopyWith(_ShopWorkingHoursPrimitive value,
          $Res Function(_ShopWorkingHoursPrimitive) then) =
      __$ShopWorkingHoursPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({num workingHours});
}

/// @nodoc
class __$ShopWorkingHoursPrimitiveCopyWithImpl<$Res>
    extends _$ShopWorkingHoursPrimitiveCopyWithImpl<$Res>
    implements _$ShopWorkingHoursPrimitiveCopyWith<$Res> {
  __$ShopWorkingHoursPrimitiveCopyWithImpl(_ShopWorkingHoursPrimitive _value,
      $Res Function(_ShopWorkingHoursPrimitive) _then)
      : super(_value, (v) => _then(v as _ShopWorkingHoursPrimitive));

  @override
  _ShopWorkingHoursPrimitive get _value =>
      super._value as _ShopWorkingHoursPrimitive;

  @override
  $Res call({
    Object workingHours = freezed,
  }) {
    return _then(_ShopWorkingHoursPrimitive(
      workingHours:
          workingHours == freezed ? _value.workingHours : workingHours as num,
    ));
  }
}

/// @nodoc
class _$_ShopWorkingHoursPrimitive extends _ShopWorkingHoursPrimitive {
  const _$_ShopWorkingHoursPrimitive({@required this.workingHours})
      : assert(workingHours != null),
        super._();

  @override
  final num workingHours;

  @override
  String toString() {
    return 'ShopWorkingHoursPrimitive(workingHours: $workingHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopWorkingHoursPrimitive &&
            (identical(other.workingHours, workingHours) ||
                const DeepCollectionEquality()
                    .equals(other.workingHours, workingHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workingHours);

  @override
  _$ShopWorkingHoursPrimitiveCopyWith<_ShopWorkingHoursPrimitive>
      get copyWith =>
          __$ShopWorkingHoursPrimitiveCopyWithImpl<_ShopWorkingHoursPrimitive>(
              this, _$identity);
}

abstract class _ShopWorkingHoursPrimitive extends ShopWorkingHoursPrimitive {
  const _ShopWorkingHoursPrimitive._() : super._();
  const factory _ShopWorkingHoursPrimitive({@required num workingHours}) =
      _$_ShopWorkingHoursPrimitive;

  @override
  num get workingHours;
  @override
  _$ShopWorkingHoursPrimitiveCopyWith<_ShopWorkingHoursPrimitive> get copyWith;
}
