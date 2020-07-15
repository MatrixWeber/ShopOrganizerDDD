// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'shop_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ShopDto _$ShopDtoFromJson(Map<String, dynamic> json) {
  return _ShopDto.fromJson(json);
}

class _$ShopDtoTearOff {
  const _$ShopDtoTearOff();

  _ShopDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String keeper,
      @required String email,
      @required String phone,
      @required String imageUrl,
      @required String category,
      @required String city,
      @required String zip,
      @required String houseNum,
      @required String street,
      @required num numberOfWorkers,
      @required List<bool> openingDays,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) {
    return _ShopDto(
      id: id,
      name: name,
      keeper: keeper,
      email: email,
      phone: phone,
      imageUrl: imageUrl,
      category: category,
      city: city,
      zip: zip,
      houseNum: houseNum,
      street: street,
      numberOfWorkers: numberOfWorkers,
      openingDays: openingDays,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $ShopDto = _$ShopDtoTearOff();

mixin _$ShopDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get keeper;
  String get email;
  String get phone;
  String get imageUrl;
  String get category;
  String get city;
  String get zip;
  String get houseNum;
  String get street;
  num get numberOfWorkers;
  List<bool> get openingDays;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ShopDtoCopyWith<ShopDto> get copyWith;
}

abstract class $ShopDtoCopyWith<$Res> {
  factory $ShopDtoCopyWith(ShopDto value, $Res Function(ShopDto) then) =
      _$ShopDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String keeper,
      String email,
      String phone,
      String imageUrl,
      String category,
      String city,
      String zip,
      String houseNum,
      String street,
      num numberOfWorkers,
      List<bool> openingDays,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

class _$ShopDtoCopyWithImpl<$Res> implements $ShopDtoCopyWith<$Res> {
  _$ShopDtoCopyWithImpl(this._value, this._then);

  final ShopDto _value;
  // ignore: unused_field
  final $Res Function(ShopDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object keeper = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object imageUrl = freezed,
    Object category = freezed,
    Object city = freezed,
    Object zip = freezed,
    Object houseNum = freezed,
    Object street = freezed,
    Object numberOfWorkers = freezed,
    Object openingDays = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      keeper: keeper == freezed ? _value.keeper : keeper as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      category: category == freezed ? _value.category : category as String,
      city: city == freezed ? _value.city : city as String,
      zip: zip == freezed ? _value.zip : zip as String,
      houseNum: houseNum == freezed ? _value.houseNum : houseNum as String,
      street: street == freezed ? _value.street : street as String,
      numberOfWorkers: numberOfWorkers == freezed
          ? _value.numberOfWorkers
          : numberOfWorkers as num,
      openingDays: openingDays == freezed
          ? _value.openingDays
          : openingDays as List<bool>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$ShopDtoCopyWith<$Res> implements $ShopDtoCopyWith<$Res> {
  factory _$ShopDtoCopyWith(_ShopDto value, $Res Function(_ShopDto) then) =
      __$ShopDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String keeper,
      String email,
      String phone,
      String imageUrl,
      String category,
      String city,
      String zip,
      String houseNum,
      String street,
      num numberOfWorkers,
      List<bool> openingDays,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

class __$ShopDtoCopyWithImpl<$Res> extends _$ShopDtoCopyWithImpl<$Res>
    implements _$ShopDtoCopyWith<$Res> {
  __$ShopDtoCopyWithImpl(_ShopDto _value, $Res Function(_ShopDto) _then)
      : super(_value, (v) => _then(v as _ShopDto));

  @override
  _ShopDto get _value => super._value as _ShopDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object keeper = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object imageUrl = freezed,
    Object category = freezed,
    Object city = freezed,
    Object zip = freezed,
    Object houseNum = freezed,
    Object street = freezed,
    Object numberOfWorkers = freezed,
    Object openingDays = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ShopDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      keeper: keeper == freezed ? _value.keeper : keeper as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      category: category == freezed ? _value.category : category as String,
      city: city == freezed ? _value.city : city as String,
      zip: zip == freezed ? _value.zip : zip as String,
      houseNum: houseNum == freezed ? _value.houseNum : houseNum as String,
      street: street == freezed ? _value.street : street as String,
      numberOfWorkers: numberOfWorkers == freezed
          ? _value.numberOfWorkers
          : numberOfWorkers as num,
      openingDays: openingDays == freezed
          ? _value.openingDays
          : openingDays as List<bool>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_ShopDto extends _ShopDto with DiagnosticableTreeMixin {
  const _$_ShopDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.keeper,
      @required this.email,
      @required this.phone,
      @required this.imageUrl,
      @required this.category,
      @required this.city,
      @required this.zip,
      @required this.houseNum,
      @required this.street,
      @required this.numberOfWorkers,
      @required this.openingDays,
      @required @ServerTimeStampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(keeper != null),
        assert(email != null),
        assert(phone != null),
        assert(imageUrl != null),
        assert(category != null),
        assert(city != null),
        assert(zip != null),
        assert(houseNum != null),
        assert(street != null),
        assert(numberOfWorkers != null),
        assert(openingDays != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_ShopDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String keeper;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String imageUrl;
  @override
  final String category;
  @override
  final String city;
  @override
  final String zip;
  @override
  final String houseNum;
  @override
  final String street;
  @override
  final num numberOfWorkers;
  @override
  final List<bool> openingDays;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopDto(id: $id, name: $name, keeper: $keeper, email: $email, phone: $phone, imageUrl: $imageUrl, category: $category, city: $city, zip: $zip, houseNum: $houseNum, street: $street, numberOfWorkers: $numberOfWorkers, openingDays: $openingDays, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('keeper', keeper))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('zip', zip))
      ..add(DiagnosticsProperty('houseNum', houseNum))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('numberOfWorkers', numberOfWorkers))
      ..add(DiagnosticsProperty('openingDays', openingDays))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.keeper, keeper) ||
                const DeepCollectionEquality().equals(other.keeper, keeper)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.houseNum, houseNum) ||
                const DeepCollectionEquality()
                    .equals(other.houseNum, houseNum)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.numberOfWorkers, numberOfWorkers) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfWorkers, numberOfWorkers)) &&
            (identical(other.openingDays, openingDays) ||
                const DeepCollectionEquality()
                    .equals(other.openingDays, openingDays)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(keeper) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(houseNum) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(numberOfWorkers) ^
      const DeepCollectionEquality().hash(openingDays) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$ShopDtoCopyWith<_ShopDto> get copyWith =>
      __$ShopDtoCopyWithImpl<_ShopDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopDtoToJson(this);
  }
}

