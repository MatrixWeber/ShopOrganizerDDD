// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'task_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TaskActorEventTearOff {
  const _$TaskActorEventTearOff();

  _Deleted deleted(TaskDescription taskDescription) {
    return _Deleted(
      taskDescription,
    );
  }
}

// ignore: unused_element
const $TaskActorEvent = _$TaskActorEventTearOff();

mixin _$TaskActorEvent {
  TaskDescription get taskDescription;

  $TaskActorEventCopyWith<TaskActorEvent> get copyWith;
}

abstract class $TaskActorEventCopyWith<$Res> {
  factory $TaskActorEventCopyWith(
          TaskActorEvent value, $Res Function(TaskActorEvent) then) =
      _$TaskActorEventCopyWithImpl<$Res>;
  $Res call({TaskDescription taskDescription});

  $TaskDescriptionCopyWith<$Res> get taskDescription;
}

class _$TaskActorEventCopyWithImpl<$Res>
    implements $TaskActorEventCopyWith<$Res> {
  _$TaskActorEventCopyWithImpl(this._value, this._then);

  final TaskActorEvent _value;
  // ignore: unused_field
  final $Res Function(TaskActorEvent) _then;

  @override
  $Res call({
    Object taskDescription = freezed,
  }) {
    return _then(_value.copyWith(
      taskDescription: taskDescription == freezed
          ? _value.taskDescription
          : taskDescription as TaskDescription,
    ));
  }

  @override
  $TaskDescriptionCopyWith<$Res> get taskDescription {
    if (_value.taskDescription == null) {
      return null;
    }
    return $TaskDescriptionCopyWith<$Res>(_value.taskDescription, (value) {
      return _then(_value.copyWith(taskDescription: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res>
    implements $TaskActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({TaskDescription taskDescription});

  @override
  $TaskDescriptionCopyWith<$Res> get taskDescription;
}

class __$DeletedCopyWithImpl<$Res> extends _$TaskActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object taskDescription = freezed,
  }) {
    return _then(_Deleted(
      taskDescription == freezed
          ? _value.taskDescription
          : taskDescription as TaskDescription,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.taskDescription) : assert(taskDescription != null);

  @override
  final TaskDescription taskDescription;

  @override
  String toString() {
    return 'TaskActorEvent.deleted(taskDescription: $taskDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.taskDescription, taskDescription) ||
                const DeepCollectionEquality()
                    .equals(other.taskDescription, taskDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(taskDescription);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);
}

abstract class _Deleted implements TaskActorEvent {
  const factory _Deleted(TaskDescription taskDescription) = _$_Deleted;

  @override
  TaskDescription get taskDescription;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$TaskActorStateTearOff {
  const _$TaskActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _DeleteFailure deleteFailure(TaskFailure taskFailure) {
    return _DeleteFailure(
      taskFailure,
    );
  }
}

// ignore: unused_element
const $TaskActorState = _$TaskActorStateTearOff();

mixin _$TaskActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(TaskFailure taskFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(TaskFailure taskFailure),
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

abstract class $TaskActorStateCopyWith<$Res> {
  factory $TaskActorStateCopyWith(
          TaskActorState value, $Res Function(TaskActorState) then) =
      _$TaskActorStateCopyWithImpl<$Res>;
}

class _$TaskActorStateCopyWithImpl<$Res>
    implements $TaskActorStateCopyWith<$Res> {
  _$TaskActorStateCopyWithImpl(this._value, this._then);

  final TaskActorState _value;
  // ignore: unused_field
  final $Res Function(TaskActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$TaskActorStateCopyWithImpl<$Res>
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
    return 'TaskActorState.initial()';
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
    @required Result deleteFailure(TaskFailure taskFailure),
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
    Result deleteFailure(TaskFailure taskFailure),
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

abstract class _Initial implements TaskActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
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
    return 'TaskActorState.actionInProgress()';
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
    @required Result deleteFailure(TaskFailure taskFailure),
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
    Result deleteFailure(TaskFailure taskFailure),
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

abstract class _ActionInProgress implements TaskActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
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
    return 'TaskActorState.deleteSuccess()';
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
    @required Result deleteFailure(TaskFailure taskFailure),
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
    Result deleteFailure(TaskFailure taskFailure),
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

abstract class _DeleteSuccess implements TaskActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({TaskFailure taskFailure});

  $TaskFailureCopyWith<$Res> get taskFailure;
}

class __$DeleteFailureCopyWithImpl<$Res>
    extends _$TaskActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object taskFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      taskFailure == freezed ? _value.taskFailure : taskFailure as TaskFailure,
    ));
  }

  @override
  $TaskFailureCopyWith<$Res> get taskFailure {
    if (_value.taskFailure == null) {
      return null;
    }
    return $TaskFailureCopyWith<$Res>(_value.taskFailure, (value) {
      return _then(_value.copyWith(taskFailure: value));
    });
  }
}

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.taskFailure) : assert(taskFailure != null);

  @override
  final TaskFailure taskFailure;

  @override
  String toString() {
    return 'TaskActorState.deleteFailure(taskFailure: $taskFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.taskFailure, taskFailure) ||
                const DeepCollectionEquality()
                    .equals(other.taskFailure, taskFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(taskFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(TaskFailure taskFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(taskFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(TaskFailure taskFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(taskFailure);
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

abstract class _DeleteFailure implements TaskActorState {
  const factory _DeleteFailure(TaskFailure taskFailure) = _$_DeleteFailure;

  TaskFailure get taskFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}
