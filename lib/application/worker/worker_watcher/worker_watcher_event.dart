part of 'worker_watcher_bloc.dart';

@freezed
abstract class WorkerWatcherEvent with _$WorkerWatcherEvent {
  const factory WorkerWatcherEvent.watchAllStarted(Shop shop) =
      _WatchAllStarted;
  const factory WorkerWatcherEvent.workerReceived(
          Either<WorkerFailure, KtList<Worker>> failureOrWorkers) =
      _WorkersReceived;
}