abstract class _ShopDto extends ShopDto {
  const _ShopDto._() : super._();
  const factory _ShopDto(
          {@JsonKey(ignore: true) String id,
          @required String name,
          @required String keeper,
          @required String email,
          @required String phone,
          @required String imageUrl,
          @required String category,
          @required String city,
          @required String zip,
          @required String houseNum,
          @required String street,
          @required num numberOfWorkers,
          @required List<bool> openingDays,
          @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) =
      _$_ShopDto;

  factory _ShopDto.fromJson(Map<String, dynamic> json) = _$_ShopDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get keeper;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get imageUrl;
  @override
  String get category;
  @override
  String get city;
  @override
  String get zip;
  @override
  String get houseNum;
  @override
  String get street;
  @override
  num get numberOfWorkers;
  @override
  List<bool> get openingDays;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ShopDtoCopyWith<_ShopDto> get copyWith;
}

WorkingHoursDto _$WorkingHoursDtoFromJson(Map<String, dynamic> json) {
  return _WorkingHoursDto.fromJson(json);
}

class _$WorkingHoursDtoTearOff {
  const _$WorkingHoursDtoTearOff();

  _WorkingHoursDto call({@required num workingHours}) {
    return _WorkingHoursDto(
      workingHours: workingHours,
    );
  }
}

// ignore: unused_element
const $WorkingHoursDto = _$WorkingHoursDtoTearOff();

mixin _$WorkingHoursDto {
  num get workingHours;

  Map<String, dynamic> toJson();
  $WorkingHoursDtoCopyWith<WorkingHoursDto> get copyWith;
}

abstract class $WorkingHoursDtoCopyWith<$Res> {
  factory $WorkingHoursDtoCopyWith(
          WorkingHoursDto value, $Res Function(WorkingHoursDto) then) =
      _$WorkingHoursDtoCopyWithImpl<$Res>;
  $Res call({num workingHours});
}

class _$WorkingHoursDtoCopyWithImpl<$Res>
    implements $WorkingHoursDtoCopyWith<$Res> {
  _$WorkingHoursDtoCopyWithImpl(this._value, this._then);

  final WorkingHoursDto _value;
  // ignore: unused_field
  final $Res Function(WorkingHoursDto) _then;

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

abstract class _$WorkingHoursDtoCopyWith<$Res>
    implements $WorkingHoursDtoCopyWith<$Res> {
  factory _$WorkingHoursDtoCopyWith(
          _WorkingHoursDto value, $Res Function(_WorkingHoursDto) then) =
      __$WorkingHoursDtoCopyWithImpl<$Res>;
  @override
  $Res call({num workingHours});
}

class __$WorkingHoursDtoCopyWithImpl<$Res>
    extends _$WorkingHoursDtoCopyWithImpl<$Res>
    implements _$WorkingHoursDtoCopyWith<$Res> {
  __$WorkingHoursDtoCopyWithImpl(
      _WorkingHoursDto _value, $Res Function(_WorkingHoursDto) _then)
      : super(_value, (v) => _then(v as _WorkingHoursDto));

  @override
  _WorkingHoursDto get _value => super._value as _WorkingHoursDto;

  @override
  $Res call({
    Object workingHours = freezed,
  }) {
    return _then(_WorkingHoursDto(
      workingHours:
          workingHours == freezed ? _value.workingHours : workingHours as num,
    ));
  }
}

@JsonSerializable()
class _$_WorkingHoursDto extends _WorkingHoursDto with DiagnosticableTreeMixin {
  const _$_WorkingHoursDto({@required this.workingHours})
      : assert(workingHours != null),
        super._();

  factory _$_WorkingHoursDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkingHoursDtoFromJson(json);

  @override
  final num workingHours;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkingHoursDto(workingHours: $workingHours)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkingHoursDto'))
      ..add(DiagnosticsProperty('workingHours', workingHours));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkingHoursDto &&
            (identical(other.workingHours, workingHours) ||
                const DeepCollectionEquality()
                    .equals(other.workingHours, workingHours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workingHours);

  @override
  _$WorkingHoursDtoCopyWith<_WorkingHoursDto> get copyWith =>
      __$WorkingHoursDtoCopyWithImpl<_WorkingHoursDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkingHoursDtoToJson(this);
  }
}

abstract class _WorkingHoursDto extends WorkingHoursDto {
  const _WorkingHoursDto._() : super._();
  const factory _WorkingHoursDto({@required num workingHours}) =
      _$_WorkingHoursDto;

  factory _WorkingHoursDto.fromJson(Map<String, dynamic> json) =
      _$_WorkingHoursDto.fromJson;

  @override
  num get workingHours;
  @override
  _$WorkingHoursDtoCopyWith<_WorkingHoursDto> get copyWith;
}
