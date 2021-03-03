// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'worker_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkerFormEventTearOff {
  const _$WorkerFormEventTearOff();

// ignore: unused_element
  Initialized initialized(Option<Worker> initialWorkerOption) {
    return Initialized(
      initialWorkerOption,
    );
  }

// ignore: unused_element
  Reset reset(String parentShopId) {
    return Reset(
      parentShopId,
    );
  }

// ignore: unused_element
  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

// ignore: unused_element
  FirstNameChanged firstNameChanged(String firstName) {
    return FirstNameChanged(
      firstName,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phone) {
    return PhoneNumberChanged(
      phone,
    );
  }

// ignore: unused_element
  ImageUrlChanged imageUrlChanged(String imageUrl) {
    return ImageUrlChanged(
      imageUrl,
    );
  }

// ignore: unused_element
  ParentIdChanged parentIdChanged(UniqueId parentId) {
    return ParentIdChanged(
      parentId,
    );
  }

// ignore: unused_element
  Saved saved() {
    return const Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $WorkerFormEvent = _$WorkerFormEventTearOff();

/// @nodoc
mixin _$WorkerFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WorkerFormEventCopyWith<$Res> {
  factory $WorkerFormEventCopyWith(
          WorkerFormEvent value, $Res Function(WorkerFormEvent) then) =
      _$WorkerFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkerFormEventCopyWithImpl<$Res>
    implements $WorkerFormEventCopyWith<$Res> {
  _$WorkerFormEventCopyWithImpl(this._value, this._then);

  final WorkerFormEvent _value;
  // ignore: unused_field
  final $Res Function(WorkerFormEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Worker> initialWorkerOption});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$WorkerFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object initialWorkerOption = freezed,
  }) {
    return _then(Initialized(
      initialWorkerOption == freezed
          ? _value.initialWorkerOption
          : initialWorkerOption as Option<Worker>,
    ));
  }
}

/// @nodoc
class _$Initialized implements Initialized {
  const _$Initialized(this.initialWorkerOption)
      : assert(initialWorkerOption != null);

  @override
  final Option<Worker> initialWorkerOption;

