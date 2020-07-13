part of 'user_form_bloc.dart';

@freezed
abstract class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.initialized(Option<User> initialUserOption) =
      Initialized;
  const factory UserFormEvent.nameChanged(String name) = NameChanged;
  const factory UserFormEvent.firstNameChanged(String firstName) =
      FirstNameChanged;
  const factory UserFormEvent.emailChanged(String email) = EmailChanged;
  const factory UserFormEvent.phoneNumberChanged(String phone) =
      PhoneNumberChanged;
  const factory UserFormEvent.imageUrlChanged(String imageUrl) =
      ImageUrlChanged;
  const factory UserFormEvent.streetChanged(String street) = StreetChanged;
  const factory UserFormEvent.houseNumberChanged(String houseNum) =
      HouseNumberChanged;
  const factory UserFormEvent.zipChanged(String zip) = ZipChanged;
  const factory UserFormEvent.cityChanged(String city) = CityChanged;
  const factory UserFormEvent.saved() = Saved;
}
