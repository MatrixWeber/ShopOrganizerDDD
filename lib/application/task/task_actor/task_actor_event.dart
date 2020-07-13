part of 'task_actor_bloc.dart';

@freezed
abstract class TaskActorEvent with _$TaskActorEvent {
  const factory TaskActorEvent.deleted(TaskDescription taskDescription) =
      _Deleted;
}
