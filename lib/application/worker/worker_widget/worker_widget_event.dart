part of 'worker_widget_bloc.dart';

@freezed
abstract class WorkerWidgetEvent with _$WorkerWidgetEvent {
  const factory WorkerWidgetEvent.initialized() = _Initialized;
  const factory WorkerWidgetEvent.inProgress(num percent) = _InProgress;
}
