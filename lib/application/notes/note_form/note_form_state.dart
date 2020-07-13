part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormState with _$NoteFormState {
  factory NoteFormState({
    @required Note note,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        note: Note.empty(),
        showErrorMessage: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
