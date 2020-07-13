import 'package:firebase_ddd_tutorial/domain/user/i_user_repository.dart';
import 'package:firebase_ddd_tutorial/domain/user/user.dart';
import 'package:firebase_ddd_tutorial/domain/user/user_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_actor_event.dart';
part 'user_actor_state.dart';
part 'user_actor_bloc.freezed.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  final IUserRepository _userRepository;

  UserActorBloc(this._userRepository);
  @override
  UserActorState get initialState => const UserActorState.initial();

  @override
  Stream<UserActorState> mapEventToState(
    UserActorEvent event,
  ) async* {
    yield const UserActorState.actionInProgress();
    final possibleFailure = await _userRepository.delete(event.user);
    yield possibleFailure.fold(
      (f) => UserActorState.deleteFailure(f),
      (_) => const UserActorState.deleteSuccess(),
    );
  }
}
