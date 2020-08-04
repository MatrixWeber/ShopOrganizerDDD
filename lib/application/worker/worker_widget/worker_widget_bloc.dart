import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'worker_widget_event.dart';
part 'worker_widget_state.dart';
part 'worker_widget_bloc.freezed.dart';

@injectable
class WorkerWidgetBloc extends Bloc<WorkerWidgetEvent, WorkerWidgetState> {
  @override
  WorkerWidgetState get initialState => const WorkerWidgetState.initial();

  @override
  Stream<WorkerWidgetState> mapEventToState(
    WorkerWidgetEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield const WorkerWidgetState.initial();
    }, inProgress: (e) async* {
      yield WorkerWidgetState.actionInProgress(e.percent);
    });
  }
}
