import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'widget_event.dart';
part 'widget_state.dart';
part 'widget_bloc.freezed.dart';

@injectable
class WidgetBloc extends Bloc<WidgetEvent, WidgetState> {
  WidgetBloc() : super(const WidgetState.initial());

  @override
  Stream<WidgetState> mapEventToState(
    WidgetEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield const WidgetState.initial();
    }, inProgress: (e) async* {
      yield WidgetState.actionInProgress(e.percent);
    });
  }
}
