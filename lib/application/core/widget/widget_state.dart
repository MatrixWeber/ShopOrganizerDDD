part of 'widget_bloc.dart';

@freezed
abstract class WidgetState with _$WidgetState {
  const factory WidgetState.initial() = _Initial;
  const factory WidgetState.actionInProgress(num percent) = _ActionInProgress;
}
