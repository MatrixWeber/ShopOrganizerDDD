part of 'shop_form_bloc.dart';

@freezed
abstract class ShopFormState with _$ShopFormState {
  factory ShopFormState({
    @required Shop shop,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ShopFormState;

  factory ShopFormState.initial() => ShopFormState(
        shop: Shop.test(),
        showErrorMessage: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
