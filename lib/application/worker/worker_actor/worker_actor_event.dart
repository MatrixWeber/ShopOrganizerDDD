part of 'worker_actor_bloc.dart';

@freezed
abstract class WorkerActorEvent with _$WorkerActorEvent {
  const factory WorkerActorEvent.deleted(Worker worker) = _Deleted;
}
