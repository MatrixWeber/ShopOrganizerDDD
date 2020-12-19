part of 'shop_form_bloc.dart';

@freezed
abstract class ShopFormEvent with _$ShopFormEvent {
  const factory ShopFormEvent.initialized(Option<Shop> initialShopOption) =
      Initialized;
  const factory ShopFormEvent.nameChanged(String shopName) = NameChanged;
  const factory ShopFormEvent.emailChanged(String email) = EmailChanged;
  const factory ShopFormEvent.keeperChanged(String keeper) = KeeperChanged;
  const factory ShopFormEvent.phoneNumberChanged(String phone) =
      PhoneNumberChanged;
  const factory ShopFormEvent.numberOfWorkersChanged(num numOfWorkers) =
      NumberOfWorkersChanged;
  const factory ShopFormEvent.imageUrlChanged(String imageUrl) =
      ImageUrlChanged;
  const factory ShopFormEvent.categoryChanged(String category) =
      CategoryChanged;
  const factory ShopFormEvent.streetChanged(String street) = StreetChanged;
  const factory ShopFormEvent.houseNumberChanged(String houseNum) =
      HouseNumberChanged;
  const factory ShopFormEvent.zipChanged(String zip) = ZipChanged;
  const factory ShopFormEvent.cityChanged(String city) = CityChanged;
  const factory ShopFormEvent.openingDaysChanged(KtList<bool> openingDays) =
      OpeningDaysChanged;
  // const factory ShopFormEvent.workingHoursChanged(
  //     KtList<ShopWorkingHoursPrimitive> workingHours) = WorkingHoursChanged;
  const factory ShopFormEvent.saved() = Saved;
  const factory ShopFormEvent.shopChanged(Shop shop) = ShopChanged;
}
