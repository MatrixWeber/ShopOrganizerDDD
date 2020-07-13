import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/shops/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';

void main() {
  group('shopsShopNameValueObjects', () {
    group('shopsShopNameValidation', () {
      test('should return ShopName when ShopName name is valid', () {
        // arrange
        const shopNameNameStr =
            '01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        final shopNameName = ShopName(shopNameNameStr);
        // assert
        expect(shopNameName.getOrCrash(), shopNameNameStr);
      });
      test(
          'should throw UnexpectedValueError() when ShopName name has a length over 100',
          () {
        // arrange
        const shopNameNameStr =
            '101234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        final shopNameName = ShopName(shopNameNameStr);

        final call = shopNameName.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });

    group('shopsShopKeeperValidation', () {
      test('should return ShopKeeper when shops ShopKeeper is valid', () {
        // arrange
        const shopKeeperStr =
            '01234567890123456789012345678901234567890123456789';
        final shopsShopKeeperValid = ShopKeeper(shopKeeperStr);
        // assert
        expect(shopsShopKeeperValid.getOrCrash(), shopKeeperStr);
      });
      test(
          'should throw UnexpectedValueError() when shops ShopKeeper is invalid',
          () {
        // arrange
        const shopKeeperStr =
            '101234567890123456789012345678901234567890123456789';
        final shopsShopKeeperValid = ShopKeeper(shopKeeperStr);
        final call = shopsShopKeeperValid.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('shopsImageUrlValidation', () {
      test('should return ImageUrl when shops ImageUrl is valid', () {
        // arrange
        const imageUrlIsExactMax =
            '0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        final imageUrl = ImageUrl(imageUrlIsExactMax);
        // assert
        expect(imageUrl.getOrCrash(), imageUrlIsExactMax);
      });
      test('should throw UnexpectedValueError() when shops ImageUrl is invalid',
          () {
        // arrange
        const imageUrlIsExactMax =
            '10123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        final imageUrl = ImageUrl(imageUrlIsExactMax);

        final call = imageUrl.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('shopsShopCategoryValidation', () {
      test('should return ShopCategory when shops ShopCategory is valid', () {
        // arrange
        const shopCategoryIsExactMax =
            '01234567890123456789012345678901234567890123456789';
        final shopCategory = ShopCategory(shopCategoryIsExactMax);
        // assert
        expect(shopCategory.getOrCrash(), shopCategoryIsExactMax);
      });
      test(
          'should throw UnexpectedValueError() when shops ShopCategory is invalid',
          () {
        // arrange
        const shopCategoryIsExactMax =
            '101234567890123456789012345678901234567890123456789';
        final shopCategory = ShopCategory(shopCategoryIsExactMax);
        final call = shopCategory.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('shopsPhoneNumberValidation', () {
      test('should return PhoneNumber when shops PhoneNumber is valid', () {
        // arrange
        const phoneNumberIsExactMax = '012345678901234567890123456789';
        final phoneNumber = PhoneNumber(phoneNumberIsExactMax);
        // assert
        expect(phoneNumber.getOrCrash(), phoneNumberIsExactMax);
      });
      test(
          'should throw UnexpectedValueError() when shops PhoneNumber is invalid',
          () {
        // arrange
        const phoneNumberIsExactMax = '1012345678901234567890123456789';
        final phoneNumber = PhoneNumber(phoneNumberIsExactMax);
        final call = phoneNumber.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('shopsNumberOfWorkersValidation', () {
      test('should return NumberOfWorkers when shops NumberOfWorkers is valid',
          () {
        // arrange
        const numberOfWorkersIsExactMax = 30;
        final numberOfWorkers = NumberOfWorkers(numberOfWorkersIsExactMax);
        // assert
        expect(numberOfWorkers.getOrCrash(), numberOfWorkersIsExactMax);
      });
      test(
          'should throw UnexpectedValueError() when shops NumberOfWorkers is invalid',
          () {
        // arrange
        const numberOfWorkersIsExactMax = 31;
        final numberOfWorkers = NumberOfWorkers(numberOfWorkersIsExactMax);
        final call = numberOfWorkers.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('shopsWorkingHoursValidation', () {
      test('should return WorkingHours when shops WorkingHours is valid', () {
        // arrange
        const workingHoursIsExactMax = 24;
        final workingHours = WorkingHours(workingHoursIsExactMax);
        // assert
        expect(workingHours.getOrCrash(), workingHoursIsExactMax);
      });
      test(
          'should throw UnexpectedValueError() when shops WorkingHours is invalid',
          () {
        // arrange
        const workingHoursIsExactMax = 25;
        final workingHours = WorkingHours(workingHoursIsExactMax);
        final call = workingHours.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('shopsWorkingHoursValidation', () {
      test('should return WorkingHours when shops WorkingHours is valid', () {
        // arrange
        const workingHoursIsExactMax = 24;
        final workingHours = WorkingHours(workingHoursIsExactMax);
        // assert
        expect(workingHours.getOrCrash(), workingHoursIsExactMax);
      });
      test(
          'should throw UnexpectedValueError() when shops WorkingHours is invalid',
          () {
        // arrange
        const workingHoursIsExactMax = 25;
        final workingHours = WorkingHours(workingHoursIsExactMax);
        final call = workingHours.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('shopsWeekList<WorkingHours>Validation', () {
      test(
          'should return WeekList<WorkingHours> when shops WeekList<WorkingHours> is valid',
          () {
        // arrange
        final ktList = listFrom([
          WorkingHours(24),
          WorkingHours(20),
          WorkingHours(15),
          WorkingHours(16),
          WorkingHours(7),
          WorkingHours(1),
          WorkingHours(9)
        ]);
        final weekListWorkingHoursIsExactMax = WeekList<WorkingHours>(ktList);
        // assert
        expect(weekListWorkingHoursIsExactMax.getOrCrash(), ktList);
      });
    });
  });
}
