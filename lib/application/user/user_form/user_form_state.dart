part of 'user_form_bloc.dart';

@freezed
abstract class UserFormState with _$UserFormState {
  factory UserFormState({
    @required User user,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<UserFailure, Unit>> saveFailureOrSuccessOption,
  }) = _UserFormState;

  factory UserFormState.initial() => UserFormState(
        user: User.test(),
        showErrorMessage: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
