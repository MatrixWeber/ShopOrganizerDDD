import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

@freezed
// in order to have methods on a freezed class
// we need to change the with to implements
// and provide a private Constructor
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem(
      {@required UniqueId id,
      @required TodoName name,
      @required bool done}) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        id: UniqueId(),
        name: TodoName(''),
        done: false,
      );

  // if everything is valid we are returning none() => no failure
  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
