// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required Name name,
      @required FirstName firstName,
      @required EmailAddress email,
      @required PhoneNumber phoneNumber,
      @required ImageUrl imageUrl,
      @required Address address}) {
    return _User(
      id: id,
      name: name,
      firstName: firstName,
      email: email,
      phoneNumber: phoneNumber,
      imageUrl: imageUrl,
      address: address,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id;
  Name get name;
  FirstName get firstName;
  EmailAddress get email;
  PhoneNumber get phoneNumber;
  ImageUrl get imageUrl;
  Address get address;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Name name,
      FirstName firstName,
      EmailAddress email,
      PhoneNumber phoneNumber,
      ImageUrl imageUrl,
      Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
    Object address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      firstName:
          firstName == freezed ? _value.firstName : firstName as FirstName,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      address: address == freezed ? _value.address : address as Address,
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

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Name name,
      FirstName firstName,
      EmailAddress email,
      PhoneNumber phoneNumber,
      ImageUrl imageUrl,
      Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
    Object address = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      firstName:
          firstName == freezed ? _value.firstName : firstName as FirstName,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
      address: address == freezed ? _value.address : address as Address,
    ));
  }
}

/// @nodoc
class _$_User extends _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.firstName,
      @required this.email,
      @required this.phoneNumber,
      @required this.imageUrl,
      @required this.address})
      : assert(id != null),
        assert(name != null),
        assert(firstName != null),
        assert(email != null),
        assert(phoneNumber != null),
        assert(imageUrl != null),
        assert(address != null),
        super._();

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final FirstName firstName;
  @override
  final EmailAddress email;
  @override
  final PhoneNumber phoneNumber;
  @override
  final ImageUrl imageUrl;
  @override
  final Address address;

  @override
  String toString() {
    return 'User(id: $id, name: $name, firstName: $firstName, email: $email, phoneNumber: $phoneNumber, imageUrl: $imageUrl, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(address);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@required UniqueId id,
      @required Name name,
      @required FirstName firstName,
      @required EmailAddress email,
      @required PhoneNumber phoneNumber,
      @required ImageUrl imageUrl,
      @required Address address}) = _$_User;

  @override
  UniqueId get id;
  @override
  Name get name;
  @override
  FirstName get firstName;
  @override
  EmailAddress get email;
  @override
  PhoneNumber get phoneNumber;
  @override
  ImageUrl get imageUrl;
  @override
  Address get address;
  @override
  _$UserCopyWith<_User> get copyWith;
}
