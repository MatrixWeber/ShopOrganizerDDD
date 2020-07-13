// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'shop_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShopActorEventTearOff {
  const _$ShopActorEventTearOff();

  _Deleted deleted(Shop shop) {
    return _Deleted(
      shop,
    );
  }
}

// ignore: unused_element
const $ShopActorEvent = _$ShopActorEventTearOff();

mixin _$ShopActorEvent {
  Shop get shop;

  $ShopActorEventCopyWith<ShopActorEvent> get copyWith;
}

abstract class $ShopActorEventCopyWith<$Res> {
  factory $ShopActorEventCopyWith(
          ShopActorEvent value, $Res Function(ShopActorEvent) then) =
      _$ShopActorEventCopyWithImpl<$Res>;
  $Res call({Shop shop});

  $ShopCopyWith<$Res> get shop;
}

class _$ShopActorEventCopyWithImpl<$Res>
    implements $ShopActorEventCopyWith<$Res> {
  _$ShopActorEventCopyWithImpl(this._value, this._then);

  final ShopActorEvent _value;
  // ignore: unused_field
  final $Res Function(ShopActorEvent) _then;

  @override
  $Res call({
    Object shop = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed ? _value.shop : shop as Shop,
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

abstract class _$DeletedCopyWith<$Res>
    implements $ShopActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Shop shop});

  @override
  $ShopCopyWith<$Res> get shop;
}

class __$DeletedCopyWithImpl<$Res> extends _$ShopActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object shop = freezed,
  }) {
    return _then(_Deleted(
      shop == freezed ? _value.shop : shop as Shop,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.shop) : assert(shop != null);

  @override
  final Shop shop;

  @override
  String toString() {
    return 'ShopActorEvent.deleted(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.shop, shop) ||
                const DeepCollectionEquality().equals(other.shop, shop)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shop);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);
}

abstract class _Deleted implements ShopActorEvent {
  const factory _Deleted(Shop shop) = _$_Deleted;

  @override
  Shop get shop;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$ShopActorStateTearOff {
  const _$ShopActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _DeleteFailure deleteFailure(ShopFailure shopFailure) {
    return _DeleteFailure(
      shopFailure,
    );
  }
}

// ignore: unused_element
const $ShopActorState = _$ShopActorStateTearOff();

mixin _$ShopActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ShopFailure shopFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ShopFailure shopFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  });
}

abstract class $ShopActorStateCopyWith<$Res> {
  factory $ShopActorStateCopyWith(
          ShopActorState value, $Res Function(ShopActorState) then) =
      _$ShopActorStateCopyWithImpl<$Res>;
}

class _$ShopActorStateCopyWithImpl<$Res>
    implements $ShopActorStateCopyWith<$Res> {
  _$ShopActorStateCopyWithImpl(this._value, this._then);

  final ShopActorState _value;
  // ignore: unused_field
  final $Res Function(ShopActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ShopActorStateCopyWithImpl<$Res>
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
    return 'ShopActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ShopFailure shopFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ShopFailure shopFailure),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ShopActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ShopActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ShopActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ShopFailure shopFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ShopFailure shopFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ShopActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$ShopActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'ShopActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ShopFailure shopFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ShopFailure shopFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements ShopActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ShopFailure shopFailure});

  $ShopFailureCopyWith<$Res> get shopFailure;
}

class __$DeleteFailureCopyWithImpl<$Res>
    extends _$ShopActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object shopFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.shopFailure) : assert(shopFailure != null);

  @override
  final ShopFailure shopFailure;

  @override
  String toString() {
    return 'ShopActorState.deleteFailure(shopFailure: $shopFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.shopFailure, shopFailure) ||
                const DeepCollectionEquality()
                    .equals(other.shopFailure, shopFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shopFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(ShopFailure shopFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(shopFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(ShopFailure shopFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(shopFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ShopActorState {
  const factory _DeleteFailure(ShopFailure shopFailure) = _$_DeleteFailure;

  ShopFailure get shopFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}
