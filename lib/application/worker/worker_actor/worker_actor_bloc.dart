import 'package:firebase_ddd_tutorial/domain/worker/i_worker_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'worker_actor_event.dart';
part 'worker_actor_state.dart';
part 'worker_actor_bloc.freezed.dart';

@injectable
class WorkerActorBloc extends Bloc<WorkerActorEvent, WorkerActorState> {
  final IWorkerRepository _workerRepository;

  WorkerActorBloc(this._workerRepository)
      : super(const WorkerActorState.initial());

  @override
  Stream<WorkerActorState> mapEventToState(
    WorkerActorEvent event,
  ) async* {
    yield const WorkerActorState.actionInProgress();
    final possibleFailure = await _workerRepository.delete(event.worker);
    yield possibleFailure.fold(
      (f) => WorkerActorState.deleteFailure(f),
      (_) => const WorkerActorState.deleteSuccess(),
    );
  }
}
