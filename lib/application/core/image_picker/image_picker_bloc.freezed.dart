// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImagePickerEventTearOff {
  const _$ImagePickerEventTearOff();

// ignore: unused_element
  _SelectImageFromGalleryStarted selectImageFromGalleryStarted() {
    return const _SelectImageFromGalleryStarted();
  }

// ignore: unused_element
  _GetImageFromCameraStarted getImageFromCameraStarted() {
    return const _GetImageFromCameraStarted();
  }

// ignore: unused_element
  _Initialized initialized() {
    return const _Initialized();
  }
}

/// @nodoc
// ignore: unused_element
const $ImagePickerEvent = _$ImagePickerEventTearOff();

/// @nodoc
mixin _$ImagePickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selectImageFromGalleryStarted(),
    @required TResult getImageFromCameraStarted(),
    @required TResult initialized(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selectImageFromGalleryStarted(),
    TResult getImageFromCameraStarted(),
    TResult initialized(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult selectImageFromGalleryStarted(
            _SelectImageFromGalleryStarted value),
    @required
        TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    @required TResult initialized(_Initialized value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selectImageFromGalleryStarted(_SelectImageFromGalleryStarted value),
    TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImagePickerEventCopyWith<$Res> {
  factory $ImagePickerEventCopyWith(
          ImagePickerEvent value, $Res Function(ImagePickerEvent) then) =
      _$ImagePickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImagePickerEventCopyWithImpl<$Res>
    implements $ImagePickerEventCopyWith<$Res> {
  _$ImagePickerEventCopyWithImpl(this._value, this._then);

  final ImagePickerEvent _value;
  // ignore: unused_field
  final $Res Function(ImagePickerEvent) _then;
}

/// @nodoc
abstract class _$SelectImageFromGalleryStartedCopyWith<$Res> {
  factory _$SelectImageFromGalleryStartedCopyWith(
          _SelectImageFromGalleryStarted value,
          $Res Function(_SelectImageFromGalleryStarted) then) =
      __$SelectImageFromGalleryStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectImageFromGalleryStartedCopyWithImpl<$Res>
    extends _$ImagePickerEventCopyWithImpl<$Res>
    implements _$SelectImageFromGalleryStartedCopyWith<$Res> {
  __$SelectImageFromGalleryStartedCopyWithImpl(
      _SelectImageFromGalleryStarted _value,
      $Res Function(_SelectImageFromGalleryStarted) _then)
      : super(_value, (v) => _then(v as _SelectImageFromGalleryStarted));

  @override
  _SelectImageFromGalleryStarted get _value =>
      super._value as _SelectImageFromGalleryStarted;
}

/// @nodoc
class _$_SelectImageFromGalleryStarted
    implements _SelectImageFromGalleryStarted {
  const _$_SelectImageFromGalleryStarted();

  @override
  String toString() {
    return 'ImagePickerEvent.selectImageFromGalleryStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectImageFromGalleryStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selectImageFromGalleryStarted(),
    @required TResult getImageFromCameraStarted(),
    @required TResult initialized(),
  }) {
    assert(selectImageFromGalleryStarted != null);
    assert(getImageFromCameraStarted != null);
    assert(initialized != null);
    return selectImageFromGalleryStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selectImageFromGalleryStarted(),
    TResult getImageFromCameraStarted(),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectImageFromGalleryStarted != null) {
      return selectImageFromGalleryStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult selectImageFromGalleryStarted(
            _SelectImageFromGalleryStarted value),
    @required
        TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    @required TResult initialized(_Initialized value),
  }) {
    assert(selectImageFromGalleryStarted != null);
    assert(getImageFromCameraStarted != null);
    assert(initialized != null);
    return selectImageFromGalleryStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selectImageFromGalleryStarted(_SelectImageFromGalleryStarted value),
    TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectImageFromGalleryStarted != null) {
      return selectImageFromGalleryStarted(this);
    }
    return orElse();
  }
}

abstract class _SelectImageFromGalleryStarted implements ImagePickerEvent {
  const factory _SelectImageFromGalleryStarted() =
      _$_SelectImageFromGalleryStarted;
}

/// @nodoc
abstract class _$GetImageFromCameraStartedCopyWith<$Res> {
  factory _$GetImageFromCameraStartedCopyWith(_GetImageFromCameraStarted value,
          $Res Function(_GetImageFromCameraStarted) then) =
      __$GetImageFromCameraStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetImageFromCameraStartedCopyWithImpl<$Res>
    extends _$ImagePickerEventCopyWithImpl<$Res>
    implements _$GetImageFromCameraStartedCopyWith<$Res> {
  __$GetImageFromCameraStartedCopyWithImpl(_GetImageFromCameraStarted _value,
      $Res Function(_GetImageFromCameraStarted) _then)
      : super(_value, (v) => _then(v as _GetImageFromCameraStarted));

  @override
  _GetImageFromCameraStarted get _value =>
      super._value as _GetImageFromCameraStarted;
}

/// @nodoc
class _$_GetImageFromCameraStarted implements _GetImageFromCameraStarted {
  const _$_GetImageFromCameraStarted();

  @override
  String toString() {
    return 'ImagePickerEvent.getImageFromCameraStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetImageFromCameraStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selectImageFromGalleryStarted(),
    @required TResult getImageFromCameraStarted(),
    @required TResult initialized(),
  }) {
    assert(selectImageFromGalleryStarted != null);
    assert(getImageFromCameraStarted != null);
    assert(initialized != null);
    return getImageFromCameraStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selectImageFromGalleryStarted(),
    TResult getImageFromCameraStarted(),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getImageFromCameraStarted != null) {
      return getImageFromCameraStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult selectImageFromGalleryStarted(
            _SelectImageFromGalleryStarted value),
    @required
        TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    @required TResult initialized(_Initialized value),
  }) {
    assert(selectImageFromGalleryStarted != null);
    assert(getImageFromCameraStarted != null);
    assert(initialized != null);
    return getImageFromCameraStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selectImageFromGalleryStarted(_SelectImageFromGalleryStarted value),
    TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getImageFromCameraStarted != null) {
      return getImageFromCameraStarted(this);
    }
    return orElse();
  }
}

