// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) {
  return _TaskDto.fromJson(json);
}

/// @nodoc
class _$TaskDtoTearOff {
  const _$TaskDtoTearOff();

// ignore: unused_element
  _TaskDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required Duration duration,
      @required num price,
      @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) {
    return _TaskDto(
      id: id,
      name: name,
      duration: duration,
      price: price,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  TaskDto fromJson(Map<String, Object> json) {
    return TaskDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TaskDto = _$TaskDtoTearOff();

/// @nodoc
mixin _$TaskDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  Duration get duration;
  num get price; //? placeholder --> last updated time on Server
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $TaskDtoCopyWith<TaskDto> get copyWith;
}

/// @nodoc
abstract class $TaskDtoCopyWith<$Res> {
  factory $TaskDtoCopyWith(TaskDto value, $Res Function(TaskDto) then) =
      _$TaskDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      Duration duration,
      num price,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$TaskDtoCopyWithImpl<$Res> implements $TaskDtoCopyWith<$Res> {
  _$TaskDtoCopyWithImpl(this._value, this._then);

  final TaskDto _value;
  // ignore: unused_field
  final $Res Function(TaskDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object duration = freezed,
    Object price = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      duration: duration == freezed ? _value.duration : duration as Duration,
      price: price == freezed ? _value.price : price as num,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$TaskDtoCopyWith<$Res> implements $TaskDtoCopyWith<$Res> {
  factory _$TaskDtoCopyWith(_TaskDto value, $Res Function(_TaskDto) then) =
      __$TaskDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      Duration duration,
      num price,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$TaskDtoCopyWithImpl<$Res> extends _$TaskDtoCopyWithImpl<$Res>
    implements _$TaskDtoCopyWith<$Res> {
  __$TaskDtoCopyWithImpl(_TaskDto _value, $Res Function(_TaskDto) _then)
      : super(_value, (v) => _then(v as _TaskDto));

  @override
  _TaskDto get _value => super._value as _TaskDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object duration = freezed,
    Object price = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_TaskDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      duration: duration == freezed ? _value.duration : duration as Duration,
      price: price == freezed ? _value.price : price as num,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TaskDto extends _TaskDto with DiagnosticableTreeMixin {
  const _$_TaskDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.duration,
      @required this.price,
      @required @ServerTimeStampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(duration != null),
        assert(price != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_TaskDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final Duration duration;
  @override
  final num price;
  @override //? placeholder --> last updated time on Server
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskDto(id: $id, name: $name, duration: $duration, price: $price, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$TaskDtoCopyWith<_TaskDto> get copyWith =>
      __$TaskDtoCopyWithImpl<_TaskDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskDtoToJson(this);
  }
}

abstract class _TaskDto extends TaskDto {
  const _TaskDto._() : super._();
  const factory _TaskDto(
          {@JsonKey(ignore: true) String id,
          @required String name,
          @required Duration duration,
          @required num price,
          @required @ServerTimeStampConverter() FieldValue serverTimeStamp}) =
      _$_TaskDto;

  factory _TaskDto.fromJson(Map<String, dynamic> json) = _$_TaskDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  Duration get duration;
  @override
  num get price;
  @override //? placeholder --> last updated time on Server
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$TaskDtoCopyWith<_TaskDto> get copyWith;
}
