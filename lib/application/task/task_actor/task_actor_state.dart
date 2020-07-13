part of 'task_actor_bloc.dart';

@freezed
abstract class TaskActorState with _$TaskActorState {
  const factory TaskActorState.initial() = _Initial;
  const factory TaskActorState.actionInProgress() = _ActionInProgress;
  const factory TaskActorState.deleteSuccess() = _DeleteSuccess;
  const factory TaskActorState.deleteFailure(TaskFailure taskFailure) =
      _DeleteFailure;
}
