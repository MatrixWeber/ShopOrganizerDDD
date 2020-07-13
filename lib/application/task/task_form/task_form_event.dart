part of 'task_form_bloc.dart';

@freezed
abstract class TaskFormEvent with _$TaskFormEvent {
  const factory TaskFormEvent.initialized(
      Option<TaskDescription> initialTaskOption) = Initialized;
  const factory TaskFormEvent.taskNameChanged(String taskName) =
      TaskNameChanged;
  const factory TaskFormEvent.durationChanged(Duration duration) =
      DurationChanged;
  const factory TaskFormEvent.priceChanged(double price) = PriceChanged;
  const factory TaskFormEvent.saved() = Saved;
}
