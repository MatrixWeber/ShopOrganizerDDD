part of 'worker_widget_bloc.dart';

@freezed
abstract class WorkerWidgetState with _$WorkerWidgetState {
  const factory WorkerWidgetState.initial() = _Initial;
  const factory WorkerWidgetState.actionInProgress(num percent) =
      _ActionInProgress;
}
