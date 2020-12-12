import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'worker_watcher_event.dart';
part 'worker_watcher_state.dart';
part 'worker_watcher_bloc.freezed.dart';

@injectable
class WorkerWatcherBloc extends Bloc<WorkerWatcherEvent, WorkerWatcherState> {
  final IWorkerRepository _workerRepository;

  WorkerWatcherBloc(this._workerRepository)
      : super(const WorkerWatcherState.initial());
  StreamSubscription<Either<WorkerFailure, KtList<Worker>>>
      _workerStreamSubscription;

  @override
  Stream<WorkerWatcherState> mapEventToState(
    WorkerWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const WorkerWatcherState.loadInProgress();
      await _workerStreamSubscription?.cancel();
      _workerStreamSubscription = _workerRepository.watchAll(e.shop).listen(
          (failureOrWorkers) =>
              add(WorkerWatcherEvent.workerReceived(failureOrWorkers)));
    }, workerReceived: (e) async* {
      yield e.failureOrWorkers.fold((f) => WorkerWatcherState.loadFailure(f),
          (workers) => WorkerWatcherState.loadSuccess(workers));
    });
  }

  @override
  Future<void> close() async {
    await _workerStreamSubscription?.cancel();
    return super.close();
  }
}
