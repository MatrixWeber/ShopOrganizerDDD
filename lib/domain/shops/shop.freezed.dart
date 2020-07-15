// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShopTearOff {
  const _$ShopTearOff();

  _Shop call(
      {@required UniqueId id,
      @required ShopName name,
      @required ShopKeeper keeper,
      @required EmailAddress email,
      @required PhoneNumber phoneNumber,
      @required NumberOfWorkers numberOfWorkers,
      @required ImageUrl imageUrl,
      @required ShopCategory category,
      @required Address address,
      @required WeekList<bool> openingDays}) {
    return _Shop(
      id: id,
      name: name,
      keeper: keeper,
      email: email,
      phoneNumber: phoneNumber,
      numberOfWorkers: numberOfWorkers,
      imageUrl: imageUrl,
      category: category,
      address: address,
      openingDays: openingDays,
    );
  }
}

// ignore: unused_element
const $Shop = _$ShopTearOff();

mixin _$Shop {
  UniqueId get id;
  ShopName get name;
  ShopKeeper get keeper;
  EmailAddress get email;
  PhoneNumber get phoneNumber;
  NumberOfWorkers get numberOfWorkers;
  ImageUrl get imageUrl;
  ShopCategory get category;
  Address get address;
  WeekList<bool> get openingDays;

  $ShopCopyWith<Shop> get copyWith;
}

abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ShopName name,
      ShopKeeper keeper,
      EmailAddress email,
      PhoneNumber phoneNumber,
      NumberOfWorkers numberOfWorkers,
      ImageUrl imageUrl,
      ShopCategory category,
      Address address,
      WeekList<bool> openingDays});

  $AddressCopyWith<$Res> get address;
}

class _$ShopCopyWithImpl<$Res> implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  final Shop _value;
  // ignore: unused_field
  final $Res Function(Shop) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object keeper = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object numberOfWorkers = freezed,
    Object imageUrl = freezed,
    Object category = freezed,
    Object address = freezed,
    Object openingDays = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ShopName,
      keeper: keeper == freezed ? _value.keeper : keeper as ShopKeeper,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      numberOfWorkers: numberOfWorkers == freezed
          ? _value.numberOfWorkers
          : numberOfWorkers as NumberOfWorkers,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      category:
          category == freezed ? _value.category : category as ShopCategory,
      address: address == freezed ? _value.address : address as Address,
      openingDays: openingDays == freezed
          ? _value.openingDays
          : openingDays as WeekList<bool>,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

abstract class _$ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$ShopCopyWith(_Shop value, $Res Function(_Shop) then) =
      __$ShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ShopName name,
      ShopKeeper keeper,
      EmailAddress email,
      PhoneNumber phoneNumber,
      NumberOfWorkers numberOfWorkers,
      ImageUrl imageUrl,
      ShopCategory category,
      Address address,
      WeekList<bool> openingDays});

  @override
  $AddressCopyWith<$Res> get address;
}

class __$ShopCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res>
    implements _$ShopCopyWith<$Res> {
  __$ShopCopyWithImpl(_Shop _value, $Res Function(_Shop) _then)
      : super(_value, (v) => _then(v as _Shop));

  @override
  _Shop get _value => super._value as _Shop;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object keeper = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object numberOfWorkers = freezed,
    Object imageUrl = freezed,
    Object category = freezed,
    Object address = freezed,
    Object openingDays = freezed,
  }) {
    return _then(_Shop(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as ShopName,
      keeper: keeper == freezed ? _value.keeper : keeper as ShopKeeper,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      numberOfWorkers: numberOfWorkers == freezed
          ? _value.numberOfWorkers
          : numberOfWorkers as NumberOfWorkers,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      category:
          category == freezed ? _value.category : category as ShopCategory,
      address: address == freezed ? _value.address : address as Address,
      openingDays: openingDays == freezed
          ? _value.openingDays
          : openingDays as WeekList<bool>,
    ));
  }
}

class _$_Shop extends _Shop {
  const _$_Shop(
      {@required this.id,
      @required this.name,
      @required this.keeper,
      @required this.email,
      @required this.phoneNumber,
      @required this.numberOfWorkers,
      @required this.imageUrl,
      @required this.category,
      @required this.address,
      @required this.openingDays})
      : assert(id != null),
        assert(name != null),
        assert(keeper != null),
        assert(email != null),
        assert(phoneNumber != null),
        assert(numberOfWorkers != null),
        assert(imageUrl != null),
        assert(category != null),
        assert(address != null),
        assert(openingDays != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ShopName name;
  @override
  final ShopKeeper keeper;
  @override
  final EmailAddress email;
  @override
  final PhoneNumber phoneNumber;
  @override
  final NumberOfWorkers numberOfWorkers;
  @override
  final ImageUrl imageUrl;
  @override
  final ShopCategory category;
  @override
  final Address address;
  @override
  final WeekList<bool> openingDays;

  @override
  String toString() {
    return 'Shop(id: $id, name: $name, keeper: $keeper, email: $email, phoneNumber: $phoneNumber, numberOfWorkers: $numberOfWorkers, imageUrl: $imageUrl, category: $category, address: $address, openingDays: $openingDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Shop &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.keeper, keeper) ||
                const DeepCollectionEquality().equals(other.keeper, keeper)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.numberOfWorkers, numberOfWorkers) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfWorkers, numberOfWorkers)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.openingDays, openingDays) ||
                const DeepCollectionEquality()
                    .equals(other.openingDays, openingDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(keeper) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(numberOfWorkers) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(openingDays);

  @override
  _$ShopCopyWith<_Shop> get copyWith =>
      __$ShopCopyWithImpl<_Shop>(this, _$identity);
}

abstract class _Shop extends Shop {
  const _Shop._() : super._();
  const factory _Shop(
      {@required UniqueId id,
      @required ShopName name,
      @required ShopKeeper keeper,
      @required EmailAddress email,
      @required PhoneNumber phoneNumber,
      @required NumberOfWorkers numberOfWorkers,
      @required ImageUrl imageUrl,
      @required ShopCategory category,
      @required Address address,
      @required WeekList<bool> openingDays}) = _$_Shop;

  @override
  UniqueId get id;
  @override
  ShopName get name;
  @override
  ShopKeeper get keeper;
  @override
  EmailAddress get email;
  @override
  PhoneNumber get phoneNumber;
  @override
  NumberOfWorkers get numberOfWorkers;
  @override
  ImageUrl get imageUrl;
  @override
  ShopCategory get category;
  @override
  Address get address;
  @override
  WeekList<bool> get openingDays;
  @override
  _$ShopCopyWith<_Shop> get copyWith;
}
