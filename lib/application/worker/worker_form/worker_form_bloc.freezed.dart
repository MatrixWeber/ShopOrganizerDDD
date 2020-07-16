// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'worker_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkerFormEventTearOff {
  const _$WorkerFormEventTearOff();

  Initialized initialized(Option<Worker> initialWorkerOption) {
    return Initialized(
      initialWorkerOption,
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

  Saved saved() {
    return const Saved();
  }
}

// ignore: unused_element
const $WorkerFormEvent = _$WorkerFormEventTearOff();

mixin _$WorkerFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
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
    Result saved(Saved value),
    @required Result orElse(),
  });
}

abstract class $WorkerFormEventCopyWith<$Res> {
  factory $WorkerFormEventCopyWith(
          WorkerFormEvent value, $Res Function(WorkerFormEvent) then) =
      _$WorkerFormEventCopyWithImpl<$Res>;
}

class _$WorkerFormEventCopyWithImpl<$Res>
    implements $WorkerFormEventCopyWith<$Res> {
  _$WorkerFormEventCopyWithImpl(this._value, this._then);

  final WorkerFormEvent _value;
  // ignore: unused_field
  final $Res Function(WorkerFormEvent) _then;
}

abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Worker> initialWorkerOption});
}

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

  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(saved != null);
    return initialized(initialWorkerOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialWorkerOption);
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
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
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

abstract class Initialized implements WorkerFormEvent {
  const factory Initialized(Option<Worker> initialWorkerOption) = _$Initialized;

  Option<Worker> get initialWorkerOption;
  $InitializedCopyWith<Initialized> get copyWith;
}

abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

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

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
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
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
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

abstract class NameChanged implements WorkerFormEvent {
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

  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(saved != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
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
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
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

abstract class FirstNameChanged implements WorkerFormEvent {
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

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(saved != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
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
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
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

abstract class EmailChanged implements WorkerFormEvent {
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

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(saved != null);
    return phoneNumberChanged(phone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
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
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
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

abstract class PhoneNumberChanged implements WorkerFormEvent {
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

  @override
  $ImageUrlChangedCopyWith<ImageUrlChanged> get copyWith =>
      _$ImageUrlChangedCopyWithImpl<ImageUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(saved != null);
    return imageUrlChanged(imageUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
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
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
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

abstract class ImageUrlChanged implements WorkerFormEvent {
  const factory ImageUrlChanged(String imageUrl) = _$ImageUrlChanged;

  String get imageUrl;
  $ImageUrlChangedCopyWith<ImageUrlChanged> get copyWith;
}

abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

class _$SavedCopyWithImpl<$Res> extends _$WorkerFormEventCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initialized(Option<Worker> initialWorkerOption),
    @required Result nameChanged(String name),
    @required Result firstNameChanged(String firstName),
    @required Result emailChanged(String email),
    @required Result phoneNumberChanged(String phone),
    @required Result imageUrlChanged(String imageUrl),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Worker> initialWorkerOption),
    Result nameChanged(String name),
    Result firstNameChanged(String firstName),
    Result emailChanged(String email),
    Result phoneNumberChanged(String phone),
    Result imageUrlChanged(String imageUrl),
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
    @required Result saved(Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(firstNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(imageUrlChanged != null);
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

abstract class Saved implements WorkerFormEvent {
  const factory Saved() = _$Saved;
}

class _$WorkerFormStateTearOff {
  const _$WorkerFormStateTearOff();

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

// ignore: unused_element
const $WorkerFormState = _$WorkerFormStateTearOff();

mixin _$WorkerFormState {
  Worker get worker;
  bool get showErrorMessage;
  bool get isEditing;
  bool get isSaving;
  Option<Either<WorkerFailure, Unit>> get saveFailureOrSuccessOption;

  $WorkerFormStateCopyWith<WorkerFormState> get copyWith;
}

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
  _$WorkerFormStateCopyWith<_WorkerFormState> get copyWith;
}