import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
  StreamSubscription<Either<None, ImageUrl>> _workerStreamSubscription;

  WorkerImageHandlerBloc(this._workerRepository)
      : super(const WorkerImageHandlerState.initial());

  @override
  Stream<WorkerImageHandlerState> mapEventToState(
    WorkerImageHandlerEvent event,
  ) async* {
    yield* event.map(
      uploadImageStarted: (e) async* {
        yield const WorkerImageHandlerState.loadInProgress(0);
        await _workerStreamSubscription?.cancel();
        _workerStreamSubscription = _workerRepository
            .uploadImage(e.image, e.parentId.getOrCrash(), e.id.getOrCrash())
            .listen((failureOrImageUrl) {
          if (failureOrImageUrl.isRight()) {
            add(WorkerImageHandlerEvent.imageReceived(failureOrImageUrl));
          }
        });
      },
      imageDeleted: (e) async* {
        yield const WorkerImageHandlerState.loadInProgress(0);
        final failureOrSuccess =
            await _workerRepository.deleteImage(e.imageUrl);
        failureOrSuccess.fold((f) => WorkerImageHandlerState.loadFailure(f),
            (_) => const WorkerImageHandlerState.deletedSuccessful());
        yield const WorkerImageHandlerState.loadInProgress(100);
      },
      imageReceived: (e) async* {
        yield const WorkerImageHandlerState.loadInProgress(100);
        yield e.failureOrImageUrl.fold(
            (_) => const WorkerImageHandlerState.loadFailure(
                WorkerFailure.insufficientPermissions()),
            (imageUrl) => WorkerImageHandlerState.uploadedSuccessful(imageUrl));
      },
    );
  }

  @override
  Future<void> close() async {
    await _workerStreamSubscription?.cancel();
    return super.close();
  }
}
