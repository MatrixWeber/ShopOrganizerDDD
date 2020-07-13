// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddressTearOff {
  const _$AddressTearOff();

  _Address call(
      {@required Street street,
      @required HouseNumber houseNumber,
      @required Zip zip,
      @required City city}) {
    return _Address(
      street: street,
      houseNumber: houseNumber,
      zip: zip,
      city: city,
    );
  }
}

// ignore: unused_element
const $Address = _$AddressTearOff();

mixin _$Address {
  Street get street;
  HouseNumber get houseNumber;
  Zip get zip;
  City get city;

  $AddressCopyWith<Address> get copyWith;
}

abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call({Street street, HouseNumber houseNumber, Zip zip, City city});
}

class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object street = freezed,
    Object houseNumber = freezed,
    Object zip = freezed,
    Object city = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed ? _value.street : street as Street,
      houseNumber: houseNumber == freezed
          ? _value.houseNumber
          : houseNumber as HouseNumber,
      zip: zip == freezed ? _value.zip : zip as Zip,
      city: city == freezed ? _value.city : city as City,
    ));
  }
}

abstract class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) then) =
      __$AddressCopyWithImpl<$Res>;
  @override
  $Res call({Street street, HouseNumber houseNumber, Zip zip, City city});
}

class __$AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(_Address _value, $Res Function(_Address) _then)
      : super(_value, (v) => _then(v as _Address));

  @override
  _Address get _value => super._value as _Address;

  @override
  $Res call({
    Object street = freezed,
    Object houseNumber = freezed,
    Object zip = freezed,
    Object city = freezed,
  }) {
    return _then(_Address(
      street: street == freezed ? _value.street : street as Street,
      houseNumber: houseNumber == freezed
          ? _value.houseNumber
          : houseNumber as HouseNumber,
      zip: zip == freezed ? _value.zip : zip as Zip,
      city: city == freezed ? _value.city : city as City,
    ));
  }
}

class _$_Address extends _Address {
  const _$_Address(
      {@required this.street,
      @required this.houseNumber,
      @required this.zip,
      @required this.city})
      : assert(street != null),
        assert(houseNumber != null),
        assert(zip != null),
        assert(city != null),
        super._();

  @override
  final Street street;
  @override
  final HouseNumber houseNumber;
  @override
  final Zip zip;
  @override
  final City city;

  @override
  String toString() {
    return 'Address(street: $street, houseNumber: $houseNumber, zip: $zip, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Address &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.houseNumber, houseNumber)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(city);

  @override
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);
}

abstract class _Address extends Address {
  const _Address._() : super._();
  const factory _Address(
      {@required Street street,
      @required HouseNumber houseNumber,
      @required Zip zip,
      @required City city}) = _$_Address;

  @override
  Street get street;
  @override
  HouseNumber get houseNumber;
  @override
  Zip get zip;
  @override
  City get city;
  @override
  _$AddressCopyWith<_Address> get copyWith;
}