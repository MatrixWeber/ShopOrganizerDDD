// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'shop_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShopWatcherEventTearOff {
  const _$ShopWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _ShopsReceived shopsReceived(
      Either<ShopFailure, KtList<Shop>> failureOrShops) {
    return _ShopsReceived(
      failureOrShops,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShopWatcherEvent = _$ShopWatcherEventTearOff();

/// @nodoc
mixin _$ShopWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult shopsReceived(Either<ShopFailure, KtList<Shop>> failureOrShops),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult shopsReceived(Either<ShopFailure, KtList<Shop>> failureOrShops),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult shopsReceived(_ShopsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult shopsReceived(_ShopsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ShopWatcherEventCopyWith<$Res> {
  factory $ShopWatcherEventCopyWith(
          ShopWatcherEvent value, $Res Function(ShopWatcherEvent) then) =
      _$ShopWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopWatcherEventCopyWithImpl<$Res>
    implements $ShopWatcherEventCopyWith<$Res> {
  _$ShopWatcherEventCopyWithImpl(this._value, this._then);

  final ShopWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ShopWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ShopWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ShopWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult shopsReceived(Either<ShopFailure, KtList<Shop>> failureOrShops),
  }) {
    assert(watchAllStarted != null);
    assert(shopsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult shopsReceived(Either<ShopFailure, KtList<Shop>> failureOrShops),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult shopsReceived(_ShopsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(shopsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult shopsReceived(_ShopsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ShopWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$ShopsReceivedCopyWith<$Res> {
  factory _$ShopsReceivedCopyWith(
          _ShopsReceived value, $Res Function(_ShopsReceived) then) =
      __$ShopsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ShopFailure, KtList<Shop>> failureOrShops});
}

/// @nodoc
class __$ShopsReceivedCopyWithImpl<$Res>
    extends _$ShopWatcherEventCopyWithImpl<$Res>
    implements _$ShopsReceivedCopyWith<$Res> {
  __$ShopsReceivedCopyWithImpl(
      _ShopsReceived _value, $Res Function(_ShopsReceived) _then)
      : super(_value, (v) => _then(v as _ShopsReceived));

  @override
  _ShopsReceived get _value => super._value as _ShopsReceived;

  @override
  $Res call({
    Object failureOrShops = freezed,
  }) {
    return _then(_ShopsReceived(
      failureOrShops == freezed
          ? _value.failureOrShops
          : failureOrShops as Either<ShopFailure, KtList<Shop>>,
    ));
  }
}

/// @nodoc
class _$_ShopsReceived implements _ShopsReceived {
  const _$_ShopsReceived(this.failureOrShops) : assert(failureOrShops != null);

  @override
  final Either<ShopFailure, KtList<Shop>> failureOrShops;

  @override
  String toString() {
    return 'ShopWatcherEvent.shopsReceived(failureOrShops: $failureOrShops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopsReceived &&
            (identical(other.failureOrShops, failureOrShops) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrShops, failureOrShops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrShops);

  @override
  _$ShopsReceivedCopyWith<_ShopsReceived> get copyWith =>
      __$ShopsReceivedCopyWithImpl<_ShopsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required
        TResult shopsReceived(Either<ShopFailure, KtList<Shop>> failureOrShops),
  }) {
    assert(watchAllStarted != null);
    assert(shopsReceived != null);
    return shopsReceived(failureOrShops);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult shopsReceived(Either<ShopFailure, KtList<Shop>> failureOrShops),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shopsReceived != null) {
      return shopsReceived(failureOrShops);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult shopsReceived(_ShopsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(shopsReceived != null);
    return shopsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult shopsReceived(_ShopsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shopsReceived != null) {
      return shopsReceived(this);
    }
    return orElse();
  }
}

abstract class _ShopsReceived implements ShopWatcherEvent {
  const factory _ShopsReceived(
      Either<ShopFailure, KtList<Shop>> failureOrShops) = _$_ShopsReceived;

  Either<ShopFailure, KtList<Shop>> get failureOrShops;
  _$ShopsReceivedCopyWith<_ShopsReceived> get copyWith;
}

/// @nodoc
class _$ShopWatcherStateTearOff {
  const _$ShopWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Shop> shops) {
    return _LoadSuccess(
      shops,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ShopFailure shopFailure) {
    return _LoadFailure(
      shopFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShopWatcherState = _$ShopWatcherStateTearOff();

/// @nodoc
mixin _$ShopWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Shop> shops),
    @required TResult loadFailure(ShopFailure shopFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Shop> shops),
    TResult loadFailure(ShopFailure shopFailure),
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
abstract class $ShopWatcherStateCopyWith<$Res> {
  factory $ShopWatcherStateCopyWith(
          ShopWatcherState value, $Res Function(ShopWatcherState) then) =
      _$ShopWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopWatcherStateCopyWithImpl<$Res>
    implements $ShopWatcherStateCopyWith<$Res> {
  _$ShopWatcherStateCopyWithImpl(this._value, this._then);

  final ShopWatcherState _value;
  // ignore: unused_field
  final $Res Function(ShopWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ShopWatcherStateCopyWithImpl<$Res>
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
    return 'ShopWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<Shop> shops),
    @required TResult loadFailure(ShopFailure shopFailure),
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
    TResult loadSuccess(KtList<Shop> shops),
    TResult loadFailure(ShopFailure shopFailure),
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

abstract class _Initial implements ShopWatcherState {
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
    extends _$ShopWatcherStateCopyWithImpl<$Res>
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
    return 'ShopWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<Shop> shops),
    @required TResult loadFailure(ShopFailure shopFailure),
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
    TResult loadSuccess(KtList<Shop> shops),
    TResult loadFailure(ShopFailure shopFailure),
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

abstract class _LoadInProgress implements ShopWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Shop> shops});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ShopWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object shops = freezed,
  }) {
    return _then(_LoadSuccess(
      shops == freezed ? _value.shops : shops as KtList<Shop>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.shops) : assert(shops != null);

  @override
  final KtList<Shop> shops;

  @override
  String toString() {
    return 'ShopWatcherState.loadSuccess(shops: $shops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shops);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Shop> shops),
    @required TResult loadFailure(ShopFailure shopFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(shops);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Shop> shops),
    TResult loadFailure(ShopFailure shopFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(shops);
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

abstract class _LoadSuccess implements ShopWatcherState {
  const factory _LoadSuccess(KtList<Shop> shops) = _$_LoadSuccess;

  KtList<Shop> get shops;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ShopFailure shopFailure});

  $ShopFailureCopyWith<$Res> get shopFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ShopWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object shopFailure = freezed,
  }) {
    return _then(_LoadFailure(
      shopFailure == freezed ? _value.shopFailure : shopFailure as ShopFailure,
    ));
  }

  @override
  $ShopFailureCopyWith<$Res> get shopFailure {
    if (_value.shopFailure == null) {
      return null;
    }
    return $ShopFailureCopyWith<$Res>(_value.shopFailure, (value) {
      return _then(_value.copyWith(shopFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.shopFailure) : assert(shopFailure != null);

  @override
  final ShopFailure shopFailure;

  @override
  String toString() {
    return 'ShopWatcherState.loadFailure(shopFailure: $shopFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.shopFailure, shopFailure) ||
                const DeepCollectionEquality()
                    .equals(other.shopFailure, shopFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shopFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Shop> shops),
    @required TResult loadFailure(ShopFailure shopFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(shopFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Shop> shops),
    TResult loadFailure(ShopFailure shopFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(shopFailure);
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

abstract class _LoadFailure implements ShopWatcherState {
  const factory _LoadFailure(ShopFailure shopFailure) = _$_LoadFailure;

  ShopFailure get shopFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
