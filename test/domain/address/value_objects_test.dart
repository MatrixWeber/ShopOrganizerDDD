import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/address/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('addressStreetValueObjects', () {
    group('addressStreetValidation', () {
      test('should return Street when Street name is valid', () {
        // arrange
        const streetNameStr =
            '0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        final streetName = Street(streetNameStr);
        // assert
        expect(streetName.getOrCrash(), streetNameStr);
      });
      test(
          'should throw UnexpectedValueError() when street name has a length over 100',
          () {
        // arrange
        const streetNameStr =
            '01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567891';
        final streetName = Street(streetNameStr);

        final call = streetName.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });

    group('addressZipValidation', () {
      test('should return zip when address zip is valid', () {
        // arrange
        const zipStr = '01234567890123456789';
        final addressZipValid = Zip(zipStr);
        // assert
        expect(addressZipValid.getOrCrash(), zipStr);
      });
      test('should throw UnexpectedValueError() when address zip is invalid',
          () {
        // arrange
        const zipStr = '012345678901234567890';
        final addressZipValid = Zip(zipStr);
        final call = addressZipValid.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('addressHouseNumberValidation', () {
      test('should return HouseNumber when address HouseNumber is valid', () {
        // arrange
        const houseNumberIsExactMax = '0123456789';
        final houseNumber = HouseNumber(houseNumberIsExactMax);
        // assert
        expect(houseNumber.getOrCrash(), houseNumberIsExactMax);
      });
      test(
          'should throw UnexpectedValueError() when address HouseNumber is invalid',
          () {
        // arrange
        const houseNumberIsExactMax = '01234567890';
        final houseNumber = HouseNumber(houseNumberIsExactMax);

        final call = houseNumber.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
    group('addressCityValidation', () {
      test('should return City when address City is valid', () {
        // arrange
        const cityIsExactMax =
            '0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789';
        final city = City(cityIsExactMax);
        // assert
        expect(city.getOrCrash(), cityIsExactMax);
      });
      test(
          'should throw UnexpectedValueError() when address HouseNumber is invalid',
          () {
        // arrange
        const cityIsExactMax =
            '01234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
        final city = City(cityIsExactMax);

        final call = city.getOrCrash;
        //assert
        expect(() => call(), throwsA(isA<UnexpectedValueError>()));
      });
    });
  });
}
