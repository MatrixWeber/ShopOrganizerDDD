// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'worker_image_handler_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkerImageHandlerEventTearOff {
  const _$WorkerImageHandlerEventTearOff();

  _UploadImageStarted uploadImageStarted(File image) {
    return _UploadImageStarted(
      image,
    );
  }

  _ImageDeleted imageDeleted(ImageUrl imageUrl) {
    return _ImageDeleted(
      imageUrl,
    );
  }
}

// ignore: unused_element
const $WorkerImageHandlerEvent = _$WorkerImageHandlerEventTearOff();

mixin _$WorkerImageHandlerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uploadImageStarted(File image),
    @required Result imageDeleted(ImageUrl imageUrl),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uploadImageStarted(File image),
    Result imageDeleted(ImageUrl imageUrl),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uploadImageStarted(_UploadImageStarted value),
    @required Result imageDeleted(_ImageDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uploadImageStarted(_UploadImageStarted value),
    Result imageDeleted(_ImageDeleted value),
    @required Result orElse(),
  });
}

abstract class $WorkerImageHandlerEventCopyWith<$Res> {
  factory $WorkerImageHandlerEventCopyWith(WorkerImageHandlerEvent value,
          $Res Function(WorkerImageHandlerEvent) then) =
      _$WorkerImageHandlerEventCopyWithImpl<$Res>;
}

class _$WorkerImageHandlerEventCopyWithImpl<$Res>
    implements $WorkerImageHandlerEventCopyWith<$Res> {
  _$WorkerImageHandlerEventCopyWithImpl(this._value, this._then);

  final WorkerImageHandlerEvent _value;
  // ignore: unused_field
  final $Res Function(WorkerImageHandlerEvent) _then;
}

abstract class _$UploadImageStartedCopyWith<$Res> {
  factory _$UploadImageStartedCopyWith(
          _UploadImageStarted value, $Res Function(_UploadImageStarted) then) =
      __$UploadImageStartedCopyWithImpl<$Res>;
  $Res call({File image});
}

class __$UploadImageStartedCopyWithImpl<$Res>
    extends _$WorkerImageHandlerEventCopyWithImpl<$Res>
    implements _$UploadImageStartedCopyWith<$Res> {
  __$UploadImageStartedCopyWithImpl(
      _UploadImageStarted _value, $Res Function(_UploadImageStarted) _then)
      : super(_value, (v) => _then(v as _UploadImageStarted));

  @override
  _UploadImageStarted get _value => super._value as _UploadImageStarted;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_UploadImageStarted(
      image == freezed ? _value.image : image as File,
    ));
  }
}

class _$_UploadImageStarted implements _UploadImageStarted {
  const _$_UploadImageStarted(this.image) : assert(image != null);

  @override
  final File image;

  @override
  String toString() {
    return 'WorkerImageHandlerEvent.uploadImageStarted(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadImageStarted &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @override
  _$UploadImageStartedCopyWith<_UploadImageStarted> get copyWith =>
      __$UploadImageStartedCopyWithImpl<_UploadImageStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uploadImageStarted(File image),
    @required Result imageDeleted(ImageUrl imageUrl),
  }) {
    assert(uploadImageStarted != null);
    assert(imageDeleted != null);
    return uploadImageStarted(image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uploadImageStarted(File image),
    Result imageDeleted(ImageUrl imageUrl),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadImageStarted != null) {
      return uploadImageStarted(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uploadImageStarted(_UploadImageStarted value),
    @required Result imageDeleted(_ImageDeleted value),
  }) {
    assert(uploadImageStarted != null);
    assert(imageDeleted != null);
    return uploadImageStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uploadImageStarted(_UploadImageStarted value),
    Result imageDeleted(_ImageDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadImageStarted != null) {
      return uploadImageStarted(this);
    }
    return orElse();
  }
}

abstract class _UploadImageStarted implements WorkerImageHandlerEvent {
  const factory _UploadImageStarted(File image) = _$_UploadImageStarted;

