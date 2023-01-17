import 'package:firebase_ddd_tutorial/domain/core/keys/keys.dart';
import 'package:firebase_ddd_tutorial/domain/core/strings/strings.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  FlutterDriver driver;
  final emailField = find.byValueKey(Keys.emailField);
  final nameField = find.byValueKey(Keys.nameField);
  final keeperField = find.byValueKey(Keys.keeperField);
  final phoneField = find.byValueKey(Keys.phoneField);
  final numOfWorkesField = find.byValueKey(Keys.numOfWorkesField);
  final addSomeWorkerButton = find.text('Add some worker');
  const shopProfileText = "Shop's Profile";
  final shopAppBarText = find.text(shopProfileText);
  final changePageButton = find.byValueKey(Keys.buttonChangePage);
  const email = 'test@testmail.com';
  const name = 'Alex';
  const keeper = 'Weber';
  const phone = '017655378408';
  const numOfWorkers = '2';
  const continueWithoutFotoDialogText = 'Continue without foto?';

  Future tapChangePage() async {
    assert(changePageButton != null);
    await driver.tap(changePageButton);
    await driver.waitFor(shopAppBarText);
  }

  Future tapAddSomeWorkerButton() async {
    assert(addSomeWorkerButton != null);
    await driver.tap(addSomeWorkerButton);
    await driver.waitFor(addSomeWorkerButton);
  }

  Future tapDialogButton(String key) async {
    final elevatedButtonNoText = find.byValueKey(key);
    assert(elevatedButtonNoText != null);
    await driver.tap(elevatedButtonNoText);
  }

  Future setupBackPage() async {
    final backButton = find.byValueKey(Keys.back);
    const shopText = "Shops";
    assert(backButton != null);
    await driver.tap(backButton);
    await driver.waitFor(find.text(shopText));
  }

  Future setupAllTextFields() async {
    await driver.tap(emailField);
    await driver.enterText(email);
    await driver.waitFor(find.text(email));
    await driver.tap(nameField);
    await driver.enterText(name);
    await driver.waitFor(find.text(name));
    await driver.tap(keeperField);
    await driver.enterText(keeper);
    await driver.waitFor(find.text(keeper));
    await driver.tap(phoneField);
    await driver.enterText(phone);
    await driver.waitFor(find.text(phone));
    await driver.tap(numOfWorkesField);
    await driver.enterText(numOfWorkers);
    await driver.waitFor(find.text(numOfWorkers));
  }

  setUpAll(() async {
    driver = await FlutterDriver.connect();
    await tapChangePage();
    await setupAllTextFields();
  });

  tearDownAll(() async {
    if (driver != null) {
      await setupBackPage();
      driver.close();
    }
  });

  test('check flutter driver health', () async {
    final health = await driver.checkHealth();
    expect(health.status, HealthStatus.ok);
  });
  // group('ShopCreationEmailValidationTest', () {
  //   test('''
  //   should show ${Strings.invalidEmail} text when email not containing @ sign''',
  //       () async {
  //     await driver.runUnsynchronized(() async {
  //       const email = 'tesdf.fsf.df';
  //       await driver.tap(emailField);
  //       await driver.enterText(email);
  //       await driver.waitFor(find.text(email));
  //       await tapAddSomeWorkerButton();
  //       await driver.waitFor(find.text(continueWithoutFotoDialogText));
  //       await tapDialogButton(Keys.yes);
  //       await driver.waitFor(find.text(Strings.invalidEmail));
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  //   test('''
  //   should show ${Strings.invalidEmail} text when email not containing a . after @ sign''',
  //       () async {
  //     await driver.runUnsynchronized(() async {
  //       const email = 'tesdf@fsfdf';
  //       await driver.tap(emailField);
  //       await driver.enterText(email);
  //       await driver.waitFor(find.text(email));
  //       await tapAddSomeWorkerButton();
  //       await driver.waitFor(find.text(Strings.invalidEmail));
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  //   test('''
  //   should show ${Strings.invalidEmail} text when email containing a space at the end''',
  //       () async {
  //     await driver.runUnsynchronized(() async {
  //       const email = 'tesdf@fsfdf.de ';
  //       await driver.tap(emailField);
  //       await driver.enterText(email);
  //       await driver.waitFor(find.text(email));
  //       await tapAddSomeWorkerButton();
  //       await driver.waitFor(find.text(Strings.invalidEmail));
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  //   test('''
  //   should show ${Strings.invalidEmail} text when email is empty''', () async {
  //     await driver.runUnsynchronized(() async {
  //       const email = '';
  //       await driver.tap(emailField);
  //       await driver.enterText(email);
  //       await driver.waitFor(find.text(email));
  //       await tapAddSomeWorkerButton();
  //       await driver.waitFor(find.text(Strings.invalidEmail));
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  //   test('''
  //   should show ${Strings.invalidEmail} text when email is empty before the @ sign''',
  //       () async {
  //     await driver.runUnsynchronized(() async {
  //       const email = '@fsfdf.de';
  //       await driver.tap(emailField);
  //       await driver.enterText(email);
  //       await driver.waitFor(find.text(email));
  //       await tapAddSomeWorkerButton();
  //       await driver.waitFor(find.text(Strings.invalidEmail));
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  //   test('''
  //   should show ${Strings.invalidEmail} text when email doesn't have at least
  //   2 chars at the end''', () async {
  //     await driver.runUnsynchronized(() async {
  //       const email = 'ttef@fsfdf.d';
  //       await driver.tap(emailField);
  //       await driver.enterText(email);
  //       await driver.waitFor(find.text(email));
  //       await tapAddSomeWorkerButton();
  //       await driver.waitFor(find.text(Strings.invalidEmail));
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  // });
  group('ShopCreationNameValidationTest', () {
    // setUp(() async {
    //   await setupAllTextFields();
    // });
    test('''
    should show ${Strings.cannotBeEmpty} text when name is empty''', () async {
      await driver.runUnsynchronized(() async {
        const name = '';
        await driver.tap(nameField);
        await driver.enterText(name);
        await driver.waitFor(find.text(name));
        await tapAddSomeWorkerButton();
        await driver.waitFor(find.text(continueWithoutFotoDialogText));
        await tapDialogButton(Keys.yes);
        await driver.waitFor(find.text(Strings.cannotBeEmpty));
        await driver.waitUntilNoTransientCallbacks();
      });
    });
    // test('''
    // should show ${Strings.tooLong} text when name exceeded the length''',
    //     () async {
    //   await driver.runUnsynchronized(() async {
    //     const name =
    //         'kabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijvmghv';
    //     await driver.tap(nameField);
    //     await driver.enterText(name);
    //     await driver.waitFor(find.text(name));
    //     await tapAddSomeWorkerButton();
    //     await driver.waitFor(find.text(Strings.tooLong));
    //     await driver.waitUntilNoTransientCallbacks();
    //   });
    // });
    test('''
    should show ${Strings.shouldContainLetters} text when name containing a number''',
        () async {
      await driver.runUnsynchronized(() async {
        const name = 'euter1';
        await driver.tap(nameField);
        await driver.enterText(name);
        await driver.waitFor(find.text(name));
        await tapAddSomeWorkerButton();
        await driver.waitFor(find.text(Strings.shouldContainLetters));
        await driver.waitUntilNoTransientCallbacks();
      });
    });
  });

  // group('ShopCreationDialogTest', () {
  //   test('''
  //   shold find $continueWithoutFotoDialogText dialog when
  //   "add some worker button" was pressed without selecting a foto
  //   and shold stay on same page when clicking no on dialog window''', () async {
  //     await driver.runUnsynchronized(() async {
  //       assert(addSomeWorkerButton != null);
  //       await driver.tap(addSomeWorkerButton);
  //       await driver.waitFor(find.text(continueWithoutFotoDialogText));
  //       await tapDialogButton(Keys.no);
  //       await driver.waitFor(shopAppBarText);
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  //   test('''
  //   shold find $continueWithoutFotoDialogText dialog when
  //   "add some worker button" was pressed without selecting a foto
  //   and shold find Address page when clicking yes on dialog window''',
  //       () async {
  //     await driver.runUnsynchronized(() async {
  //       assert(addSomeWorkerButton != null);
  //       await driver.tap(addSomeWorkerButton);
  //       await driver.waitFor(find.text(continueWithoutFotoDialogText));
  //       await tapDialogButton(Keys.yes);
  //       await driver.waitFor(find.text('Address'));
  //       final backButton = find.byValueKey(Keys.back);
  //       assert(backButton != null);
  //       await driver.tap(backButton);
  //       await driver.waitFor(find.text(shopProfileText));
  //       await driver.waitUntilNoTransientCallbacks();
  //     });
  //   });
  // });
}
