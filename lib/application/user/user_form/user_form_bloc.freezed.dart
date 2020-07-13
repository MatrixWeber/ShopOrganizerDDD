// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserFormEventTearOff {
  const _$UserFormEventTearOff();

  Initialized initialized(Option<User> initialUserOption) {
    return Initialized(
      initialUserOption,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  FirstNameChanged firstNameChanged(String firstName) {
    return FirstNameChanged(
      firstName,
    );
  }

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  PhoneNumberChanged phoneNumberChanged(String phone) {
    return PhoneNumberChanged(
      phone,
    );
  }

  ImageUrlChanged imageUrlChanged(String imageUrl) {
    return ImageUrlChanged(
      imageUrl,
    );
  }

  StreetChanged streetChanged(String street) {
    return StreetChanged(
      street,
    );
  }

  HouseNumberChanged houseNumberChanged(String houseNum) {
    return HouseNumberChanged(
      houseNum,
    );
  }

  ZipChanged zipChanged(String zip) {
    return ZipChanged(
      zip,
    );
  }

  CityChanged cityChanged(String city) {
    return CityChanged(
      city,
    );
  }

  Saved saved() {
    return const Saved();
  }
}

// ignore: unused_element
const $UserFormEvent = _$UserFormEventTearOff();

mixin _$UserFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  });
}

abstract class $UserFormEventCopyWith<$Res> {
  factory $UserFormEventCopyWith(
          UserFormEvent value, $Res Function(UserFormEvent) then) =
      _$UserFormEventCopyWithImpl<$Res>;
}

class _$UserFormEventCopyWithImpl<$Res>
    implements $UserFormEventCopyWith<$Res> {
  _$UserFormEventCopyWithImpl(this._value, this._then);

  final UserFormEvent _value;
  // ignore: unused_field
  final $Res Function(UserFormEvent) _then;
}

abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<User> initialUserOption});
}

class _$InitializedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object initialUserOption = freezed,
  }) {
    return _then(Initialized(
      initialUserOption == freezed
          ? _value.initialUserOption
          : initialUserOption as Option<User>,
    ));
  }
}

class _$Initialized implements Initialized {
  const _$Initialized(this.initialUserOption)
      : assert(initialUserOption != null);

  @override
  final Option<User> initialUserOption;

