import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
abstract class TaskDescription implements _$TaskDescription {
  const TaskDescription._();

  const factory TaskDescription({
    @required UniqueId id,
    @required TaskName name,
    @required TaskDuration duration,
    @required Price price,
  }) = _TaskDescription;

  factory TaskDescription.empty() => TaskDescription(
        id: UniqueId(),
        name: TaskName('test'),
        duration: TaskDuration(const Duration(hours: 1)),
        price: Price(10.0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // like flatMap andThen checks as well if first
    // fails the others wan't be evaluated
    return name.failureOrUnit
        .andThen(duration.failureOrUnit)
        .andThen(price.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
