part of 'worker_actor_bloc.dart';

@freezed
abstract class WorkerActorState with _$WorkerActorState {
  const factory WorkerActorState.initial() = _Initial;
  const factory WorkerActorState.actionInProgress() = _ActionInProgress;
  const factory WorkerActorState.deleteSuccess() = _DeleteSuccess;
  const factory WorkerActorState.deleteFailure(WorkerFailure workerFailure) =
      _DeleteFailure;
}
