import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/address/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/user/i_user_repository.dart';
import 'package:firebase_ddd_tutorial/domain/user/user.dart';
import 'package:firebase_ddd_tutorial/domain/user/user_failure.dart';
import 'package:firebase_ddd_tutorial/domain/user/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'user_form_event.dart';
part 'user_form_state.dart';

part 'user_form_bloc.freezed.dart';

@injectable
class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  final IUserRepository _userRepository;

  UserFormBloc(this._userRepository);
  @override
  UserFormState get initialState => UserFormState.initial();

  @override
  Stream<UserFormState> mapEventToState(
    UserFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialUserOption.fold(
            () => state,
            (initialUser) => state.copyWith(
                  user: initialUser,
                  isEditing: true,
                ));
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(name: Name(e.name)),
          saveFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(email: EmailAddress(e.email)),
          saveFailureOrSuccessOption: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(firstName: FirstName(e.firstName)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<UserFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.user.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _userRepository.update(state.user)
              : await _userRepository.create(state.user);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessage: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(phoneNumber: PhoneNumber(e.phone)),
          saveFailureOrSuccessOption: none(),
        );
      },
      imageUrlChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(imageUrl: ImageUrl(e.imageUrl)),
          saveFailureOrSuccessOption: none(),
        );
      },
      cityChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
              address: state.user.address.copyWith(city: City(e.city))),
          saveFailureOrSuccessOption: none(),
        );
      },
      streetChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
              address: state.user.address.copyWith(street: Street(e.street))),
          saveFailureOrSuccessOption: none(),
        );
      },
      zipChanged: (e) async* {
        yield state.copyWith(
          user: state.user
              .copyWith(address: state.user.address.copyWith(zip: Zip(e.zip))),
          saveFailureOrSuccessOption: none(),
        );
      },
      houseNumberChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
              address: state.user.address
                  .copyWith(houseNumber: HouseNumber(e.houseNum))),
          saveFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
