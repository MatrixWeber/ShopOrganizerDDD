// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'shop_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShopFormEventTearOff {
  const _$ShopFormEventTearOff();

// ignore: unused_element
  Initialized initialized(Option<Shop> initialShopOption) {
    return Initialized(
      initialShopOption,
    );
  }

// ignore: unused_element
  NameChanged nameChanged(String shopName) {
    return NameChanged(
      shopName,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  KeeperChanged keeperChanged(String keeper) {
    return KeeperChanged(
      keeper,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phone) {
    return PhoneNumberChanged(
      phone,
    );
  }

// ignore: unused_element
  NumberOfWorkersChanged numberOfWorkersChanged(num numOfWorkers) {
    return NumberOfWorkersChanged(
      numOfWorkers,
    );
  }

// ignore: unused_element
  ImageUrlChanged imageUrlChanged(String imageUrl) {
    return ImageUrlChanged(
      imageUrl,
    );
  }

// ignore: unused_element
  CategoryChanged categoryChanged(String category) {
    return CategoryChanged(
      category,
    );
  }

// ignore: unused_element
  StreetChanged streetChanged(String street) {
    return StreetChanged(
      street,
    );
  }

// ignore: unused_element
  HouseNumberChanged houseNumberChanged(String houseNum) {
    return HouseNumberChanged(
      houseNum,
    );
  }

// ignore: unused_element
  ZipChanged zipChanged(String zip) {
    return ZipChanged(
      zip,
    );
  }

// ignore: unused_element
  CityChanged cityChanged(String city) {
    return CityChanged(
      city,
    );
  }

// ignore: unused_element
  OpeningDaysChanged openingDaysChanged(KtList<bool> openingDays) {
    return OpeningDaysChanged(
      openingDays,
    );
  }

// ignore: unused_element
  Saved saved() {
    return const Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $ShopFormEvent = _$ShopFormEventTearOff();

/// @nodoc
mixin _$ShopFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ShopFormEventCopyWith<$Res> {
  factory $ShopFormEventCopyWith(
          ShopFormEvent value, $Res Function(ShopFormEvent) then) =
      _$ShopFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopFormEventCopyWithImpl<$Res>
    implements $ShopFormEventCopyWith<$Res> {
  _$ShopFormEventCopyWithImpl(this._value, this._then);

  final ShopFormEvent _value;
  // ignore: unused_field
  final $Res Function(ShopFormEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Shop> initialShopOption});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object initialShopOption = freezed,
  }) {
    return _then(Initialized(
      initialShopOption == freezed
          ? _value.initialShopOption
          : initialShopOption as Option<Shop>,
    ));
  }
}

/// @nodoc
class _$Initialized implements Initialized {
  const _$Initialized(this.initialShopOption)
      : assert(initialShopOption != null);

  @override
  final Option<Shop> initialShopOption;

  @override
  String toString() {
    return 'ShopFormEvent.initialized(initialShopOption: $initialShopOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.initialShopOption, initialShopOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialShopOption, initialShopOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialShopOption);

  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return initialized(initialShopOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialShopOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements ShopFormEvent {
  const factory Initialized(Option<Shop> initialShopOption) = _$Initialized;

  Option<Shop> get initialShopOption;
  $InitializedCopyWith<Initialized> get copyWith;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String shopName});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object shopName = freezed,
  }) {
    return _then(NameChanged(
      shopName == freezed ? _value.shopName : shopName as String,
    ));
  }
}

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.shopName) : assert(shopName != null);

  @override
  final String shopName;

  @override
  String toString() {
    return 'ShopFormEvent.nameChanged(shopName: $shopName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.shopName, shopName) ||
                const DeepCollectionEquality()
                    .equals(other.shopName, shopName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shopName);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return nameChanged(shopName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(shopName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ShopFormEvent {
  const factory NameChanged(String shopName) = _$NameChanged;

  String get shopName;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ShopFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ShopFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $KeeperChangedCopyWith<$Res> {
  factory $KeeperChangedCopyWith(
          KeeperChanged value, $Res Function(KeeperChanged) then) =
      _$KeeperChangedCopyWithImpl<$Res>;
  $Res call({String keeper});
}

/// @nodoc
class _$KeeperChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $KeeperChangedCopyWith<$Res> {
  _$KeeperChangedCopyWithImpl(
      KeeperChanged _value, $Res Function(KeeperChanged) _then)
      : super(_value, (v) => _then(v as KeeperChanged));

  @override
  KeeperChanged get _value => super._value as KeeperChanged;

  @override
  $Res call({
    Object keeper = freezed,
  }) {
    return _then(KeeperChanged(
      keeper == freezed ? _value.keeper : keeper as String,
    ));
  }
}

/// @nodoc
class _$KeeperChanged implements KeeperChanged {
  const _$KeeperChanged(this.keeper) : assert(keeper != null);

  @override
  final String keeper;

  @override
  String toString() {
    return 'ShopFormEvent.keeperChanged(keeper: $keeper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is KeeperChanged &&
            (identical(other.keeper, keeper) ||
                const DeepCollectionEquality().equals(other.keeper, keeper)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(keeper);

  @override
  $KeeperChangedCopyWith<KeeperChanged> get copyWith =>
      _$KeeperChangedCopyWithImpl<KeeperChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return keeperChanged(keeper);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keeperChanged != null) {
      return keeperChanged(keeper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return keeperChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keeperChanged != null) {
      return keeperChanged(this);
    }
    return orElse();
  }
}

abstract class KeeperChanged implements ShopFormEvent {
  const factory KeeperChanged(String keeper) = _$KeeperChanged;

  String get keeper;
  $KeeperChangedCopyWith<KeeperChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString() {
    return 'ShopFormEvent.phoneNumberChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return phoneNumberChanged(phone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements ShopFormEvent {
  const factory PhoneNumberChanged(String phone) = _$PhoneNumberChanged;

  String get phone;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $NumberOfWorkersChangedCopyWith<$Res> {
  factory $NumberOfWorkersChangedCopyWith(NumberOfWorkersChanged value,
          $Res Function(NumberOfWorkersChanged) then) =
      _$NumberOfWorkersChangedCopyWithImpl<$Res>;
  $Res call({num numOfWorkers});
}

/// @nodoc
class _$NumberOfWorkersChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $NumberOfWorkersChangedCopyWith<$Res> {
  _$NumberOfWorkersChangedCopyWithImpl(NumberOfWorkersChanged _value,
      $Res Function(NumberOfWorkersChanged) _then)
      : super(_value, (v) => _then(v as NumberOfWorkersChanged));

  @override
  NumberOfWorkersChanged get _value => super._value as NumberOfWorkersChanged;

  @override
  $Res call({
    Object numOfWorkers = freezed,
  }) {
    return _then(NumberOfWorkersChanged(
      numOfWorkers == freezed ? _value.numOfWorkers : numOfWorkers as num,
    ));
  }
}

/// @nodoc
class _$NumberOfWorkersChanged implements NumberOfWorkersChanged {
  const _$NumberOfWorkersChanged(this.numOfWorkers)
      : assert(numOfWorkers != null);

  @override
  final num numOfWorkers;

  @override
  String toString() {
    return 'ShopFormEvent.numberOfWorkersChanged(numOfWorkers: $numOfWorkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberOfWorkersChanged &&
            (identical(other.numOfWorkers, numOfWorkers) ||
                const DeepCollectionEquality()
                    .equals(other.numOfWorkers, numOfWorkers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(numOfWorkers);

  @override
  $NumberOfWorkersChangedCopyWith<NumberOfWorkersChanged> get copyWith =>
      _$NumberOfWorkersChangedCopyWithImpl<NumberOfWorkersChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return numberOfWorkersChanged(numOfWorkers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberOfWorkersChanged != null) {
      return numberOfWorkersChanged(numOfWorkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return numberOfWorkersChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberOfWorkersChanged != null) {
      return numberOfWorkersChanged(this);
    }
    return orElse();
  }
}

abstract class NumberOfWorkersChanged implements ShopFormEvent {
  const factory NumberOfWorkersChanged(num numOfWorkers) =
      _$NumberOfWorkersChanged;

  num get numOfWorkers;
  $NumberOfWorkersChangedCopyWith<NumberOfWorkersChanged> get copyWith;
}

/// @nodoc
abstract class $ImageUrlChangedCopyWith<$Res> {
  factory $ImageUrlChangedCopyWith(
          ImageUrlChanged value, $Res Function(ImageUrlChanged) then) =
      _$ImageUrlChangedCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class _$ImageUrlChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $ImageUrlChangedCopyWith<$Res> {
  _$ImageUrlChangedCopyWithImpl(
      ImageUrlChanged _value, $Res Function(ImageUrlChanged) _then)
      : super(_value, (v) => _then(v as ImageUrlChanged));

  @override
  ImageUrlChanged get _value => super._value as ImageUrlChanged;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(ImageUrlChanged(
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
class _$ImageUrlChanged implements ImageUrlChanged {
  const _$ImageUrlChanged(this.imageUrl) : assert(imageUrl != null);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ShopFormEvent.imageUrlChanged(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageUrlChanged &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @override
  $ImageUrlChangedCopyWith<ImageUrlChanged> get copyWith =>
      _$ImageUrlChangedCopyWithImpl<ImageUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return imageUrlChanged(imageUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageUrlChanged != null) {
      return imageUrlChanged(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return imageUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageUrlChanged != null) {
      return imageUrlChanged(this);
    }
    return orElse();
  }
}

abstract class ImageUrlChanged implements ShopFormEvent {
  const factory ImageUrlChanged(String imageUrl) = _$ImageUrlChanged;

  String get imageUrl;
  $ImageUrlChangedCopyWith<ImageUrlChanged> get copyWith;
}

/// @nodoc
abstract class $CategoryChangedCopyWith<$Res> {
  factory $CategoryChangedCopyWith(
          CategoryChanged value, $Res Function(CategoryChanged) then) =
      _$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class _$CategoryChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $CategoryChangedCopyWith<$Res> {
  _$CategoryChangedCopyWithImpl(
      CategoryChanged _value, $Res Function(CategoryChanged) _then)
      : super(_value, (v) => _then(v as CategoryChanged));

  @override
  CategoryChanged get _value => super._value as CategoryChanged;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(CategoryChanged(
      category == freezed ? _value.category : category as String,
    ));
  }
}

/// @nodoc
class _$CategoryChanged implements CategoryChanged {
  const _$CategoryChanged(this.category) : assert(category != null);

  @override
  final String category;

  @override
  String toString() {
    return 'ShopFormEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryChanged &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  $CategoryChangedCopyWith<CategoryChanged> get copyWith =>
      _$CategoryChangedCopyWithImpl<CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements ShopFormEvent {
  const factory CategoryChanged(String category) = _$CategoryChanged;

  String get category;
  $CategoryChangedCopyWith<CategoryChanged> get copyWith;
}

/// @nodoc
abstract class $StreetChangedCopyWith<$Res> {
  factory $StreetChangedCopyWith(
          StreetChanged value, $Res Function(StreetChanged) then) =
      _$StreetChangedCopyWithImpl<$Res>;
  $Res call({String street});
}

/// @nodoc
class _$StreetChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $StreetChangedCopyWith<$Res> {
  _$StreetChangedCopyWithImpl(
      StreetChanged _value, $Res Function(StreetChanged) _then)
      : super(_value, (v) => _then(v as StreetChanged));

  @override
  StreetChanged get _value => super._value as StreetChanged;

  @override
  $Res call({
    Object street = freezed,
  }) {
    return _then(StreetChanged(
      street == freezed ? _value.street : street as String,
    ));
  }
}

/// @nodoc
class _$StreetChanged implements StreetChanged {
  const _$StreetChanged(this.street) : assert(street != null);

  @override
  final String street;

  @override
  String toString() {
    return 'ShopFormEvent.streetChanged(street: $street)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StreetChanged &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(street);

  @override
  $StreetChangedCopyWith<StreetChanged> get copyWith =>
      _$StreetChangedCopyWithImpl<StreetChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return streetChanged(street);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (streetChanged != null) {
      return streetChanged(street);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return streetChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (streetChanged != null) {
      return streetChanged(this);
    }
    return orElse();
  }
}

abstract class StreetChanged implements ShopFormEvent {
  const factory StreetChanged(String street) = _$StreetChanged;

  String get street;
  $StreetChangedCopyWith<StreetChanged> get copyWith;
}

/// @nodoc
abstract class $HouseNumberChangedCopyWith<$Res> {
  factory $HouseNumberChangedCopyWith(
          HouseNumberChanged value, $Res Function(HouseNumberChanged) then) =
      _$HouseNumberChangedCopyWithImpl<$Res>;
  $Res call({String houseNum});
}

/// @nodoc
class _$HouseNumberChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $HouseNumberChangedCopyWith<$Res> {
  _$HouseNumberChangedCopyWithImpl(
      HouseNumberChanged _value, $Res Function(HouseNumberChanged) _then)
      : super(_value, (v) => _then(v as HouseNumberChanged));

  @override
  HouseNumberChanged get _value => super._value as HouseNumberChanged;

  @override
  $Res call({
    Object houseNum = freezed,
  }) {
    return _then(HouseNumberChanged(
      houseNum == freezed ? _value.houseNum : houseNum as String,
    ));
  }
}

/// @nodoc
class _$HouseNumberChanged implements HouseNumberChanged {
  const _$HouseNumberChanged(this.houseNum) : assert(houseNum != null);

  @override
  final String houseNum;

  @override
  String toString() {
    return 'ShopFormEvent.houseNumberChanged(houseNum: $houseNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HouseNumberChanged &&
            (identical(other.houseNum, houseNum) ||
                const DeepCollectionEquality()
                    .equals(other.houseNum, houseNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(houseNum);

  @override
  $HouseNumberChangedCopyWith<HouseNumberChanged> get copyWith =>
      _$HouseNumberChangedCopyWithImpl<HouseNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return houseNumberChanged(houseNum);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (houseNumberChanged != null) {
      return houseNumberChanged(houseNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return houseNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (houseNumberChanged != null) {
      return houseNumberChanged(this);
    }
    return orElse();
  }
}

abstract class HouseNumberChanged implements ShopFormEvent {
  const factory HouseNumberChanged(String houseNum) = _$HouseNumberChanged;

  String get houseNum;
  $HouseNumberChangedCopyWith<HouseNumberChanged> get copyWith;
}

/// @nodoc
abstract class $ZipChangedCopyWith<$Res> {
  factory $ZipChangedCopyWith(
          ZipChanged value, $Res Function(ZipChanged) then) =
      _$ZipChangedCopyWithImpl<$Res>;
  $Res call({String zip});
}

/// @nodoc
class _$ZipChangedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements $ZipChangedCopyWith<$Res> {
  _$ZipChangedCopyWithImpl(ZipChanged _value, $Res Function(ZipChanged) _then)
      : super(_value, (v) => _then(v as ZipChanged));

  @override
  ZipChanged get _value => super._value as ZipChanged;

  @override
  $Res call({
    Object zip = freezed,
  }) {
    return _then(ZipChanged(
      zip == freezed ? _value.zip : zip as String,
    ));
  }
}

/// @nodoc
class _$ZipChanged implements ZipChanged {
  const _$ZipChanged(this.zip) : assert(zip != null);

  @override
  final String zip;

  @override
  String toString() {
    return 'ShopFormEvent.zipChanged(zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ZipChanged &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(zip);

  @override
  $ZipChangedCopyWith<ZipChanged> get copyWith =>
      _$ZipChangedCopyWithImpl<ZipChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return zipChanged(zip);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (zipChanged != null) {
      return zipChanged(zip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return zipChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (zipChanged != null) {
      return zipChanged(this);
    }
    return orElse();
  }
}

abstract class ZipChanged implements ShopFormEvent {
  const factory ZipChanged(String zip) = _$ZipChanged;

  String get zip;
  $ZipChangedCopyWith<ZipChanged> get copyWith;
}

/// @nodoc
abstract class $CityChangedCopyWith<$Res> {
  factory $CityChangedCopyWith(
          CityChanged value, $Res Function(CityChanged) then) =
      _$CityChangedCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class _$CityChangedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements $CityChangedCopyWith<$Res> {
  _$CityChangedCopyWithImpl(
      CityChanged _value, $Res Function(CityChanged) _then)
      : super(_value, (v) => _then(v as CityChanged));

  @override
  CityChanged get _value => super._value as CityChanged;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(CityChanged(
      city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$CityChanged implements CityChanged {
  const _$CityChanged(this.city) : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'ShopFormEvent.cityChanged(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityChanged &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  $CityChangedCopyWith<CityChanged> get copyWith =>
      _$CityChangedCopyWithImpl<CityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return cityChanged(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(this);
    }
    return orElse();
  }
}

abstract class CityChanged implements ShopFormEvent {
  const factory CityChanged(String city) = _$CityChanged;

  String get city;
  $CityChangedCopyWith<CityChanged> get copyWith;
}

/// @nodoc
abstract class $OpeningDaysChangedCopyWith<$Res> {
  factory $OpeningDaysChangedCopyWith(
          OpeningDaysChanged value, $Res Function(OpeningDaysChanged) then) =
      _$OpeningDaysChangedCopyWithImpl<$Res>;
  $Res call({KtList<bool> openingDays});
}

/// @nodoc
class _$OpeningDaysChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements $OpeningDaysChangedCopyWith<$Res> {
  _$OpeningDaysChangedCopyWithImpl(
      OpeningDaysChanged _value, $Res Function(OpeningDaysChanged) _then)
      : super(_value, (v) => _then(v as OpeningDaysChanged));

  @override
  OpeningDaysChanged get _value => super._value as OpeningDaysChanged;

  @override
  $Res call({
    Object openingDays = freezed,
  }) {
    return _then(OpeningDaysChanged(
      openingDays == freezed ? _value.openingDays : openingDays as KtList<bool>,
    ));
  }
}

/// @nodoc
class _$OpeningDaysChanged implements OpeningDaysChanged {
  const _$OpeningDaysChanged(this.openingDays) : assert(openingDays != null);

  @override
  final KtList<bool> openingDays;

  @override
  String toString() {
    return 'ShopFormEvent.openingDaysChanged(openingDays: $openingDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpeningDaysChanged &&
            (identical(other.openingDays, openingDays) ||
                const DeepCollectionEquality()
                    .equals(other.openingDays, openingDays)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(openingDays);

  @override
  $OpeningDaysChangedCopyWith<OpeningDaysChanged> get copyWith =>
      _$OpeningDaysChangedCopyWithImpl<OpeningDaysChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return openingDaysChanged(openingDays);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openingDaysChanged != null) {
      return openingDaysChanged(openingDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return openingDaysChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openingDaysChanged != null) {
      return openingDaysChanged(this);
    }
    return orElse();
  }
}

abstract class OpeningDaysChanged implements ShopFormEvent {
  const factory OpeningDaysChanged(KtList<bool> openingDays) =
      _$OpeningDaysChanged;

  KtList<bool> get openingDays;
  $OpeningDaysChangedCopyWith<OpeningDaysChanged> get copyWith;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
}

/// @nodoc
class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'ShopFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Shop> initialShopOption),
    @required Result nameChanged(String shopName),
    @required Result emailChanged(String email),
    @required Result keeperChanged(String keeper),
    @required Result phoneNumberChanged(String phone),
    @required Result numberOfWorkersChanged(num numOfWorkers),
    @required Result imageUrlChanged(String imageUrl),
    @required Result categoryChanged(String category),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result openingDaysChanged(KtList<bool> openingDays),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Shop> initialShopOption),
    Result nameChanged(String shopName),
    Result emailChanged(String email),
    Result keeperChanged(String keeper),
    Result phoneNumberChanged(String phone),
    Result numberOfWorkersChanged(num numOfWorkers),
    Result imageUrlChanged(String imageUrl),
    Result categoryChanged(String category),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result openingDaysChanged(KtList<bool> openingDays),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result keeperChanged(KeeperChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result openingDaysChanged(OpeningDaysChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(emailChanged != null);
    assert(keeperChanged != null);
    assert(phoneNumberChanged != null);
    assert(numberOfWorkersChanged != null);
    assert(imageUrlChanged != null);
    assert(categoryChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(openingDaysChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result emailChanged(EmailChanged value),
    Result keeperChanged(KeeperChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result numberOfWorkersChanged(NumberOfWorkersChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result categoryChanged(CategoryChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result openingDaysChanged(OpeningDaysChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements ShopFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
class _$ShopFormStateTearOff {
  const _$ShopFormStateTearOff();

// ignore: unused_element
  _ShopFormState call(
      {@required Shop shop,
      @required bool showErrorMessage,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ShopFormState(
      shop: shop,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShopFormState = _$ShopFormStateTearOff();

/// @nodoc
mixin _$ShopFormState {
  Shop get shop;
  bool get showErrorMessage;
  bool get isEditing;
  bool get isSaving;
  Option<Either<ShopFailure, Unit>> get saveFailureOrSuccessOption;

  $ShopFormStateCopyWith<ShopFormState> get copyWith;
}

/// @nodoc
abstract class $ShopFormStateCopyWith<$Res> {
  factory $ShopFormStateCopyWith(
          ShopFormState value, $Res Function(ShopFormState) then) =
      _$ShopFormStateCopyWithImpl<$Res>;
  $Res call(
      {Shop shop,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class _$ShopFormStateCopyWithImpl<$Res>
    implements $ShopFormStateCopyWith<$Res> {
  _$ShopFormStateCopyWithImpl(this._value, this._then);

  final ShopFormState _value;
  // ignore: unused_field
  final $Res Function(ShopFormState) _then;

  @override
  $Res call({
    Object shop = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed ? _value.shop : shop as Shop,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ShopFailure, Unit>>,
    ));
  }

  @override
  $ShopCopyWith<$Res> get shop {
    if (_value.shop == null) {
      return null;
    }
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class _$ShopFormStateCopyWith<$Res>
    implements $ShopFormStateCopyWith<$Res> {
  factory _$ShopFormStateCopyWith(
          _ShopFormState value, $Res Function(_ShopFormState) then) =
      __$ShopFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Shop shop,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$ShopFormStateCopyWithImpl<$Res>
    extends _$ShopFormStateCopyWithImpl<$Res>
    implements _$ShopFormStateCopyWith<$Res> {
  __$ShopFormStateCopyWithImpl(
      _ShopFormState _value, $Res Function(_ShopFormState) _then)
      : super(_value, (v) => _then(v as _ShopFormState));

  @override
  _ShopFormState get _value => super._value as _ShopFormState;

  @override
  $Res call({
    Object shop = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ShopFormState(
      shop: shop == freezed ? _value.shop : shop as Shop,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ShopFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ShopFormState implements _ShopFormState {
  _$_ShopFormState(
      {@required this.shop,
      @required this.showErrorMessage,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(shop != null),
        assert(showErrorMessage != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Shop shop;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ShopFormState(shop: $shop, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopFormState &&
            (identical(other.shop, shop) ||
                const DeepCollectionEquality().equals(other.shop, shop)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shop) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$ShopFormStateCopyWith<_ShopFormState> get copyWith =>
      __$ShopFormStateCopyWithImpl<_ShopFormState>(this, _$identity);
}

abstract class _ShopFormState implements ShopFormState {
  factory _ShopFormState(
          {@required
              Shop shop,
          @required
              bool showErrorMessage,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_ShopFormState;

  @override
  Shop get shop;
  @override
  bool get showErrorMessage;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ShopFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$ShopFormStateCopyWith<_ShopFormState> get copyWith;
}
