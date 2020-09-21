// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'working_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShopWorkingHoursTearOff {
  const _$ShopWorkingHoursTearOff();

// ignore: unused_element
  _ShopWorkingHours call({@required WorkingHours workingHours}) {
    return _ShopWorkingHours(
      workingHours: workingHours,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShopWorkingHours = _$ShopWorkingHoursTearOff();

/// @nodoc
mixin _$ShopWorkingHours {
  WorkingHours get workingHours;

  $ShopWorkingHoursCopyWith<ShopWorkingHours> get copyWith;
}

/// @nodoc
abstract class $ShopWorkingHoursCopyWith<$Res> {
  factory $ShopWorkingHoursCopyWith(
          ShopWorkingHours value, $Res Function(ShopWorkingHours) then) =
      _$ShopWorkingHoursCopyWithImpl<$Res>;
  $Res call({WorkingHours workingHours});
}

/// @nodoc
class _$ShopWorkingHoursCopyWithImpl<$Res>
    implements $ShopWorkingHoursCopyWith<$Res> {
  _$ShopWorkingHoursCopyWithImpl(this._value, this._then);

  final ShopWorkingHours _value;
  // ignore: unused_field
  final $Res Function(ShopWorkingHours) _then;

  @override
  $Res call({
    Object workingHours = freezed,
  }) {
    return _then(_value.copyWith(
      workingHours: workingHours == freezed
          ? _value.workingHours
          : workingHours as WorkingHours,
    ));
  }
}

/// @nodoc
abstract class _$ShopWorkingHoursCopyWith<$Res>
    implements $ShopWorkingHoursCopyWith<$Res> {
  factory _$ShopWorkingHoursCopyWith(
          _ShopWorkingHours value, $Res Function(_ShopWorkingHours) then) =
      __$ShopWorkingHoursCopyWithImpl<$Res>;
  @override
  $Res call({WorkingHours workingHours});
}

/// @nodoc
class __$ShopWorkingHoursCopyWithImpl<$Res>
    extends _$ShopWorkingHoursCopyWithImpl<$Res>
    implements _$ShopWorkingHoursCopyWith<$Res> {
  __$ShopWorkingHoursCopyWithImpl(
      _ShopWorkingHours _value, $Res Function(_ShopWorkingHours) _then)
      : super(_value, (v) => _then(v as _ShopWorkingHours));

  @override
  _ShopWorkingHours get _value => super._value as _ShopWorkingHours;

  @override
  $Res call({
    Object workingHours = freezed,
  }) {
    return _then(_ShopWorkingHours(
      workingHours: workingHours == freezed
          ? _value.workingHours
          : workingHours as WorkingHours,
    ));
  }
}

/// @nodoc
class _$_ShopWorkingHours extends _ShopWorkingHours {
  const _$_ShopWorkingHours({@required this.workingHours})
      : assert(workingHours != null),
        super._();

  @override
  final WorkingHours workingHours;

  @override
  String toString() {
    return 'ShopWorkingHours(workingHours: $workingHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopWorkingHours &&
            (identical(other.workingHours, workingHours) ||
                const DeepCollectionEquality()
                    .equals(other.workingHours, workingHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workingHours);

  @override
  _$ShopWorkingHoursCopyWith<_ShopWorkingHours> get copyWith =>
      __$ShopWorkingHoursCopyWithImpl<_ShopWorkingHours>(this, _$identity);
}

abstract class _ShopWorkingHours extends ShopWorkingHours {
  const _ShopWorkingHours._() : super._();
  const factory _ShopWorkingHours({@required WorkingHours workingHours}) =
      _$_ShopWorkingHours;

  @override
  WorkingHours get workingHours;
  @override
  _$ShopWorkingHoursCopyWith<_ShopWorkingHours> get copyWith;
}
