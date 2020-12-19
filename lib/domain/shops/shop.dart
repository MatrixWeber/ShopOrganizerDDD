import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/address/address.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/shops/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'shop.freezed.dart';

@freezed
abstract class Shop implements _$Shop {
  const Shop._();

  const factory Shop({
    @required UniqueId id,
    @required ShopName name,
    @required ShopKeeper keeper,
    @required EmailAddress email,
    @required PhoneNumber phoneNumber,
    @required NumberOfWorkers numberOfWorkers,
    @required ImageUrl imageUrl,
    @required ShopCategory category,
    @required Address address,
    @required WeekList<bool> openingDays,
    // @required WeekList<ShopWorkingHours> workingHours,
  }) = _Shop;

  factory Shop.empty() => Shop(
        id: UniqueId(),
        name: ShopName(''),
        keeper: ShopKeeper(''),
        email: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        numberOfWorkers: NumberOfWorkers(0),
        imageUrl: ImageUrl(''),
        category: ShopCategory(''),
        address: Address.empty(),
        openingDays: WeekList<bool>(emptyList()),
        // workingHours: WeekList<ShopWorkingHours>(emptyList()),
      );
  factory Shop.test() => Shop(
        id: UniqueId(),
        name: ShopName('a'),
        keeper: ShopKeeper('b'),
        email: EmailAddress('cab@bla.de'),
        phoneNumber: PhoneNumber('+496754678675'),
        numberOfWorkers: NumberOfWorkers(2),
        imageUrl: ImageUrl(''),
        category: ShopCategory('f'),
        address: Address.test(),
        openingDays: WeekList<bool>(emptyList()),
        // workingHours: WeekList<ShopWorkingHours>(
        //   KtList.from([
        //     ShopWorkingHours(workingHours: WorkingHours(8)),
        //     ShopWorkingHours(workingHours: WorkingHours(8)),
        //     ShopWorkingHours(workingHours: WorkingHours(8)),
        //     ShopWorkingHours(workingHours: WorkingHours(8)),
        //     ShopWorkingHours(workingHours: WorkingHours(8)),
        //     ShopWorkingHours(workingHours: WorkingHours(8)),
        //     ShopWorkingHours(workingHours: WorkingHours(8)),
        //   ]),
        // ),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // like flatMap andThen checks as well if first
    // fails the others wan't be evaluated
    return name.failureOrUnit
        .andThen(keeper.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(numberOfWorkers.failureOrUnit)
        .andThen(imageUrl.failureOrUnit)
        .andThen(category.failureOrUnit)
        .andThen(address.city.failureOrUnit)
        .andThen(address.houseNumber.failureOrUnit)
        .andThen(address.zip.failureOrUnit)
        .andThen(address.street.failureOrUnit)
        // .andThen(
        //   workingHours
        //       .getOrCrash()
        //       // getting the failureOption from the ShopWorkingHours ENTITY
        //       .map((shopWorkingHours) => shopWorkingHours.failureOption)
        //       // try to get only the failed items
        //       .filter((option) => option.isSome())
        //       // here we are checking at the failure of the 0 element
        //       // if there is none() that means that all items are valid
        //       .getOrElse(0, (_) => none())
        //       // if there are none() failures present we return right(unit)
        //       // witch means that everythink is ok else left(failure f)
        //       .fold(() => right(unit), (f) => left(f)),
        // )
        .fold((f) => some(f), (_) => none());
  }
}
