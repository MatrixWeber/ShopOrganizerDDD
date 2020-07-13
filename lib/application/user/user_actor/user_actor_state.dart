part of 'user_actor_bloc.dart';

@freezed
abstract class UserActorState with _$UserActorState {
  const factory UserActorState.initial() = _Initial;
  const factory UserActorState.actionInProgress() = _ActionInProgress;
  const factory UserActorState.deleteSuccess() = _DeleteSuccess;
  const factory UserActorState.deleteFailure(UserFailure userFailure) =
      _DeleteFailure;
}
