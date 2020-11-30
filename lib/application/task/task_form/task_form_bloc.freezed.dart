// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskFormEventTearOff {
  const _$TaskFormEventTearOff();

// ignore: unused_element
  Initialized initialized(Option<TaskDescription> initialTaskOption) {
    return Initialized(
      initialTaskOption,
    );
  }

// ignore: unused_element
  TaskNameChanged taskNameChanged(String taskName) {
    return TaskNameChanged(
      taskName,
    );
  }

// ignore: unused_element
  DurationChanged durationChanged(Duration duration) {
    return DurationChanged(
      duration,
    );
  }

// ignore: unused_element
  PriceChanged priceChanged(double price) {
    return PriceChanged(
      price,
    );
  }

// ignore: unused_element
  Saved saved() {
    return const Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $TaskFormEvent = _$TaskFormEventTearOff();

/// @nodoc
mixin _$TaskFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TaskDescription> initialTaskOption),
    @required TResult taskNameChanged(String taskName),
    @required TResult durationChanged(Duration duration),
    @required TResult priceChanged(double price),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TaskDescription> initialTaskOption),
    TResult taskNameChanged(String taskName),
    TResult durationChanged(Duration duration),
    TResult priceChanged(double price),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult taskNameChanged(TaskNameChanged value),
    @required TResult durationChanged(DurationChanged value),
    @required TResult priceChanged(PriceChanged value),
    @required TResult saved(Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult taskNameChanged(TaskNameChanged value),
    TResult durationChanged(DurationChanged value),
    TResult priceChanged(PriceChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TaskFormEventCopyWith<$Res> {
  factory $TaskFormEventCopyWith(
          TaskFormEvent value, $Res Function(TaskFormEvent) then) =
      _$TaskFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskFormEventCopyWithImpl<$Res>
    implements $TaskFormEventCopyWith<$Res> {
  _$TaskFormEventCopyWithImpl(this._value, this._then);

  final TaskFormEvent _value;
  // ignore: unused_field
  final $Res Function(TaskFormEvent) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
  $Res call({Option<TaskDescription> initialTaskOption});
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;

  @override
  $Res call({
    Object initialTaskOption = freezed,
  }) {
    return _then(Initialized(
      initialTaskOption == freezed
          ? _value.initialTaskOption
          : initialTaskOption as Option<TaskDescription>,
    ));
  }
}

/// @nodoc
class _$Initialized implements Initialized {
  const _$Initialized(this.initialTaskOption)
      : assert(initialTaskOption != null);

  @override
  final Option<TaskDescription> initialTaskOption;

  @override
  String toString() {
    return 'TaskFormEvent.initialized(initialTaskOption: $initialTaskOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialized &&
            (identical(other.initialTaskOption, initialTaskOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialTaskOption, initialTaskOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialTaskOption);

  @override
  $InitializedCopyWith<Initialized> get copyWith =>
      _$InitializedCopyWithImpl<Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TaskDescription> initialTaskOption),
    @required TResult taskNameChanged(String taskName),
    @required TResult durationChanged(Duration duration),
    @required TResult priceChanged(double price),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return initialized(initialTaskOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TaskDescription> initialTaskOption),
    TResult taskNameChanged(String taskName),
    TResult durationChanged(Duration duration),
    TResult priceChanged(double price),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialTaskOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult taskNameChanged(TaskNameChanged value),
    @required TResult durationChanged(DurationChanged value),
    @required TResult priceChanged(PriceChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult taskNameChanged(TaskNameChanged value),
    TResult durationChanged(DurationChanged value),
    TResult priceChanged(PriceChanged value),
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

abstract class Initialized implements TaskFormEvent {
  const factory Initialized(Option<TaskDescription> initialTaskOption) =
      _$Initialized;

  Option<TaskDescription> get initialTaskOption;
  $InitializedCopyWith<Initialized> get copyWith;
}

/// @nodoc
abstract class $TaskNameChangedCopyWith<$Res> {
  factory $TaskNameChangedCopyWith(
          TaskNameChanged value, $Res Function(TaskNameChanged) then) =
      _$TaskNameChangedCopyWithImpl<$Res>;
  $Res call({String taskName});
}

/// @nodoc
class _$TaskNameChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements $TaskNameChangedCopyWith<$Res> {
  _$TaskNameChangedCopyWithImpl(
      TaskNameChanged _value, $Res Function(TaskNameChanged) _then)
      : super(_value, (v) => _then(v as TaskNameChanged));

  @override
  TaskNameChanged get _value => super._value as TaskNameChanged;

  @override
  $Res call({
    Object taskName = freezed,
  }) {
    return _then(TaskNameChanged(
      taskName == freezed ? _value.taskName : taskName as String,
    ));
  }
}

/// @nodoc
class _$TaskNameChanged implements TaskNameChanged {
  const _$TaskNameChanged(this.taskName) : assert(taskName != null);

  @override
  final String taskName;

  @override
  String toString() {
    return 'TaskFormEvent.taskNameChanged(taskName: $taskName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TaskNameChanged &&
            (identical(other.taskName, taskName) ||
                const DeepCollectionEquality()
                    .equals(other.taskName, taskName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(taskName);

  @override
  $TaskNameChangedCopyWith<TaskNameChanged> get copyWith =>
      _$TaskNameChangedCopyWithImpl<TaskNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TaskDescription> initialTaskOption),
    @required TResult taskNameChanged(String taskName),
    @required TResult durationChanged(Duration duration),
    @required TResult priceChanged(double price),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return taskNameChanged(taskName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TaskDescription> initialTaskOption),
    TResult taskNameChanged(String taskName),
    TResult durationChanged(Duration duration),
    TResult priceChanged(double price),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (taskNameChanged != null) {
      return taskNameChanged(taskName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult taskNameChanged(TaskNameChanged value),
    @required TResult durationChanged(DurationChanged value),
    @required TResult priceChanged(PriceChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return taskNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult taskNameChanged(TaskNameChanged value),
    TResult durationChanged(DurationChanged value),
    TResult priceChanged(PriceChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (taskNameChanged != null) {
      return taskNameChanged(this);
    }
    return orElse();
  }
}

abstract class TaskNameChanged implements TaskFormEvent {
  const factory TaskNameChanged(String taskName) = _$TaskNameChanged;

  String get taskName;
  $TaskNameChangedCopyWith<TaskNameChanged> get copyWith;
}

/// @nodoc
abstract class $DurationChangedCopyWith<$Res> {
  factory $DurationChangedCopyWith(
          DurationChanged value, $Res Function(DurationChanged) then) =
      _$DurationChangedCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class _$DurationChangedCopyWithImpl<$Res>
    extends _$TaskFormEventCopyWithImpl<$Res>
    implements $DurationChangedCopyWith<$Res> {
  _$DurationChangedCopyWithImpl(
      DurationChanged _value, $Res Function(DurationChanged) _then)
      : super(_value, (v) => _then(v as DurationChanged));

  @override
  DurationChanged get _value => super._value as DurationChanged;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(DurationChanged(
      duration == freezed ? _value.duration : duration as Duration,
    ));
  }
}

/// @nodoc
class _$DurationChanged implements DurationChanged {
  const _$DurationChanged(this.duration) : assert(duration != null);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'TaskFormEvent.durationChanged(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DurationChanged &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @override
  $DurationChangedCopyWith<DurationChanged> get copyWith =>
      _$DurationChangedCopyWithImpl<DurationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TaskDescription> initialTaskOption),
    @required TResult taskNameChanged(String taskName),
    @required TResult durationChanged(Duration duration),
    @required TResult priceChanged(double price),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return durationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TaskDescription> initialTaskOption),
    TResult taskNameChanged(String taskName),
    TResult durationChanged(Duration duration),
    TResult priceChanged(double price),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (durationChanged != null) {
      return durationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult taskNameChanged(TaskNameChanged value),
    @required TResult durationChanged(DurationChanged value),
    @required TResult priceChanged(PriceChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return durationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult taskNameChanged(TaskNameChanged value),
    TResult durationChanged(DurationChanged value),
    TResult priceChanged(PriceChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (durationChanged != null) {
      return durationChanged(this);
    }
    return orElse();
  }
}

abstract class DurationChanged implements TaskFormEvent {
  const factory DurationChanged(Duration duration) = _$DurationChanged;

  Duration get duration;
  $DurationChangedCopyWith<DurationChanged> get copyWith;
}

/// @nodoc
abstract class $PriceChangedCopyWith<$Res> {
  factory $PriceChangedCopyWith(
          PriceChanged value, $Res Function(PriceChanged) then) =
      _$PriceChangedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceChangedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
    implements $PriceChangedCopyWith<$Res> {
  _$PriceChangedCopyWithImpl(
      PriceChanged _value, $Res Function(PriceChanged) _then)
      : super(_value, (v) => _then(v as PriceChanged));

  @override
  PriceChanged get _value => super._value as PriceChanged;

  @override
  $Res call({
    Object price = freezed,
  }) {
    return _then(PriceChanged(
      price == freezed ? _value.price : price as double,
    ));
  }
}

/// @nodoc
class _$PriceChanged implements PriceChanged {
  const _$PriceChanged(this.price) : assert(price != null);

  @override
  final double price;

  @override
  String toString() {
    return 'TaskFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PriceChanged &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @override
  $PriceChangedCopyWith<PriceChanged> get copyWith =>
      _$PriceChangedCopyWithImpl<PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<TaskDescription> initialTaskOption),
    @required TResult taskNameChanged(String taskName),
    @required TResult durationChanged(Duration duration),
    @required TResult priceChanged(double price),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TaskDescription> initialTaskOption),
    TResult taskNameChanged(String taskName),
    TResult durationChanged(Duration duration),
    TResult priceChanged(double price),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult taskNameChanged(TaskNameChanged value),
    @required TResult durationChanged(DurationChanged value),
    @required TResult priceChanged(PriceChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult taskNameChanged(TaskNameChanged value),
    TResult durationChanged(DurationChanged value),
    TResult priceChanged(PriceChanged value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class PriceChanged implements TaskFormEvent {
  const factory PriceChanged(double price) = _$PriceChanged;

  double get price;
  $PriceChangedCopyWith<PriceChanged> get copyWith;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$TaskFormEventCopyWithImpl<$Res>
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
    return 'TaskFormEvent.saved()';
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
    @required TResult initialized(Option<TaskDescription> initialTaskOption),
    @required TResult taskNameChanged(String taskName),
    @required TResult durationChanged(Duration duration),
    @required TResult priceChanged(double price),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<TaskDescription> initialTaskOption),
    TResult taskNameChanged(String taskName),
    TResult durationChanged(Duration duration),
    TResult priceChanged(double price),
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
    @required TResult taskNameChanged(TaskNameChanged value),
    @required TResult durationChanged(DurationChanged value),
    @required TResult priceChanged(PriceChanged value),
    @required TResult saved(Saved value),
  }) {
    assert(initialized != null);
    assert(taskNameChanged != null);
    assert(durationChanged != null);
    assert(priceChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult taskNameChanged(TaskNameChanged value),
    TResult durationChanged(DurationChanged value),
    TResult priceChanged(PriceChanged value),
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

abstract class Saved implements TaskFormEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
class _$TaskFormStateTearOff {
  const _$TaskFormStateTearOff();

// ignore: unused_element
  _TaskFormState call(
      {@required TaskDescription task,
      @required bool showErrorMessage,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption}) {
    return _TaskFormState(
      task: task,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskFormState = _$TaskFormStateTearOff();

/// @nodoc
mixin _$TaskFormState {
  TaskDescription get task;
  bool get showErrorMessage;
  bool get isEditing;
  bool get isSaving;
  Option<Either<TaskFailure, Unit>> get saveFailureOrSuccessOption;

  $TaskFormStateCopyWith<TaskFormState> get copyWith;
}

/// @nodoc
abstract class $TaskFormStateCopyWith<$Res> {
  factory $TaskFormStateCopyWith(
          TaskFormState value, $Res Function(TaskFormState) then) =
      _$TaskFormStateCopyWithImpl<$Res>;
  $Res call(
      {TaskDescription task,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption});

  $TaskDescriptionCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskFormStateCopyWithImpl<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  _$TaskFormStateCopyWithImpl(this._value, this._then);

  final TaskFormState _value;
  // ignore: unused_field
  final $Res Function(TaskFormState) _then;

  @override
  $Res call({
    Object task = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed ? _value.task : task as TaskDescription,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
    ));
  }

  @override
  $TaskDescriptionCopyWith<$Res> get task {
    if (_value.task == null) {
      return null;
    }
    return $TaskDescriptionCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$TaskFormStateCopyWith<$Res>
    implements $TaskFormStateCopyWith<$Res> {
  factory _$TaskFormStateCopyWith(
          _TaskFormState value, $Res Function(_TaskFormState) then) =
      __$TaskFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TaskDescription task,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $TaskDescriptionCopyWith<$Res> get task;
}

/// @nodoc
class __$TaskFormStateCopyWithImpl<$Res>
    extends _$TaskFormStateCopyWithImpl<$Res>
    implements _$TaskFormStateCopyWith<$Res> {
  __$TaskFormStateCopyWithImpl(
      _TaskFormState _value, $Res Function(_TaskFormState) _then)
      : super(_value, (v) => _then(v as _TaskFormState));

  @override
  _TaskFormState get _value => super._value as _TaskFormState;

  @override
  $Res call({
    Object task = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_TaskFormState(
      task: task == freezed ? _value.task : task as TaskDescription,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<TaskFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TaskFormState implements _TaskFormState {
  _$_TaskFormState(
      {@required this.task,
      @required this.showErrorMessage,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(task != null),
        assert(showErrorMessage != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final TaskDescription task;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'TaskFormState(task: $task, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskFormState &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
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
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith =>
      __$TaskFormStateCopyWithImpl<_TaskFormState>(this, _$identity);
}

abstract class _TaskFormState implements TaskFormState {
  factory _TaskFormState(
          {@required
              TaskDescription task,
          @required
              bool showErrorMessage,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_TaskFormState;

  @override
  TaskDescription get task;
  @override
  bool get showErrorMessage;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<TaskFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$TaskFormStateCopyWith<_TaskFormState> get copyWith;
}