  @override
  String toString() {
    return 'UserFormEvent.initialized(initialUserOption: $initialUserOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.initialUserOption, initialUserOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialUserOption, initialUserOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialUserOption);

  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return initialized(initialUserOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class Initialized implements UserFormEvent {
  const factory Initialized(Option<User> initialUserOption) = _$Initialized;

  Option<User> get initialUserOption;
  $InitializedCopyWith<Initialized> get copyWith;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$NameChangedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'UserFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class NameChanged implements UserFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(FirstNameChanged(
      firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'UserFormEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(Initialized value),
    @required Result nameChanged(NameChanged value),
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
    Result saved(Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements UserFormEvent {
  const factory FirstNameChanged(String firstName) = _$FirstNameChanged;

  String get firstName;
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
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

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'UserFormEvent.emailChanged(email: $email)';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class EmailChanged implements UserFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
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

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString() {
    return 'UserFormEvent.phoneNumberChanged(phone: $phone)';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return phoneNumberChanged(phone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class PhoneNumberChanged implements UserFormEvent {
  const factory PhoneNumberChanged(String phone) = _$PhoneNumberChanged;

  String get phone;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

abstract class $ImageUrlChangedCopyWith<$Res> {
  factory $ImageUrlChangedCopyWith(
          ImageUrlChanged value, $Res Function(ImageUrlChanged) then) =
      _$ImageUrlChangedCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

class _$ImageUrlChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
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

class _$ImageUrlChanged implements ImageUrlChanged {
  const _$ImageUrlChanged(this.imageUrl) : assert(imageUrl != null);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UserFormEvent.imageUrlChanged(imageUrl: $imageUrl)';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return imageUrlChanged(imageUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return imageUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class ImageUrlChanged implements UserFormEvent {
  const factory ImageUrlChanged(String imageUrl) = _$ImageUrlChanged;

  String get imageUrl;
  $ImageUrlChangedCopyWith<ImageUrlChanged> get copyWith;
}

abstract class $StreetChangedCopyWith<$Res> {
  factory $StreetChangedCopyWith(
          StreetChanged value, $Res Function(StreetChanged) then) =
      _$StreetChangedCopyWithImpl<$Res>;
  $Res call({String street});
}

class _$StreetChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
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

class _$StreetChanged implements StreetChanged {
  const _$StreetChanged(this.street) : assert(street != null);

  @override
  final String street;

  @override
  String toString() {
    return 'UserFormEvent.streetChanged(street: $street)';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return streetChanged(street);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return streetChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class StreetChanged implements UserFormEvent {
  const factory StreetChanged(String street) = _$StreetChanged;

  String get street;
  $StreetChangedCopyWith<StreetChanged> get copyWith;
}

abstract class $HouseNumberChangedCopyWith<$Res> {
  factory $HouseNumberChangedCopyWith(
          HouseNumberChanged value, $Res Function(HouseNumberChanged) then) =
      _$HouseNumberChangedCopyWithImpl<$Res>;
  $Res call({String houseNum});
}

class _$HouseNumberChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
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

class _$HouseNumberChanged implements HouseNumberChanged {
  const _$HouseNumberChanged(this.houseNum) : assert(houseNum != null);

  @override
  final String houseNum;

  @override
  String toString() {
    return 'UserFormEvent.houseNumberChanged(houseNum: $houseNum)';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return houseNumberChanged(houseNum);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return houseNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class HouseNumberChanged implements UserFormEvent {
  const factory HouseNumberChanged(String houseNum) = _$HouseNumberChanged;

  String get houseNum;
  $HouseNumberChangedCopyWith<HouseNumberChanged> get copyWith;
}

abstract class $ZipChangedCopyWith<$Res> {
  factory $ZipChangedCopyWith(
          ZipChanged value, $Res Function(ZipChanged) then) =
      _$ZipChangedCopyWithImpl<$Res>;
  $Res call({String zip});
}

class _$ZipChangedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
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

class _$ZipChanged implements ZipChanged {
  const _$ZipChanged(this.zip) : assert(zip != null);

  @override
  final String zip;

  @override
  String toString() {
    return 'UserFormEvent.zipChanged(zip: $zip)';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return zipChanged(zip);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return zipChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class ZipChanged implements UserFormEvent {
  const factory ZipChanged(String zip) = _$ZipChanged;

  String get zip;
  $ZipChangedCopyWith<ZipChanged> get copyWith;
}

abstract class $CityChangedCopyWith<$Res> {
  factory $CityChangedCopyWith(
          CityChanged value, $Res Function(CityChanged) then) =
      _$CityChangedCopyWithImpl<$Res>;
  $Res call({String city});
}

class _$CityChangedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
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

class _$CityChanged implements CityChanged {
  const _$CityChanged(this.city) : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'UserFormEvent.cityChanged(city: $city)';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return cityChanged(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class CityChanged implements UserFormEvent {
  const factory CityChanged(String city) = _$CityChanged;

  String get city;
  $CityChangedCopyWith<CityChanged> get copyWith;
}

abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

class _$SavedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
}

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'UserFormEvent.saved()';
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
    @required Result initialized(Option<User> initialUserOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result streetChanged(String street),
    @required Result houseNumberChanged(String houseNum),
    @required Result zipChanged(String zip),
    @required Result cityChanged(String city),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<User> initialUserOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result streetChanged(String street),
    Result houseNumberChanged(String houseNum),
    Result zipChanged(String zip),
    Result cityChanged(String city),
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
    @required Result firstNameChanged(FirstNameChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result imageUrlChanged(ImageUrlChanged value),
    @required Result streetChanged(StreetChanged value),
    @required Result houseNumberChanged(HouseNumberChanged value),
    @required Result zipChanged(ZipChanged value),
    @required Result cityChanged(CityChanged value),
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(streetChanged != null);
    assert(houseNumberChanged != null);
    assert(zipChanged != null);
    assert(cityChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(Initialized value),
    Result nameChanged(NameChanged value),
    Result firstNameChanged(FirstNameChanged value),
    Result emailChanged(EmailChanged value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result imageUrlChanged(ImageUrlChanged value),
    Result streetChanged(StreetChanged value),
    Result houseNumberChanged(HouseNumberChanged value),
    Result zipChanged(ZipChanged value),
    Result cityChanged(CityChanged value),
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

abstract class Saved implements UserFormEvent {
  const factory Saved() = _$Saved;
}

class _$UserFormStateTearOff {
  const _$UserFormStateTearOff();

  _UserFormState call(
      {@required User user,
      @required bool showErrorMessage,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption}) {
    return _UserFormState(
      user: user,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $UserFormState = _$UserFormStateTearOff();

mixin _$UserFormState {
  User get user;
  bool get showErrorMessage;
  bool get isEditing;
  bool get isSaving;
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption;

  $UserFormStateCopyWith<UserFormState> get copyWith;
}

abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

class _$UserFormStateCopyWithImpl<$Res>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  final UserFormState _value;
  // ignore: unused_field
  final $Res Function(UserFormState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<UserFailure, Unit>>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$UserFormStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$UserFormStateCopyWith(
          _UserFormState value, $Res Function(_UserFormState) then) =
      __$UserFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

class __$UserFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements _$UserFormStateCopyWith<$Res> {
  __$UserFormStateCopyWithImpl(
      _UserFormState _value, $Res Function(_UserFormState) _then)
      : super(_value, (v) => _then(v as _UserFormState));

  @override
  _UserFormState get _value => super._value as _UserFormState;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserFormState(
      user: user == freezed ? _value.user : user as User,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<UserFailure, Unit>>,
    ));
  }
}

class _$_UserFormState implements _UserFormState {
  _$_UserFormState(
      {@required this.user,
      @required this.showErrorMessage,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(user != null),
        assert(showErrorMessage != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final User user;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserFormState(user: $user, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserFormState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
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
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$UserFormStateCopyWith<_UserFormState> get copyWith =>
      __$UserFormStateCopyWithImpl<_UserFormState>(this, _$identity);
}

abstract class _UserFormState implements UserFormState {
  factory _UserFormState(
          {@required
              User user,
          @required
              bool showErrorMessage,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_UserFormState;

  @override
  User get user;
  @override
  bool get showErrorMessage;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<UserFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$UserFormStateCopyWith<_UserFormState> get copyWith;
}