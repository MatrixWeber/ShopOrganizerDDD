part of 'worker_form_bloc.dart';

@freezed
abstract class WorkerFormState with _$WorkerFormState {
  factory WorkerFormState({
    @required Worker worker,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<WorkerFailure, Unit>> saveFailureOrSuccessOption,
  }) = _WorkerFormState;

  factory WorkerFormState.initial() => WorkerFormState(
        worker: Worker.empty(),
        showErrorMessage: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