  File get image;
  _$UploadImageStartedCopyWith<_UploadImageStarted> get copyWith;
}

abstract class _$ImageDeletedCopyWith<$Res> {
  factory _$ImageDeletedCopyWith(
          _ImageDeleted value, $Res Function(_ImageDeleted) then) =
      __$ImageDeletedCopyWithImpl<$Res>;
  $Res call({ImageUrl imageUrl});
}

class __$ImageDeletedCopyWithImpl<$Res>
    extends _$WorkerImageHandlerEventCopyWithImpl<$Res>
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
      imageUrl == freezed ? _value.imageUrl : imageUrl as ImageUrl,
    ));
  }
}

class _$_ImageDeleted implements _ImageDeleted {
  const _$_ImageDeleted(this.imageUrl) : assert(imageUrl != null);

  @override
  final ImageUrl imageUrl;

  @override
  String toString() {
    return 'WorkerImageHandlerEvent.imageDeleted(imageUrl: $imageUrl)';
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
  Result when<Result extends Object>({
    @required Result uploadImageStarted(File image),
    @required Result imageDeleted(ImageUrl imageUrl),
  }) {
    assert(uploadImageStarted != null);
    assert(imageDeleted != null);
    return imageDeleted(imageUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uploadImageStarted(File image),
    Result imageDeleted(ImageUrl imageUrl),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uploadImageStarted(_UploadImageStarted value),
    @required Result imageDeleted(_ImageDeleted value),
  }) {
    assert(uploadImageStarted != null);
    assert(imageDeleted != null);
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uploadImageStarted(_UploadImageStarted value),
    Result imageDeleted(_ImageDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements WorkerImageHandlerEvent {
  const factory _ImageDeleted(ImageUrl imageUrl) = _$_ImageDeleted;

  ImageUrl get imageUrl;
  _$ImageDeletedCopyWith<_ImageDeleted> get copyWith;
}

class _$WorkerImageHandlerStateTearOff {
  const _$WorkerImageHandlerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _UploadedSuccessful uploadedSuccessful(ImageUrl imageUrl) {
    return _UploadedSuccessful(
      imageUrl,
    );
  }

  _DeletedSuccessful deletedSuccessful() {
    return const _DeletedSuccessful();
  }

  _LoadSuccess loadSuccess(File image) {
    return _LoadSuccess(
      image,
    );
  }

  _LoadFailure loadFailure(WorkerFailure workerFailure) {
    return _LoadFailure(
      workerFailure,
    );
  }
}

// ignore: unused_element
const $WorkerImageHandlerState = _$WorkerImageHandlerStateTearOff();

mixin _$WorkerImageHandlerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result uploadedSuccessful(ImageUrl imageUrl),
    @required Result deletedSuccessful(),
    @required Result loadSuccess(File image),
    @required Result loadFailure(WorkerFailure workerFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result uploadedSuccessful(ImageUrl imageUrl),
    Result deletedSuccessful(),
    Result loadSuccess(File image),
    Result loadFailure(WorkerFailure workerFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result uploadedSuccessful(_UploadedSuccessful value),
    @required Result deletedSuccessful(_DeletedSuccessful value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result uploadedSuccessful(_UploadedSuccessful value),
    Result deletedSuccessful(_DeletedSuccessful value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $WorkerImageHandlerStateCopyWith<$Res> {
  factory $WorkerImageHandlerStateCopyWith(WorkerImageHandlerState value,
          $Res Function(WorkerImageHandlerState) then) =
      _$WorkerImageHandlerStateCopyWithImpl<$Res>;
}

class _$WorkerImageHandlerStateCopyWithImpl<$Res>
    implements $WorkerImageHandlerStateCopyWith<$Res> {
  _$WorkerImageHandlerStateCopyWithImpl(this._value, this._then);

  final WorkerImageHandlerState _value;
  // ignore: unused_field
  final $Res Function(WorkerImageHandlerState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$WorkerImageHandlerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WorkerImageHandlerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result uploadedSuccessful(ImageUrl imageUrl),
    @required Result deletedSuccessful(),
    @required Result loadSuccess(File image),
    @required Result loadFailure(WorkerFailure workerFailure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result uploadedSuccessful(ImageUrl imageUrl),
    Result deletedSuccessful(),
    Result loadSuccess(File image),
    Result loadFailure(WorkerFailure workerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result uploadedSuccessful(_UploadedSuccessful value),
    @required Result deletedSuccessful(_DeletedSuccessful value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result uploadedSuccessful(_UploadedSuccessful value),
    Result deletedSuccessful(_DeletedSuccessful value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkerImageHandlerState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$WorkerImageHandlerStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'WorkerImageHandlerState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result uploadedSuccessful(ImageUrl imageUrl),
    @required Result deletedSuccessful(),
    @required Result loadSuccess(File image),
    @required Result loadFailure(WorkerFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(uploadedSuccessful != null);
    assert(deletedSuccessful != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result uploadedSuccessful(ImageUrl imageUrl),
    Result deletedSuccessful(),
    Result loadSuccess(File image),
    Result loadFailure(WorkerFailure workerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result uploadedSuccessful(_UploadedSuccessful value),
    @required Result deletedSuccessful(_DeletedSuccessful value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result uploadedSuccessful(_UploadedSuccessful value),
    Result deletedSuccessful(_DeletedSuccessful value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements WorkerImageHandlerState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$UploadedSuccessfulCopyWith<$Res> {
  factory _$UploadedSuccessfulCopyWith(
          _UploadedSuccessful value, $Res Function(_UploadedSuccessful) then) =
      __$UploadedSuccessfulCopyWithImpl<$Res>;
  $Res call({ImageUrl imageUrl});
}

class __$UploadedSuccessfulCopyWithImpl<$Res>
    extends _$WorkerImageHandlerStateCopyWithImpl<$Res>
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

class _$_UploadedSuccessful implements _UploadedSuccessful {
  const _$_UploadedSuccessful(this.imageUrl) : assert(imageUrl != null);

  @override
  final ImageUrl imageUrl;

  @override
  String toString() {
    return 'WorkerImageHandlerState.uploadedSuccessful(imageUrl: $imageUrl)';
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result uploadedSuccessful(ImageUrl imageUrl),
    @required Result deletedSuccessful(),
    @required Result loadSuccess(File image),
    @required Result loadFailure(WorkerFailure workerFailure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result uploadedSuccessful(ImageUrl imageUrl),
    Result deletedSuccessful(),
    Result loadSuccess(File image),
    Result loadFailure(WorkerFailure workerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadedSuccessful != null) {
      return uploadedSuccessful(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result uploadedSuccessful(_UploadedSuccessful value),
    @required Result deletedSuccessful(_DeletedSuccessful value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result uploadedSuccessful(_UploadedSuccessful value),
    Result deletedSuccessful(_DeletedSuccessful value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadedSuccessful != null) {
      return uploadedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _UploadedSuccessful implements WorkerImageHandlerState {
  const factory _UploadedSuccessful(ImageUrl imageUrl) = _$_UploadedSuccessful;

  ImageUrl get imageUrl;
  _$UploadedSuccessfulCopyWith<_UploadedSuccessful> get copyWith;
}

abstract class _$DeletedSuccessfulCopyWith<$Res> {
  factory _$DeletedSuccessfulCopyWith(
          _DeletedSuccessful value, $Res Function(_DeletedSuccessful) then) =
      __$DeletedSuccessfulCopyWithImpl<$Res>;
}

class __$DeletedSuccessfulCopyWithImpl<$Res>
    extends _$WorkerImageHandlerStateCopyWithImpl<$Res>
    implements _$DeletedSuccessfulCopyWith<$Res> {
  __$DeletedSuccessfulCopyWithImpl(
      _DeletedSuccessful _value, $Res Function(_DeletedSuccessful) _then)
      : super(_value, (v) => _then(v as _DeletedSuccessful));

  @override
  _DeletedSuccessful get _value => super._value as _DeletedSuccessful;
}

class _$_DeletedSuccessful implements _DeletedSuccessful {
  const _$_DeletedSuccessful();

  @override
  String toString() {
    return 'WorkerImageHandlerState.deletedSuccessful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletedSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result uploadedSuccessful(ImageUrl imageUrl),
    @required Result deletedSuccessful(),
    @required Result loadSuccess(File image),
    @required Result loadFailure(WorkerFailure workerFailure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result uploadedSuccessful(ImageUrl imageUrl),
    Result deletedSuccessful(),
    Result loadSuccess(File image),
    Result loadFailure(WorkerFailure workerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedSuccessful != null) {
      return deletedSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result uploadedSuccessful(_UploadedSuccessful value),
    @required Result deletedSuccessful(_DeletedSuccessful value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result uploadedSuccessful(_UploadedSuccessful value),
    Result deletedSuccessful(_DeletedSuccessful value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletedSuccessful != null) {
      return deletedSuccessful(this);
    }
    return orElse();
  }
}

abstract class _DeletedSuccessful implements WorkerImageHandlerState {
  const factory _DeletedSuccessful() = _$_DeletedSuccessful;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({File image});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$WorkerImageHandlerStateCopyWithImpl<$Res>
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

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.image) : assert(image != null);

  @override
  final File image;

  @override
  String toString() {
    return 'WorkerImageHandlerState.loadSuccess(image: $image)';
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result uploadedSuccessful(ImageUrl imageUrl),
    @required Result deletedSuccessful(),
    @required Result loadSuccess(File image),
    @required Result loadFailure(WorkerFailure workerFailure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result uploadedSuccessful(ImageUrl imageUrl),
    Result deletedSuccessful(),
    Result loadSuccess(File image),
    Result loadFailure(WorkerFailure workerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result uploadedSuccessful(_UploadedSuccessful value),
    @required Result deletedSuccessful(_DeletedSuccessful value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result uploadedSuccessful(_UploadedSuccessful value),
    Result deletedSuccessful(_DeletedSuccessful value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements WorkerImageHandlerState {
  const factory _LoadSuccess(File image) = _$_LoadSuccess;

  File get image;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({WorkerFailure workerFailure});

  $WorkerFailureCopyWith<$Res> get workerFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$WorkerImageHandlerStateCopyWithImpl<$Res>
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
          : workerFailure as WorkerFailure,
    ));
  }

  @override
  $WorkerFailureCopyWith<$Res> get workerFailure {
    if (_value.workerFailure == null) {
      return null;
    }
    return $WorkerFailureCopyWith<$Res>(_value.workerFailure, (value) {
      return _then(_value.copyWith(workerFailure: value));
    });
  }
}

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.workerFailure) : assert(workerFailure != null);

  @override
  final WorkerFailure workerFailure;

  @override
  String toString() {
    return 'WorkerImageHandlerState.loadFailure(workerFailure: $workerFailure)';
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result uploadedSuccessful(ImageUrl imageUrl),
    @required Result deletedSuccessful(),
    @required Result loadSuccess(File image),
    @required Result loadFailure(WorkerFailure workerFailure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result uploadedSuccessful(ImageUrl imageUrl),
    Result deletedSuccessful(),
    Result loadSuccess(File image),
    Result loadFailure(WorkerFailure workerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(workerFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result uploadedSuccessful(_UploadedSuccessful value),
    @required Result deletedSuccessful(_DeletedSuccessful value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result uploadedSuccessful(_UploadedSuccessful value),
    Result deletedSuccessful(_DeletedSuccessful value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements WorkerImageHandlerState {
  const factory _LoadFailure(WorkerFailure workerFailure) = _$_LoadFailure;

  WorkerFailure get workerFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
