import 'package:firebase_ddd_tutorial/domain/tasks/i_task_repository.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/task_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'task_actor_event.dart';
part 'task_actor_state.dart';
part 'task_actor_bloc.freezed.dart';

@injectable
class TaskActorBloc extends Bloc<TaskActorEvent, TaskActorState> {
  final ITaskRepository _taskRepository;

  TaskActorBloc(this._taskRepository) : super(const TaskActorState.initial());

  @override
  Stream<TaskActorState> mapEventToState(
    TaskActorEvent event,
  ) async* {
    yield const TaskActorState.actionInProgress();
    final possibleFailure = await _taskRepository.delete(event.taskDescription);
    yield possibleFailure.fold(
      (f) => TaskActorState.deleteFailure(f),
      (_) => const TaskActorState.deleteSuccess(),
    );
  }
}
