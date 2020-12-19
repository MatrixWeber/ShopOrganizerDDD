// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_handler_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageHandlerEventTearOff {
  const _$ImageHandlerEventTearOff();

// ignore: unused_element
  _UploadImageStarted uploadImageStarted(File image, UniqueId parentId,
      [UniqueId id]) {
    return _UploadImageStarted(
      image,
      parentId,
      id,
    );
  }

// ignore: unused_element
  _ImageReceived imageReceived(Either<None, ImageUrl> failureOrImageUrl) {
    return _ImageReceived(
      failureOrImageUrl,
    );
  }

// ignore: unused_element
  _ImageDeleted imageDeleted(String imageUrl) {
    return _ImageDeleted(
      imageUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageHandlerEvent = _$ImageHandlerEventTearOff();

/// @nodoc
mixin _$ImageHandlerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    @required TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    @required TResult imageDeleted(String imageUrl),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    TResult imageDeleted(String imageUrl),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadImageStarted(_UploadImageStarted value),
    @required TResult imageReceived(_ImageReceived value),
    @required TResult imageDeleted(_ImageDeleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadImageStarted(_UploadImageStarted value),
    TResult imageReceived(_ImageReceived value),
    TResult imageDeleted(_ImageDeleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageHandlerEventCopyWith<$Res> {
  factory $ImageHandlerEventCopyWith(
          ImageHandlerEvent value, $Res Function(ImageHandlerEvent) then) =
      _$ImageHandlerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageHandlerEventCopyWithImpl<$Res>
    implements $ImageHandlerEventCopyWith<$Res> {
  _$ImageHandlerEventCopyWithImpl(this._value, this._then);

  final ImageHandlerEvent _value;
  // ignore: unused_field
  final $Res Function(ImageHandlerEvent) _then;
}

/// @nodoc
abstract class _$UploadImageStartedCopyWith<$Res> {
  factory _$UploadImageStartedCopyWith(
          _UploadImageStarted value, $Res Function(_UploadImageStarted) then) =
      __$UploadImageStartedCopyWithImpl<$Res>;
  $Res call({File image, UniqueId parentId, UniqueId id});
}

/// @nodoc
class __$UploadImageStartedCopyWithImpl<$Res>
    extends _$ImageHandlerEventCopyWithImpl<$Res>
    implements _$UploadImageStartedCopyWith<$Res> {
  __$UploadImageStartedCopyWithImpl(
      _UploadImageStarted _value, $Res Function(_UploadImageStarted) _then)
      : super(_value, (v) => _then(v as _UploadImageStarted));

  @override
  _UploadImageStarted get _value => super._value as _UploadImageStarted;

  @override
  $Res call({
    Object image = freezed,
    Object parentId = freezed,
    Object id = freezed,
  }) {
    return _then(_UploadImageStarted(
      image == freezed ? _value.image : image as File,
      parentId == freezed ? _value.parentId : parentId as UniqueId,
      id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
class _$_UploadImageStarted implements _UploadImageStarted {
  const _$_UploadImageStarted(this.image, this.parentId, [this.id])
      : assert(image != null),
        assert(parentId != null);

  @override
  final File image;
  @override
  final UniqueId parentId;
  @override
  final UniqueId id;

  @override
  String toString() {
    return 'ImageHandlerEvent.uploadImageStarted(image: $image, parentId: $parentId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadImageStarted &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.parentId, parentId) ||
                const DeepCollectionEquality()
                    .equals(other.parentId, parentId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(parentId) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$UploadImageStartedCopyWith<_UploadImageStarted> get copyWith =>
      __$UploadImageStartedCopyWithImpl<_UploadImageStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    @required TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    @required TResult imageDeleted(String imageUrl),
  }) {
    assert(uploadImageStarted != null);
    assert(imageReceived != null);
    assert(imageDeleted != null);
    return uploadImageStarted(image, parentId, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    TResult imageDeleted(String imageUrl),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadImageStarted != null) {
      return uploadImageStarted(image, parentId, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadImageStarted(_UploadImageStarted value),
    @required TResult imageReceived(_ImageReceived value),
    @required TResult imageDeleted(_ImageDeleted value),
  }) {
    assert(uploadImageStarted != null);
    assert(imageReceived != null);
    assert(imageDeleted != null);
    return uploadImageStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadImageStarted(_UploadImageStarted value),
    TResult imageReceived(_ImageReceived value),
    TResult imageDeleted(_ImageDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadImageStarted != null) {
      return uploadImageStarted(this);
    }
    return orElse();
  }
}

abstract class _UploadImageStarted implements ImageHandlerEvent {
  const factory _UploadImageStarted(File image, UniqueId parentId,
      [UniqueId id]) = _$_UploadImageStarted;

  File get image;
  UniqueId get parentId;
  UniqueId get id;
  _$UploadImageStartedCopyWith<_UploadImageStarted> get copyWith;
}

/// @nodoc
abstract class _$ImageReceivedCopyWith<$Res> {
  factory _$ImageReceivedCopyWith(
          _ImageReceived value, $Res Function(_ImageReceived) then) =
      __$ImageReceivedCopyWithImpl<$Res>;
  $Res call({Either<None, ImageUrl> failureOrImageUrl});
}

/// @nodoc
class __$ImageReceivedCopyWithImpl<$Res>
    extends _$ImageHandlerEventCopyWithImpl<$Res>
    implements _$ImageReceivedCopyWith<$Res> {
  __$ImageReceivedCopyWithImpl(
      _ImageReceived _value, $Res Function(_ImageReceived) _then)
      : super(_value, (v) => _then(v as _ImageReceived));

  @override
  _ImageReceived get _value => super._value as _ImageReceived;

  @override
  $Res call({
    Object failureOrImageUrl = freezed,
  }) {
    return _then(_ImageReceived(
      failureOrImageUrl == freezed
          ? _value.failureOrImageUrl
          : failureOrImageUrl as Either<None, ImageUrl>,
    ));
  }
}

/// @nodoc
class _$_ImageReceived implements _ImageReceived {
  const _$_ImageReceived(this.failureOrImageUrl)
      : assert(failureOrImageUrl != null);

  @override
  final Either<None, ImageUrl> failureOrImageUrl;

  @override
  String toString() {
    return 'ImageHandlerEvent.imageReceived(failureOrImageUrl: $failureOrImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageReceived &&
            (identical(other.failureOrImageUrl, failureOrImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrImageUrl, failureOrImageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrImageUrl);

  @override
  _$ImageReceivedCopyWith<_ImageReceived> get copyWith =>
      __$ImageReceivedCopyWithImpl<_ImageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    @required TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    @required TResult imageDeleted(String imageUrl),
  }) {
    assert(uploadImageStarted != null);
    assert(imageReceived != null);
    assert(imageDeleted != null);
    return imageReceived(failureOrImageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    TResult imageDeleted(String imageUrl),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageReceived != null) {
      return imageReceived(failureOrImageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadImageStarted(_UploadImageStarted value),
    @required TResult imageReceived(_ImageReceived value),
    @required TResult imageDeleted(_ImageDeleted value),
  }) {
    assert(uploadImageStarted != null);
    assert(imageReceived != null);
    assert(imageDeleted != null);
    return imageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadImageStarted(_UploadImageStarted value),
    TResult imageReceived(_ImageReceived value),
    TResult imageDeleted(_ImageDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageReceived != null) {
      return imageReceived(this);
    }
    return orElse();
  }
}

abstract class _ImageReceived implements ImageHandlerEvent {
  const factory _ImageReceived(Either<None, ImageUrl> failureOrImageUrl) =
      _$_ImageReceived;

  Either<None, ImageUrl> get failureOrImageUrl;
  _$ImageReceivedCopyWith<_ImageReceived> get copyWith;
}

/// @nodoc
abstract class _$ImageDeletedCopyWith<$Res> {
  factory _$ImageDeletedCopyWith(
          _ImageDeleted value, $Res Function(_ImageDeleted) then) =
      __$ImageDeletedCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$ImageDeletedCopyWithImpl<$Res>
    extends _$ImageHandlerEventCopyWithImpl<$Res>
    implements _$ImageDeletedCopyWith<$Res> {
  __$ImageDeletedCopyWithImpl(
      _ImageDeleted _value, $Res Function(_ImageDeleted) _then)
      : super(_value, (v) => _then(v as _ImageDeleted));

  @override
  _ImageDeleted get _value => super._value as _ImageDeleted;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_ImageDeleted(
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
class _$_ImageDeleted implements _ImageDeleted {
  const _$_ImageDeleted(this.imageUrl) : assert(imageUrl != null);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ImageHandlerEvent.imageDeleted(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageDeleted &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @override
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith =>
      __$ImageDeletedCopyWithImpl<_ImageDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    @required TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    @required TResult imageDeleted(String imageUrl),
  }) {
    assert(uploadImageStarted != null);
    assert(imageReceived != null);
    assert(imageDeleted != null);
    return imageDeleted(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadImageStarted(File image, UniqueId parentId, UniqueId id),
    TResult imageReceived(Either<None, ImageUrl> failureOrImageUrl),
    TResult imageDeleted(String imageUrl),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadImageStarted(_UploadImageStarted value),
    @required TResult imageReceived(_ImageReceived value),
    @required TResult imageDeleted(_ImageDeleted value),
  }) {
    assert(uploadImageStarted != null);
    assert(imageReceived != null);
    assert(imageDeleted != null);
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadImageStarted(_UploadImageStarted value),
    TResult imageReceived(_ImageReceived value),
    TResult imageDeleted(_ImageDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements ImageHandlerEvent {
  const factory _ImageDeleted(String imageUrl) = _$_ImageDeleted;

  String get imageUrl;
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith;
}

/// @nodoc
class _$ImageHandlerStateTearOff {
  const _$ImageHandlerStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress(num percent) {
    return _LoadInProgress(
      percent,
    );
  }

// ignore: unused_element
  _UploadedSuccessful uploadedSuccessful(ImageUrl imageUrl) {
    return _UploadedSuccessful(
      imageUrl,
    );
  }

// ignore: unused_element
  _DeletedSuccessful deletedSuccessful() {
    return const _DeletedSuccessful();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(File image) {
    return _LoadSuccess(
      image,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ImageFailure workerFailure) {
    return _LoadFailure(
      workerFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageHandlerState = _$ImageHandlerStateTearOff();

/// @nodoc
mixin _$ImageHandlerState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(num percent),
    @required TResult uploadedSuccessful(ImageUrl imageUrl),
    @required TResult deletedSuccessful(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ImageFailure workerFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(num percent),
    TResult uploadedSuccessful(ImageUrl imageUrl),
    TResult deletedSuccessful(),
    TResult loadSuccess(File image),
    TResult loadFailure(ImageFailure workerFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult uploadedSuccessful(_UploadedSuccessful value),
    @required TResult deletedSuccessful(_DeletedSuccessful value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult uploadedSuccessful(_UploadedSuccessful value),
    TResult deletedSuccessful(_DeletedSuccessful value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageHandlerStateCopyWith<$Res> {
  factory $ImageHandlerStateCopyWith(
          ImageHandlerState value, $Res Function(ImageHandlerState) then) =
      _$ImageHandlerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageHandlerStateCopyWithImpl<$Res>
    implements $ImageHandlerStateCopyWith<$Res> {
  _$ImageHandlerStateCopyWithImpl(this._value, this._then);

  final ImageHandlerState _value;
  // ignore: unused_field
  final $Res Function(ImageHandlerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ImageHandlerStateCopyWithImpl<$Res>
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
    return 'ImageHandlerState.initial()';
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
    @required TResult loadInProgress(num percent),
    @required TResult uploadedSuccessful(ImageUrl imageUrl),
    @required TResult deletedSuccessful(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ImageFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(num percent),
    TResult uploadedSuccessful(ImageUrl imageUrl),
    TResult deletedSuccessful(),
    TResult loadSuccess(File image),
    TResult loadFailure(ImageFailure workerFailure),
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
    @required TResult uploadedSuccessful(_UploadedSuccessful value),
    @required TResult deletedSuccessful(_DeletedSuccessful value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult uploadedSuccessful(_UploadedSuccessful value),
    TResult deletedSuccessful(_DeletedSuccessful value),
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

abstract class _Initial implements ImageHandlerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
  $Res call({num percent});
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ImageHandlerStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;

  @override
  $Res call({
    Object percent = freezed,
  }) {
    return _then(_LoadInProgress(
      percent == freezed ? _value.percent : percent as num,
    ));
  }
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress(this.percent) : assert(percent != null);

  @override
  final num percent;

  @override
  String toString() {
    return 'ImageHandlerState.loadInProgress(percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadInProgress &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality().equals(other.percent, percent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percent);

  @override
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith =>
      __$LoadInProgressCopyWithImpl<_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(num percent),
    @required TResult uploadedSuccessful(ImageUrl imageUrl),
    @required TResult deletedSuccessful(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ImageFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(num percent),
    TResult uploadedSuccessful(ImageUrl imageUrl),
    TResult deletedSuccessful(),
    TResult loadSuccess(File image),
    TResult loadFailure(ImageFailure workerFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult uploadedSuccessful(_UploadedSuccessful value),
    @required TResult deletedSuccessful(_DeletedSuccessful value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult uploadedSuccessful(_UploadedSuccessful value),
    TResult deletedSuccessful(_DeletedSuccessful value),
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

abstract class _LoadInProgress implements ImageHandlerState {
  const factory _LoadInProgress(num percent) = _$_LoadInProgress;

  num get percent;
  _$LoadInProgressCopyWith<_LoadInProgress> get copyWith;
}

/// @nodoc
abstract class _$UploadedSuccessfulCopyWith<$Res> {
  factory _$UploadedSuccessfulCopyWith(
          _UploadedSuccessful value, $Res Function(_UploadedSuccessful) then) =
      __$UploadedSuccessfulCopyWithImpl<$Res>;
  $Res call({ImageUrl imageUrl});
}

/// @nodoc
class __$UploadedSuccessfulCopyWithImpl<$Res>
    extends _$ImageHandlerStateCopyWithImpl<$Res>
    implements _$UploadedSuccessfulCopyWith<$Res> {
  __$UploadedSuccessfulCopyWithImpl(
      _UploadedSuccessful _value, $Res Function(_UploadedSuccessful) _then)
      : super(_value, (v) => _then(v as _UploadedSuccessful));

  @override
  _UploadedSuccessful get _value => super._value as _UploadedSuccessful;

  @override
  $Res call({
    Object imageUrl = freezed,
  }) {
    return _then(_UploadedSuccessful(
      imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
    ));
  }
}

/// @nodoc
class _$_UploadedSuccessful implements _UploadedSuccessful {
  const _$_UploadedSuccessful(this.imageUrl) : assert(imageUrl != null);

  @override
  final ImageUrl imageUrl;

  @override
  String toString() {
    return 'ImageHandlerState.uploadedSuccessful(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadedSuccessful &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrl);

  @override
  _$UploadedSuccessfulCopyWith<_UploadedSuccessful> get copyWith =>
      __$UploadedSuccessfulCopyWithImpl<_UploadedSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(num percent),
    @required TResult uploadedSuccessful(ImageUrl imageUrl),
    @required TResult deletedSuccessful(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ImageFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return uploadedSuccessful(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(num percent),
    TResult uploadedSuccessful(ImageUrl imageUrl),
    TResult deletedSuccessful(),
    TResult loadSuccess(File image),
    TResult loadFailure(ImageFailure workerFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadedSuccessful != null) {
      return uploadedSuccessful(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult uploadedSuccessful(_UploadedSuccessful value),
    @required TResult deletedSuccessful(_DeletedSuccessful value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return uploadedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult uploadedSuccessful(_UploadedSuccessful value),
    TResult deletedSuccessful(_DeletedSuccessful value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadedSuccessful != null) {
      return uploadedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _UploadedSuccessful implements ImageHandlerState {
  const factory _UploadedSuccessful(ImageUrl imageUrl) = _$_UploadedSuccessful;

  ImageUrl get imageUrl;
  _$UploadedSuccessfulCopyWith<_UploadedSuccessful> get copyWith;
}

/// @nodoc
abstract class _$DeletedSuccessfulCopyWith<$Res> {
  factory _$DeletedSuccessfulCopyWith(
          _DeletedSuccessful value, $Res Function(_DeletedSuccessful) then) =
      __$DeletedSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedSuccessfulCopyWithImpl<$Res>
    extends _$ImageHandlerStateCopyWithImpl<$Res>
    implements _$DeletedSuccessfulCopyWith<$Res> {
  __$DeletedSuccessfulCopyWithImpl(
      _DeletedSuccessful _value, $Res Function(_DeletedSuccessful) _then)
      : super(_value, (v) => _then(v as _DeletedSuccessful));

  @override
  _DeletedSuccessful get _value => super._value as _DeletedSuccessful;
}

/// @nodoc
class _$_DeletedSuccessful implements _DeletedSuccessful {
  const _$_DeletedSuccessful();

  @override
  String toString() {
    return 'ImageHandlerState.deletedSuccessful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletedSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(num percent),
    @required TResult uploadedSuccessful(ImageUrl imageUrl),
    @required TResult deletedSuccessful(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ImageFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return deletedSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(num percent),
    TResult uploadedSuccessful(ImageUrl imageUrl),
    TResult deletedSuccessful(),
    TResult loadSuccess(File image),
    TResult loadFailure(ImageFailure workerFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedSuccessful != null) {
      return deletedSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult uploadedSuccessful(_UploadedSuccessful value),
    @required TResult deletedSuccessful(_DeletedSuccessful value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return deletedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult uploadedSuccessful(_UploadedSuccessful value),
    TResult deletedSuccessful(_DeletedSuccessful value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletedSuccessful != null) {
      return deletedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _DeletedSuccessful implements ImageHandlerState {
  const factory _DeletedSuccessful() = _$_DeletedSuccessful;
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
    extends _$ImageHandlerStateCopyWithImpl<$Res>
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
    return 'ImageHandlerState.loadSuccess(image: $image)';
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
    @required TResult loadInProgress(num percent),
    @required TResult uploadedSuccessful(ImageUrl imageUrl),
    @required TResult deletedSuccessful(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ImageFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(num percent),
    TResult uploadedSuccessful(ImageUrl imageUrl),
    TResult deletedSuccessful(),
    TResult loadSuccess(File image),
    TResult loadFailure(ImageFailure workerFailure),
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
    @required TResult uploadedSuccessful(_UploadedSuccessful value),
    @required TResult deletedSuccessful(_DeletedSuccessful value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult uploadedSuccessful(_UploadedSuccessful value),
    TResult deletedSuccessful(_DeletedSuccessful value),
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

abstract class _LoadSuccess implements ImageHandlerState {
  const factory _LoadSuccess(File image) = _$_LoadSuccess;

  File get image;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ImageFailure workerFailure});

  $ImageFailureCopyWith<$Res> get workerFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ImageHandlerStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object workerFailure = freezed,
  }) {
    return _then(_LoadFailure(
      workerFailure == freezed
          ? _value.workerFailure
          : workerFailure as ImageFailure,
    ));
  }

  @override
  $ImageFailureCopyWith<$Res> get workerFailure {
    if (_value.workerFailure == null) {
      return null;
    }
    return $ImageFailureCopyWith<$Res>(_value.workerFailure, (value) {
      return _then(_value.copyWith(workerFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.workerFailure) : assert(workerFailure != null);

  @override
  final ImageFailure workerFailure;

  @override
  String toString() {
    return 'ImageHandlerState.loadFailure(workerFailure: $workerFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.workerFailure, workerFailure) ||
                const DeepCollectionEquality()
                    .equals(other.workerFailure, workerFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workerFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(num percent),
    @required TResult uploadedSuccessful(ImageUrl imageUrl),
    @required TResult deletedSuccessful(),
    @required TResult loadSuccess(File image),
    @required TResult loadFailure(ImageFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(workerFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(num percent),
    TResult uploadedSuccessful(ImageUrl imageUrl),
    TResult deletedSuccessful(),
    TResult loadSuccess(File image),
    TResult loadFailure(ImageFailure workerFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(workerFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult uploadedSuccessful(_UploadedSuccessful value),
    @required TResult deletedSuccessful(_DeletedSuccessful value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult uploadedSuccessful(_UploadedSuccessful value),
    TResult deletedSuccessful(_DeletedSuccessful value),
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

abstract class _LoadFailure implements ImageHandlerState {
  const factory _LoadFailure(ImageFailure workerFailure) = _$_LoadFailure;

  ImageFailure get workerFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
