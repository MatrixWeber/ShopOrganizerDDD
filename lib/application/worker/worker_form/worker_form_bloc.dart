import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'worker_form_event.dart';
part 'worker_form_state.dart';

part 'worker_form_bloc.freezed.dart';

@injectable
class WorkerFormBloc extends Bloc<WorkerFormEvent, WorkerFormState> {
  final IWorkerRepository _workerRepository;

  WorkerFormBloc(this._workerRepository);
  @override
  WorkerFormState get initialState => WorkerFormState.initial();

  @override
  Stream<WorkerFormState> mapEventToState(
    WorkerFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialWorkerOption.fold(
            () => state,
            (initialWorker) => state.copyWith(
                  worker: initialWorker,
                  isEditing: true,
                ));
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          worker: state.worker.copyWith(name: Name(e.name)),
          saveFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          worker: state.worker.copyWith(email: EmailAddress(e.email)),
          saveFailureOrSuccessOption: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          worker: state.worker.copyWith(firstName: FirstName(e.firstName)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<WorkerFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.worker.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _workerRepository.update(state.worker)
              : await _workerRepository.create(state.worker);
          yield state.copyWith(
            isSaving: false,
            showErrorMessage: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            isSaving: false,
            showErrorMessage: true,
            saveFailureOrSuccessOption:
                optionOf(left(const WorkerFailure.unableToUpdate())),
          );
        }
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          worker: state.worker.copyWith(phoneNumber: PhoneNumber(e.phone)),
          saveFailureOrSuccessOption: none(),
        );
      },
      imageUrlChanged: (e) async* {
        yield state.copyWith(
          worker: state.worker.copyWith(imageUrl: ImageUrl(e.imageUrl)),
          saveFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
