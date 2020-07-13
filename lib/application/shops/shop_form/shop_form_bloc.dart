import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/address/address.dart';
import 'package:firebase_ddd_tutorial/domain/address/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/auth/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/shops/i_shop_repository.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop_failure.dart';
import 'package:firebase_ddd_tutorial/domain/shops/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/shops/working_hours.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_form/misc/shop_working_hours_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'shop_form_event.dart';
part 'shop_form_state.dart';

part 'shop_form_bloc.freezed.dart';

@injectable
class ShopFormBloc extends Bloc<ShopFormEvent, ShopFormState> {
  final IShopRepository _shopRepository;

  ShopFormBloc(this._shopRepository);
  @override
  ShopFormState get initialState => ShopFormState.initial();

  @override
  Stream<ShopFormState> mapEventToState(
    ShopFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialShopOption.fold(
            () => state,
            (initialShop) => state.copyWith(
                  shop: initialShop,
                  isEditing: true,
                ));
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(name: ShopName(e.shopName)),
          saveFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(email: EmailAddress(e.email)),
          saveFailureOrSuccessOption: none(),
        );
      },
      keeperChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(keeper: ShopKeeper(e.keeper)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ShopFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.shop.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _shopRepository.update(state.shop)
              : await _shopRepository.create(state.shop);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      categoryChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(category: ShopCategory(e.category)),
          saveFailureOrSuccessOption: none(),
        );
      },
      cityChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(
              address: state.shop.address.copyWith(city: City(e.city))),
          saveFailureOrSuccessOption: none(),
        );
      },
      streetChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(
              address: state.shop.address.copyWith(street: Street(e.street))),
          saveFailureOrSuccessOption: none(),
        );
      },
      zipChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop
              .copyWith(address: state.shop.address.copyWith(zip: Zip(e.zip))),
          saveFailureOrSuccessOption: none(),
        );
      },
      houseNumberChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(
              address: state.shop.address
                  .copyWith(houseNumber: HouseNumber(e.houseNum))),
          saveFailureOrSuccessOption: none(),
        );
      },
      imageUrlChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(imageUrl: ImageUrl(e.imageUrl)),
          saveFailureOrSuccessOption: none(),
        );
      },
      numberOfWorkersChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop
              .copyWith(numberOfWorkers: NumberOfWorkers(e.numOfWorkers)),
          saveFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(phoneNumber: PhoneNumber(e.phone)),
          saveFailureOrSuccessOption: none(),
        );
      },
      openingDaysChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(openingDays: WeekList<bool>(e.openingDays)),
          saveFailureOrSuccessOption: none(),
        );
      },
      workingHoursChanged: (e) async* {
        yield state.copyWith(
          shop: state.shop.copyWith(
              workingHours: WeekList<ShopWorkingHours>(e.workingHours.map(
            (primitive) => primitive.toDomian(),
          ))),
          saveFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