abstract class _GetImageFromCameraStarted implements ImagePickerEvent {
  const factory _GetImageFromCameraStarted() = _$_GetImageFromCameraStarted;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ImagePickerEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'ImagePickerEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selectImageFromGalleryStarted(),
    @required TResult getImageFromCameraStarted(),
    @required TResult initialized(),
  }) {
    assert(selectImageFromGalleryStarted != null);
    assert(getImageFromCameraStarted != null);
    assert(initialized != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selectImageFromGalleryStarted(),
    TResult getImageFromCameraStarted(),
    TResult initialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult selectImageFromGalleryStarted(
            _SelectImageFromGalleryStarted value),
    @required
        TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    @required TResult initialized(_Initialized value),
  }) {
    assert(selectImageFromGalleryStarted != null);
    assert(getImageFromCameraStarted != null);
    assert(initialized != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selectImageFromGalleryStarted(_SelectImageFromGalleryStarted value),
    TResult getImageFromCameraStarted(_GetImageFromCameraStarted value),
    TResult initialized(_Initialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ImagePickerEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
class _$ImagePickerStateTearOff {
  const _$ImagePickerStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(File image) {
    return _LoadSuccess(
      image,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ValueFailure<dynamic> valueFailure) {
    return _LoadFailure(
      valueFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImagePickerState = _$ImagePickerStateTearOff();

/// @nodoc
mixin _$ImagePickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ValueFailure<dynamic> valueFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(File image),
    TResult loadFailure(ValueFailure<dynamic> valueFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerStateCopyWith(
          ImagePickerState value, $Res Function(ImagePickerState) then) =
      _$ImagePickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImagePickerStateCopyWithImpl<$Res>
    implements $ImagePickerStateCopyWith<$Res> {
  _$ImagePickerStateCopyWithImpl(this._value, this._then);

  final ImagePickerState _value;
  // ignore: unused_field
  final $Res Function(ImagePickerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ImagePickerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ImagePickerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ValueFailure<dynamic> valueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(File image),
    TResult loadFailure(ValueFailure<dynamic> valueFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImagePickerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ImagePickerState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ValueFailure<dynamic> valueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(File image),
    TResult loadFailure(ValueFailure<dynamic> valueFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ImagePickerState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_LoadSuccess(
      image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.image) : assert(image != null);

  @override
  final File image;

  @override
  String toString() {
    return 'ImagePickerState.loadSuccess(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ValueFailure<dynamic> valueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(File image),
    TResult loadFailure(ValueFailure<dynamic> valueFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ImagePickerState {
  const factory _LoadSuccess(File image) = _$_LoadSuccess;

  File get image;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ValueFailure<dynamic> valueFailure});

  $ValueFailureCopyWith<dynamic, $Res> get valueFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object valueFailure = freezed,
  }) {
    return _then(_LoadFailure(
      valueFailure == freezed
          ? _value.valueFailure
          : valueFailure as ValueFailure<dynamic>,
    ));
  }

  @override
  $ValueFailureCopyWith<dynamic, $Res> get valueFailure {
    if (_value.valueFailure == null) {
      return null;
    }
    return $ValueFailureCopyWith<dynamic, $Res>(_value.valueFailure, (value) {
      return _then(_value.copyWith(valueFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.valueFailure) : assert(valueFailure != null);

  @override
  final ValueFailure<dynamic> valueFailure;

  @override
  String toString() {
    return 'ImagePickerState.loadFailure(valueFailure: $valueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.valueFailure, valueFailure) ||
                const DeepCollectionEquality()
                    .equals(other.valueFailure, valueFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(valueFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ValueFailure<dynamic> valueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(valueFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(File image),
    TResult loadFailure(ValueFailure<dynamic> valueFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(valueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ImagePickerState {
  const factory _LoadFailure(ValueFailure<dynamic> valueFailure) =
      _$_LoadFailure;

  ValueFailure<dynamic> get valueFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
