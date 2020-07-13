part of 'user_actor_bloc.dart';

@freezed
abstract class UserActorEvent with _$UserActorEvent {
  const factory UserActorEvent.deleted(User user) = _Deleted;
}
