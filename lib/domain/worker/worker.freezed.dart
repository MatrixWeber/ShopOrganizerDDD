// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'worker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkerTearOff {
  const _$WorkerTearOff();

// ignore: unused_element
  _Worker call(
      {@required UniqueId id,
      @required UniqueId parentId,
      @required Name name,
      @required FirstName firstName,
      @required EmailAddress email,
      @required PhoneNumber phoneNumber,
      @required ImageUrl imageUrl}) {
    return _Worker(
      id: id,
      parentId: parentId,
      name: name,
      firstName: firstName,
      email: email,
      phoneNumber: phoneNumber,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Worker = _$WorkerTearOff();

/// @nodoc
mixin _$Worker {
  UniqueId get id;
  UniqueId get parentId;
  Name get name;
  FirstName get firstName;
  EmailAddress get email;
  PhoneNumber get phoneNumber;
  ImageUrl get imageUrl;

  @JsonKey(ignore: true)
  $WorkerCopyWith<Worker> get copyWith;
}

/// @nodoc
abstract class $WorkerCopyWith<$Res> {
  factory $WorkerCopyWith(Worker value, $Res Function(Worker) then) =
      _$WorkerCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId parentId,
      Name name,
      FirstName firstName,
      EmailAddress email,
      PhoneNumber phoneNumber,
      ImageUrl imageUrl});
}

/// @nodoc
class _$WorkerCopyWithImpl<$Res> implements $WorkerCopyWith<$Res> {
  _$WorkerCopyWithImpl(this._value, this._then);

  final Worker _value;
  // ignore: unused_field
  final $Res Function(Worker) _then;

  @override
  $Res call({
    Object id = freezed,
    Object parentId = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      parentId: parentId == freezed ? _value.parentId : parentId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      firstName:
          firstName == freezed ? _value.firstName : firstName as FirstName,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
    ));
  }
}

/// @nodoc
abstract class _$WorkerCopyWith<$Res> implements $WorkerCopyWith<$Res> {
  factory _$WorkerCopyWith(_Worker value, $Res Function(_Worker) then) =
      __$WorkerCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId parentId,
      Name name,
      FirstName firstName,
      EmailAddress email,
      PhoneNumber phoneNumber,
      ImageUrl imageUrl});
}

/// @nodoc
class __$WorkerCopyWithImpl<$Res> extends _$WorkerCopyWithImpl<$Res>
    implements _$WorkerCopyWith<$Res> {
  __$WorkerCopyWithImpl(_Worker _value, $Res Function(_Worker) _then)
      : super(_value, (v) => _then(v as _Worker));

  @override
  _Worker get _value => super._value as _Worker;

  @override
  $Res call({
    Object id = freezed,
    Object parentId = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_Worker(
      id: id == freezed ? _value.id : id as UniqueId,
      parentId: parentId == freezed ? _value.parentId : parentId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      firstName:
          firstName == freezed ? _value.firstName : firstName as FirstName,
      email: email == freezed ? _value.email : email as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
    ));
  }
}

/// @nodoc
class _$_Worker extends _Worker {
  const _$_Worker(
      {@required this.id,
      @required this.parentId,
      @required this.name,
      @required this.firstName,
      @required this.email,
      @required this.phoneNumber,
      @required this.imageUrl})
      : assert(id != null),
        assert(parentId != null),
        assert(name != null),
        assert(firstName != null),
        assert(email != null),
        assert(phoneNumber != null),
        assert(imageUrl != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId parentId;
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
  String toString() {
    return 'Worker(id: $id, parentId: $parentId, name: $name, firstName: $firstName, email: $email, phoneNumber: $phoneNumber, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Worker &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
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
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$WorkerCopyWith<_Worker> get copyWith =>
      __$WorkerCopyWithImpl<_Worker>(this, _$identity);
}

abstract class _Worker extends Worker {
  const _Worker._() : super._();
  const factory _Worker(
      {@required UniqueId id,
      @required UniqueId parentId,
      @required Name name,
      @required FirstName firstName,
      @required EmailAddress email,
      @required PhoneNumber phoneNumber,
      @required ImageUrl imageUrl}) = _$_Worker;

  @override
  UniqueId get id;
  @override
  UniqueId get parentId;
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
  @JsonKey(ignore: true)
  _$WorkerCopyWith<_Worker> get copyWith;
}
