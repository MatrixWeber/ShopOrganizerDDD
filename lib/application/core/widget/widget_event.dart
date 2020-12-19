part of 'widget_bloc.dart';

@freezed
abstract class WidgetEvent with _$WidgetEvent {
  const factory WidgetEvent.initialized() = _Initialized;
  const factory WidgetEvent.inProgress(num percent) = _InProgress;
}
