part of 'task_form_bloc.dart';

@freezed
abstract class TaskFormState with _$TaskFormState {
  factory TaskFormState({
    @required TaskDescription task,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<TaskFailure, Unit>> saveFailureOrSuccessOption,
  }) = _TaskFormState;

  factory TaskFormState.initial() => TaskFormState(
        task: TaskDescription.empty(),
        showErrorMessage: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
