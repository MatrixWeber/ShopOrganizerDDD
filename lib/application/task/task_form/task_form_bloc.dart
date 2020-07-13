import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/i_task_repository.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task_failure.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'task_form_event.dart';
part 'task_form_state.dart';

part 'task_form_bloc.freezed.dart';

@injectable
class TaskFormBloc extends Bloc<TaskFormEvent, TaskFormState> {
  final ITaskRepository _taskRepository;

  TaskFormBloc(this._taskRepository);
  @override
  TaskFormState get initialState => TaskFormState.initial();

  @override
  Stream<TaskFormState> mapEventToState(
    TaskFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialTaskOption.fold(
            () => state,
            (initialTask) => state.copyWith(
                  task: initialTask,
                  isEditing: true,
                ));
      },
      taskNameChanged: (e) async* {
        yield state.copyWith(
          task: state.task.copyWith(name: TaskName(e.taskName)),
          saveFailureOrSuccessOption: none(),
        );
      },
      durationChanged: (e) async* {
        yield state.copyWith(
          task: state.task.copyWith(duration: TaskDuration(e.duration)),
          saveFailureOrSuccessOption: none(),
        );
      },
      priceChanged: (e) async* {
        yield state.copyWith(
          task: state.task.copyWith(price: Price(e.price)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<TaskFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.task.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _taskRepository.update(state.task)
              : await _taskRepository.create(state.task);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
