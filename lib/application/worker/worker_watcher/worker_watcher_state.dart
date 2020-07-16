part of 'worker_watcher_bloc.dart';

@freezed
abstract class WorkerWatcherState with _$WorkerWatcherState {
  const factory WorkerWatcherState.initial() = _Initial;
  const factory WorkerWatcherState.loadInProgress() = _LoadInProgress;
  const factory WorkerWatcherState.loadSuccess(KtList<Worker> worker) =
      _LoadSuccess;
  const factory WorkerWatcherState.loadFailure(WorkerFailure workerFailure) =
      _LoadFailure;
}
