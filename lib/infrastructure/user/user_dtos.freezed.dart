// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String firstName,
      @required String email,
      @required String phone,
      @required String imageUrl,
      @required String city,
      @required String zip,
      @required String houseNum,
      @required String street,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) {
    return _UserDto(
      id: id,
      name: name,
      firstName: firstName,
      email: email,
      phone: phone,
      imageUrl: imageUrl,
      city: city,
      zip: zip,
      houseNum: houseNum,
      street: street,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $UserDto = _$UserDtoTearOff();

mixin _$UserDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get firstName;
  String get email;
  String get phone;
  String get imageUrl;
  String get city;
  String get zip;
  String get houseNum;
  String get street;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String firstName,
      String email,
      String phone,
      String imageUrl,
      String city,
      String zip,
      String houseNum,
      String street,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object imageUrl = freezed,
    Object city = freezed,
    Object zip = freezed,
    Object houseNum = freezed,
    Object street = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      city: city == freezed ? _value.city : city as String,
      zip: zip == freezed ? _value.zip : zip as String,
      houseNum: houseNum == freezed ? _value.houseNum : houseNum as String,
      street: street == freezed ? _value.street : street as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String firstName,
      String email,
      String phone,
      String imageUrl,
      String city,
      String zip,
      String houseNum,
      String street,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object imageUrl = freezed,
    Object city = freezed,
    Object zip = freezed,
    Object houseNum = freezed,
    Object street = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      city: city == freezed ? _value.city : city as String,
      zip: zip == freezed ? _value.zip : zip as String,
      houseNum: houseNum == freezed ? _value.houseNum : houseNum as String,
      street: street == freezed ? _value.street : street as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_UserDto extends _UserDto with DiagnosticableTreeMixin {
  const _$_UserDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.firstName,
      @required this.email,
      @required this.phone,
      @required this.imageUrl,
      @required this.city,
      @required this.zip,
      @required this.houseNum,
      @required this.street,
      @required @ServerTimeStampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(firstName != null),
        assert(email != null),
        assert(phone != null),
        assert(imageUrl != null),
        assert(city != null),
        assert(zip != null),
        assert(houseNum != null),
        assert(street != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String firstName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String imageUrl;
  @override
  final String city;
  @override
  final String zip;
  @override
  final String houseNum;
  @override
  final String street;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDto(id: $id, name: $name, firstName: $firstName, email: $email, phone: $phone, imageUrl: $imageUrl, city: $city, zip: $zip, houseNum: $houseNum, street: $street, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('zip', zip))
      ..add(DiagnosticsProperty('houseNum', houseNum))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.houseNum, houseNum) ||
                const DeepCollectionEquality()
                    .equals(other.houseNum, houseNum)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(houseNum) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const _UserDto._() : super._();
  const factory _UserDto(
          {@JsonKey(ignore: true) String id,
          @required String name,
          @required String firstName,
          @required String email,
          @required String phone,
          @required String imageUrl,
          @required String city,
          @required String zip,
          @required String houseNum,
          @required String street,
          @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) =
      _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get firstName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get imageUrl;
  @override
  String get city;
  @override
  String get zip;
  @override
  String get houseNum;
  @override
  String get street;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith;
}
