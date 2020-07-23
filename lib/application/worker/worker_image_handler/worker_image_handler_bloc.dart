import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_image_store_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'worker_image_handler_event.dart';
part 'worker_image_handler_state.dart';
part 'worker_image_handler_bloc.freezed.dart';

@injectable
class WorkerImageHandlerBloc
    extends Bloc<WorkerImageHandlerEvent, WorkerImageHandlerState> {
  final IWorkerImageStoreRepository _workerRepository;

  WorkerImageHandlerBloc(this._workerRepository);
  @override
  WorkerImageHandlerState get initialState =>
      const WorkerImageHandlerState.initial();

  @override
  Stream<WorkerImageHandlerState> mapEventToState(
    WorkerImageHandlerEvent event,
  ) async* {
    yield* event.map(uploadImageStarted: (e) async* {
      yield const WorkerImageHandlerState.loadInProgress();
      final failureOrSuccess = await _workerRepository.uploadImage(e.image);
      failureOrSuccess.fold((f) => WorkerImageHandlerState.loadFailure(f),
          (imageUrl) => WorkerImageHandlerState.uploadedSuccessful(imageUrl));
      // await _workerStreamSubscription?.cancel();
      // _workerStreamSubscription = _workerRepository.watchAll().listen(
      //     (failureOrWorkers) =>
      //         add(WorkerImageHandlerEvent.workerReceived(failureOrWorkers)));
    }, imageDeleted: (e) async* {
      yield const WorkerImageHandlerState.loadInProgress();
      final failureOrSuccess = await _workerRepository.deleteImage(e.imageUrl);
      failureOrSuccess.fold((f) => WorkerImageHandlerState.loadFailure(f),
          (_) => const WorkerImageHandlerState.deletedSuccessful());
    });
  }

  // @override
  // Future<void> close() async {
  //   await _workerStreamSubscription?.cancel();
  //   return super.close();
  // }
}
