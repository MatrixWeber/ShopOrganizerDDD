// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'worker_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkerWatcherEventTearOff {
  const _$WorkerWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(Shop shop) {
    return _WatchAllStarted(
      shop,
    );
  }

// ignore: unused_element
  _WorkersReceived workerReceived(
      Either<WorkerFailure, KtList<Worker>> failureOrWorkers) {
    return _WorkersReceived(
      failureOrWorkers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkerWatcherEvent = _$WorkerWatcherEventTearOff();

/// @nodoc
mixin _$WorkerWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(Shop shop),
    @required
        TResult workerReceived(
            Either<WorkerFailure, KtList<Worker>> failureOrWorkers),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(Shop shop),
    TResult workerReceived(
        Either<WorkerFailure, KtList<Worker>> failureOrWorkers),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult workerReceived(_WorkersReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult workerReceived(_WorkersReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WorkerWatcherEventCopyWith<$Res> {
  factory $WorkerWatcherEventCopyWith(
          WorkerWatcherEvent value, $Res Function(WorkerWatcherEvent) then) =
      _$WorkerWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkerWatcherEventCopyWithImpl<$Res>
    implements $WorkerWatcherEventCopyWith<$Res> {
  _$WorkerWatcherEventCopyWithImpl(this._value, this._then);

  final WorkerWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(WorkerWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({Shop shop});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$WorkerWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object shop = freezed,
  }) {
    return _then(_WatchAllStarted(
      shop == freezed ? _value.shop : shop as Shop,
    ));
  }

  @override
  $ShopCopyWith<$Res> get shop {
    if (_value.shop == null) {
      return null;
    }
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.shop) : assert(shop != null);

  @override
  final Shop shop;

  @override
  String toString() {
    return 'WorkerWatcherEvent.watchAllStarted(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.shop, shop) ||
                const DeepCollectionEquality().equals(other.shop, shop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shop);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(Shop shop),
    @required
        TResult workerReceived(
            Either<WorkerFailure, KtList<Worker>> failureOrWorkers),
  }) {
    assert(watchAllStarted != null);
    assert(workerReceived != null);
    return watchAllStarted(shop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(Shop shop),
    TResult workerReceived(
        Either<WorkerFailure, KtList<Worker>> failureOrWorkers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(shop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult workerReceived(_WorkersReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(workerReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult workerReceived(_WorkersReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements WorkerWatcherEvent {
  const factory _WatchAllStarted(Shop shop) = _$_WatchAllStarted;

  Shop get shop;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$WorkersReceivedCopyWith<$Res> {
  factory _$WorkersReceivedCopyWith(
          _WorkersReceived value, $Res Function(_WorkersReceived) then) =
      __$WorkersReceivedCopyWithImpl<$Res>;
  $Res call({Either<WorkerFailure, KtList<Worker>> failureOrWorkers});
}

/// @nodoc
class __$WorkersReceivedCopyWithImpl<$Res>
    extends _$WorkerWatcherEventCopyWithImpl<$Res>
    implements _$WorkersReceivedCopyWith<$Res> {
  __$WorkersReceivedCopyWithImpl(
      _WorkersReceived _value, $Res Function(_WorkersReceived) _then)
      : super(_value, (v) => _then(v as _WorkersReceived));

  @override
  _WorkersReceived get _value => super._value as _WorkersReceived;

  @override
  $Res call({
    Object failureOrWorkers = freezed,
  }) {
    return _then(_WorkersReceived(
      failureOrWorkers == freezed
          ? _value.failureOrWorkers
          : failureOrWorkers as Either<WorkerFailure, KtList<Worker>>,
    ));
  }
}

/// @nodoc
class _$_WorkersReceived implements _WorkersReceived {
  const _$_WorkersReceived(this.failureOrWorkers)
      : assert(failureOrWorkers != null);

  @override
  final Either<WorkerFailure, KtList<Worker>> failureOrWorkers;

  @override
  String toString() {
    return 'WorkerWatcherEvent.workerReceived(failureOrWorkers: $failureOrWorkers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkersReceived &&
            (identical(other.failureOrWorkers, failureOrWorkers) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrWorkers, failureOrWorkers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrWorkers);

  @override
  _$WorkersReceivedCopyWith<_WorkersReceived> get copyWith =>
      __$WorkersReceivedCopyWithImpl<_WorkersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(Shop shop),
    @required
        TResult workerReceived(
            Either<WorkerFailure, KtList<Worker>> failureOrWorkers),
  }) {
    assert(watchAllStarted != null);
    assert(workerReceived != null);
    return workerReceived(failureOrWorkers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(Shop shop),
    TResult workerReceived(
        Either<WorkerFailure, KtList<Worker>> failureOrWorkers),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workerReceived != null) {
      return workerReceived(failureOrWorkers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult workerReceived(_WorkersReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(workerReceived != null);
    return workerReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult workerReceived(_WorkersReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workerReceived != null) {
      return workerReceived(this);
    }
    return orElse();
  }
}

abstract class _WorkersReceived implements WorkerWatcherEvent {
  const factory _WorkersReceived(
          Either<WorkerFailure, KtList<Worker>> failureOrWorkers) =
      _$_WorkersReceived;

  Either<WorkerFailure, KtList<Worker>> get failureOrWorkers;
  _$WorkersReceivedCopyWith<_WorkersReceived> get copyWith;
}

/// @nodoc
class _$WorkerWatcherStateTearOff {
  const _$WorkerWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Worker> worker) {
    return _LoadSuccess(
      worker,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(WorkerFailure workerFailure) {
    return _LoadFailure(
      workerFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkerWatcherState = _$WorkerWatcherStateTearOff();

/// @nodoc
mixin _$WorkerWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Worker> worker),
    @required TResult loadFailure(WorkerFailure workerFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Worker> worker),
    TResult loadFailure(WorkerFailure workerFailure),
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
abstract class $WorkerWatcherStateCopyWith<$Res> {
  factory $WorkerWatcherStateCopyWith(
          WorkerWatcherState value, $Res Function(WorkerWatcherState) then) =
      _$WorkerWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkerWatcherStateCopyWithImpl<$Res>
    implements $WorkerWatcherStateCopyWith<$Res> {
  _$WorkerWatcherStateCopyWithImpl(this._value, this._then);

  final WorkerWatcherState _value;
  // ignore: unused_field
  final $Res Function(WorkerWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$WorkerWatcherStateCopyWithImpl<$Res>
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
    return 'WorkerWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<Worker> worker),
    @required TResult loadFailure(WorkerFailure workerFailure),
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
    TResult loadSuccess(KtList<Worker> worker),
    TResult loadFailure(WorkerFailure workerFailure),
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

abstract class _Initial implements WorkerWatcherState {
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
    extends _$WorkerWatcherStateCopyWithImpl<$Res>
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
    return 'WorkerWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<Worker> worker),
    @required TResult loadFailure(WorkerFailure workerFailure),
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
    TResult loadSuccess(KtList<Worker> worker),
    TResult loadFailure(WorkerFailure workerFailure),
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

abstract class _LoadInProgress implements WorkerWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Worker> worker});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$WorkerWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object worker = freezed,
  }) {
    return _then(_LoadSuccess(
      worker == freezed ? _value.worker : worker as KtList<Worker>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.worker) : assert(worker != null);

  @override
  final KtList<Worker> worker;

  @override
  String toString() {
    return 'WorkerWatcherState.loadSuccess(worker: $worker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.worker, worker) ||
                const DeepCollectionEquality().equals(other.worker, worker)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(worker);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Worker> worker),
    @required TResult loadFailure(WorkerFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(worker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Worker> worker),
    TResult loadFailure(WorkerFailure workerFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(worker);
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

abstract class _LoadSuccess implements WorkerWatcherState {
  const factory _LoadSuccess(KtList<Worker> worker) = _$_LoadSuccess;

  KtList<Worker> get worker;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({WorkerFailure workerFailure});

  $WorkerFailureCopyWith<$Res> get workerFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$WorkerWatcherStateCopyWithImpl<$Res>
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

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.workerFailure) : assert(workerFailure != null);

  @override
  final WorkerFailure workerFailure;

  @override
  String toString() {
    return 'WorkerWatcherState.loadFailure(workerFailure: $workerFailure)';
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
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Worker> worker),
    @required TResult loadFailure(WorkerFailure workerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(workerFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Worker> worker),
    TResult loadFailure(WorkerFailure workerFailure),
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

abstract class _LoadFailure implements WorkerWatcherState {
  const factory _LoadFailure(WorkerFailure workerFailure) = _$_LoadFailure;

  WorkerFailure get workerFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
