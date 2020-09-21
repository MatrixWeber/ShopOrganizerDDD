// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'worker_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WorkerDto _$WorkerDtoFromJson(Map<String, dynamic> json) {
  return _WorkerDto.fromJson(json);
}

/// @nodoc
class _$WorkerDtoTearOff {
  const _$WorkerDtoTearOff();

// ignore: unused_element
  _WorkerDto call(
      {@JsonKey(ignore: true) String id,
      @required String parentId,
      @required String name,
      @required String firstName,
      @required String email,
      @required String phone,
      @required String imageUrl,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) {
    return _WorkerDto(
      id: id,
      parentId: parentId,
      name: name,
      firstName: firstName,
      email: email,
      phone: phone,
      imageUrl: imageUrl,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  WorkerDto fromJson(Map<String, Object> json) {
    return WorkerDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WorkerDto = _$WorkerDtoTearOff();

/// @nodoc
mixin _$WorkerDto {
  @JsonKey(ignore: true)
  String get id;
  String get parentId;
  String get name;
  String get firstName;
  String get email;
  String get phone;
  String get imageUrl; //? placeholder --> last updated time on Server
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $WorkerDtoCopyWith<WorkerDto> get copyWith;
}

/// @nodoc
abstract class $WorkerDtoCopyWith<$Res> {
  factory $WorkerDtoCopyWith(WorkerDto value, $Res Function(WorkerDto) then) =
      _$WorkerDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String parentId,
      String name,
      String firstName,
      String email,
      String phone,
      String imageUrl,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$WorkerDtoCopyWithImpl<$Res> implements $WorkerDtoCopyWith<$Res> {
  _$WorkerDtoCopyWithImpl(this._value, this._then);

  final WorkerDto _value;
  // ignore: unused_field
  final $Res Function(WorkerDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object parentId = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object imageUrl = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$WorkerDtoCopyWith<$Res> implements $WorkerDtoCopyWith<$Res> {
  factory _$WorkerDtoCopyWith(
          _WorkerDto value, $Res Function(_WorkerDto) then) =
      __$WorkerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String parentId,
      String name,
      String firstName,
      String email,
      String phone,
      String imageUrl,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$WorkerDtoCopyWithImpl<$Res> extends _$WorkerDtoCopyWithImpl<$Res>
    implements _$WorkerDtoCopyWith<$Res> {
  __$WorkerDtoCopyWithImpl(_WorkerDto _value, $Res Function(_WorkerDto) _then)
      : super(_value, (v) => _then(v as _WorkerDto));

  @override
  _WorkerDto get _value => super._value as _WorkerDto;

  @override
  $Res call({
    Object id = freezed,
    Object parentId = freezed,
    Object name = freezed,
    Object firstName = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object imageUrl = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_WorkerDto(
      id: id == freezed ? _value.id : id as String,
      parentId: parentId == freezed ? _value.parentId : parentId as String,
      name: name == freezed ? _value.name : name as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WorkerDto extends _WorkerDto with DiagnosticableTreeMixin {
  const _$_WorkerDto(
      {@JsonKey(ignore: true) this.id,
      @required this.parentId,
      @required this.name,
      @required this.firstName,
      @required this.email,
      @required this.phone,
      @required this.imageUrl,
      @required @ServerTimeStampConverter() this.serverTimeStamp})
      : assert(parentId != null),
        assert(name != null),
        assert(firstName != null),
        assert(email != null),
        assert(phone != null),
        assert(imageUrl != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_WorkerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkerDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String parentId;
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
  @override //? placeholder --> last updated time on Server
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkerDto(id: $id, parentId: $parentId, name: $name, firstName: $firstName, email: $email, phone: $phone, imageUrl: $imageUrl, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkerDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('parentId', parentId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkerDto &&
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
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$WorkerDtoCopyWith<_WorkerDto> get copyWith =>
      __$WorkerDtoCopyWithImpl<_WorkerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkerDtoToJson(this);
  }
}

abstract class _WorkerDto extends WorkerDto {
  const _WorkerDto._() : super._();
  const factory _WorkerDto(
          {@JsonKey(ignore: true) String id,
          @required String parentId,
          @required String name,
          @required String firstName,
          @required String email,
          @required String phone,
          @required String imageUrl,
          @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) =
      _$_WorkerDto;

  factory _WorkerDto.fromJson(Map<String, dynamic> json) =
      _$_WorkerDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get parentId;
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
  @override //? placeholder --> last updated time on Server
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$WorkerDtoCopyWith<_WorkerDto> get copyWith;
}