  @override
  String toString() {
    return 'WorkerFormEvent.initialized(initialWorkerOption: $initialWorkerOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.initialWorkerOption, initialWorkerOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialWorkerOption, initialWorkerOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialWorkerOption);

  @JsonKey(ignore: true)
  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return initialized(initialWorkerOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialWorkerOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements WorkerFormEvent {
  const factory Initialized(Option<Worker> initialWorkerOption) = _$Initialized;

  Option<Worker> get initialWorkerOption;
  @JsonKey(ignore: true)
  $InitializedCopyWith<Initialized> get copyWith;
}

/// @nodoc
abstract class $ResetCopyWith<$Res> {
  factory $ResetCopyWith(Reset value, $Res Function(Reset) then) =
      _$ResetCopyWithImpl<$Res>;
  $Res call({String parentShopId});
}

/// @nodoc
class _$ResetCopyWithImpl<$Res> extends _$WorkerFormEventCopyWithImpl<$Res>
    implements $ResetCopyWith<$Res> {
  _$ResetCopyWithImpl(Reset _value, $Res Function(Reset) _then)
      : super(_value, (v) => _then(v as Reset));

  @override
  Reset get _value => super._value as Reset;

  @override
  $Res call({
    Object parentShopId = freezed,
  }) {
    return _then(Reset(
      parentShopId == freezed ? _value.parentShopId : parentShopId as String,
    ));
  }
}

/// @nodoc
class _$Reset implements Reset {
  const _$Reset(this.parentShopId) : assert(parentShopId != null);

  @override
  final String parentShopId;

  @override
  String toString() {
    return 'WorkerFormEvent.reset(parentShopId: $parentShopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Reset &&
            (identical(other.parentShopId, parentShopId) ||
                const DeepCollectionEquality()
                    .equals(other.parentShopId, parentShopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parentShopId);

  @JsonKey(ignore: true)
  @override
  $ResetCopyWith<Reset> get copyWith =>
      _$ResetCopyWithImpl<Reset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return reset(parentShopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(parentShopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements WorkerFormEvent {
  const factory Reset(String parentShopId) = _$Reset;

  String get parentShopId;
  @JsonKey(ignore: true)
  $ResetCopyWith<Reset> get copyWith;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$WorkerFormEventCopyWithImpl<$Res>
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

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'WorkerFormEvent.nameChanged(name: $name)';
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

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements WorkerFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$WorkerFormEventCopyWithImpl<$Res>
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

/// @nodoc
class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'WorkerFormEvent.firstNameChanged(firstName: $firstName)';
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

  @JsonKey(ignore: true)
  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements WorkerFormEvent {
  const factory FirstNameChanged(String firstName) = _$FirstNameChanged;

  String get firstName;
  @JsonKey(ignore: true)
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$WorkerFormEventCopyWithImpl<$Res>
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
    return 'WorkerFormEvent.emailChanged(email: $email)';
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

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements WorkerFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
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
    extends _$WorkerFormEventCopyWithImpl<$Res>
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
    return 'WorkerFormEvent.phoneNumberChanged(phone: $phone)';
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

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return phoneNumberChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements WorkerFormEvent {
  const factory PhoneNumberChanged(String phone) = _$PhoneNumberChanged;

  String get phone;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
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
    extends _$WorkerFormEventCopyWithImpl<$Res>
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
    return 'WorkerFormEvent.imageUrlChanged(imageUrl: $imageUrl)';
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

  @JsonKey(ignore: true)
  @override
  $ImageUrlChangedCopyWith<ImageUrlChanged> get copyWith =>
      _$ImageUrlChangedCopyWithImpl<ImageUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return imageUrlChanged(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUrlChanged != null) {
      return imageUrlChanged(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return imageUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageUrlChanged != null) {
      return imageUrlChanged(this);
    }
    return orElse();
  }
}

abstract class ImageUrlChanged implements WorkerFormEvent {
  const factory ImageUrlChanged(String imageUrl) = _$ImageUrlChanged;

  String get imageUrl;
  @JsonKey(ignore: true)
  $ImageUrlChangedCopyWith<ImageUrlChanged> get copyWith;
}

/// @nodoc
abstract class $ParentIdChangedCopyWith<$Res> {
  factory $ParentIdChangedCopyWith(
          ParentIdChanged value, $Res Function(ParentIdChanged) then) =
      _$ParentIdChangedCopyWithImpl<$Res>;
  $Res call({UniqueId parentId});
}

/// @nodoc
class _$ParentIdChangedCopyWithImpl<$Res>
    extends _$WorkerFormEventCopyWithImpl<$Res>
    implements $ParentIdChangedCopyWith<$Res> {
  _$ParentIdChangedCopyWithImpl(
      ParentIdChanged _value, $Res Function(ParentIdChanged) _then)
      : super(_value, (v) => _then(v as ParentIdChanged));

  @override
  ParentIdChanged get _value => super._value as ParentIdChanged;

  @override
  $Res call({
    Object parentId = freezed,
  }) {
    return _then(ParentIdChanged(
      parentId == freezed ? _value.parentId : parentId as UniqueId,
    ));
  }
}

/// @nodoc
class _$ParentIdChanged implements ParentIdChanged {
  const _$ParentIdChanged(this.parentId) : assert(parentId != null);

  @override
  final UniqueId parentId;

  @override
  String toString() {
    return 'WorkerFormEvent.parentIdChanged(parentId: $parentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParentIdChanged &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parentId);

  @JsonKey(ignore: true)
  @override
  $ParentIdChangedCopyWith<ParentIdChanged> get copyWith =>
      _$ParentIdChangedCopyWithImpl<ParentIdChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return parentIdChanged(parentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (parentIdChanged != null) {
      return parentIdChanged(parentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return parentIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (parentIdChanged != null) {
      return parentIdChanged(this);
    }
    return orElse();
  }
}

abstract class ParentIdChanged implements WorkerFormEvent {
  const factory ParentIdChanged(UniqueId parentId) = _$ParentIdChanged;

  UniqueId get parentId;
  @JsonKey(ignore: true)
  $ParentIdChangedCopyWith<ParentIdChanged> get copyWith;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$WorkerFormEventCopyWithImpl<$Res>
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
    return 'WorkerFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Worker> initialWorkerOption),
    @required TResult reset(String parentShopId),
    @required TResult nameChanged(String name),
    @required TResult firstNameChanged(String firstName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phone),
    @required TResult imageUrlChanged(String imageUrl),
    @required TResult parentIdChanged(UniqueId parentId),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Worker> initialWorkerOption),
    TResult reset(String parentShopId),
    TResult nameChanged(String name),
    TResult firstNameChanged(String firstName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phone),
    TResult imageUrlChanged(String imageUrl),
    TResult parentIdChanged(UniqueId parentId),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult reset(Reset value),
    @required TResult nameChanged(NameChanged value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult imageUrlChanged(ImageUrlChanged value),
    @required TResult parentIdChanged(ParentIdChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(reset != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(parentIdChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult reset(Reset value),
    TResult nameChanged(NameChanged value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult imageUrlChanged(ImageUrlChanged value),
    TResult parentIdChanged(ParentIdChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements WorkerFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
class _$WorkerFormStateTearOff {
  const _$WorkerFormStateTearOff();

// ignore: unused_element
  _WorkerFormState call(
      {@required
          Worker worker,
      @required
          bool showErrorMessage,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<WorkerFailure, Unit>> saveFailureOrSuccessOption}) {
    return _WorkerFormState(
      worker: worker,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkerFormState = _$WorkerFormStateTearOff();

/// @nodoc
mixin _$WorkerFormState {
  Worker get worker;
  bool get showErrorMessage;
  bool get isEditing;
  bool get isSaving;
  Option<Either<WorkerFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $WorkerFormStateCopyWith<WorkerFormState> get copyWith;
}

/// @nodoc
abstract class $WorkerFormStateCopyWith<$Res> {
  factory $WorkerFormStateCopyWith(
          WorkerFormState value, $Res Function(WorkerFormState) then) =
      _$WorkerFormStateCopyWithImpl<$Res>;
  $Res call(
      {Worker worker,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<WorkerFailure, Unit>> saveFailureOrSuccessOption});

  $WorkerCopyWith<$Res> get worker;
}

/// @nodoc
class _$WorkerFormStateCopyWithImpl<$Res>
    implements $WorkerFormStateCopyWith<$Res> {
  _$WorkerFormStateCopyWithImpl(this._value, this._then);

  final WorkerFormState _value;
  // ignore: unused_field
  final $Res Function(WorkerFormState) _then;

  @override
  $Res call({
    Object worker = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      worker: worker == freezed ? _value.worker : worker as Worker,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<WorkerFailure, Unit>>,
    ));
  }

  @override
  $WorkerCopyWith<$Res> get worker {
    if (_value.worker == null) {
      return null;
    }
    return $WorkerCopyWith<$Res>(_value.worker, (value) {
      return _then(_value.copyWith(worker: value));
    });
  }
}

/// @nodoc
abstract class _$WorkerFormStateCopyWith<$Res>
    implements $WorkerFormStateCopyWith<$Res> {
  factory _$WorkerFormStateCopyWith(
          _WorkerFormState value, $Res Function(_WorkerFormState) then) =
      __$WorkerFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Worker worker,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<WorkerFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $WorkerCopyWith<$Res> get worker;
}

/// @nodoc
class __$WorkerFormStateCopyWithImpl<$Res>
    extends _$WorkerFormStateCopyWithImpl<$Res>
    implements _$WorkerFormStateCopyWith<$Res> {
  __$WorkerFormStateCopyWithImpl(
      _WorkerFormState _value, $Res Function(_WorkerFormState) _then)
      : super(_value, (v) => _then(v as _WorkerFormState));

  @override
  _WorkerFormState get _value => super._value as _WorkerFormState;

  @override
  $Res call({
    Object worker = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_WorkerFormState(
      worker: worker == freezed ? _value.worker : worker as Worker,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<WorkerFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_WorkerFormState implements _WorkerFormState {
  _$_WorkerFormState(
      {@required this.worker,
      @required this.showErrorMessage,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(worker != null),
        assert(showErrorMessage != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Worker worker;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<WorkerFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'WorkerFormState(worker: $worker, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkerFormState &&
            (identical(other.worker, worker) ||
                const DeepCollectionEquality().equals(other.worker, worker)) &&
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
      const DeepCollectionEquality().hash(worker) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$WorkerFormStateCopyWith<_WorkerFormState> get copyWith =>
      __$WorkerFormStateCopyWithImpl<_WorkerFormState>(this, _$identity);
}

abstract class _WorkerFormState implements WorkerFormState {
  factory _WorkerFormState(
          {@required
              Worker worker,
          @required
              bool showErrorMessage,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<WorkerFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_WorkerFormState;

  @override
  Worker get worker;
  @override
  bool get showErrorMessage;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<WorkerFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$WorkerFormStateCopyWith<_WorkerFormState> get copyWith;
}
