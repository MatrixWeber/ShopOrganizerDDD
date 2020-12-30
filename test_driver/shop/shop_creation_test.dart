import 'package:firebase_ddd_tutorial/domain/core/keys/keys.dart';
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
  final floatingActionButton = find.byValueKey(Keys.buttonChangePage);
  const email = 'test@testmail.com';
  const name = 'Alex';
  const keeper = 'Weber';
  const phone = '017655378408';
  const numOfWorkers = '2';

  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });

  tearDownAll(() async {
    if (driver != null) {
      driver.close();
    }
  });

  test('check flutter driver health', () async {
    final health = await driver.checkHealth();
    expect(health.status, HealthStatus.ok);
  });
  group('ShopCreationDialogTest', () {
    const continueWithoutFotoDialogText = 'Continue without foto?';

    setUp(() async {
      driver = await FlutterDriver.connect();
      assert(floatingActionButton != null);
      await driver.tap(floatingActionButton);
      await driver.waitFor(shopAppBarText);
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
    });

    tearDown(() async {
      if (driver != null) {
        final floatingActionButton = find.byValueKey(Keys.back);
        const shopText = "Shops";
        assert(floatingActionButton != null);
        await driver.tap(floatingActionButton);
        await driver.waitFor(find.text(shopText));
        driver.close();
      }
    });
    test('''
    shold find $continueWithoutFotoDialogText dialog when 
    "add some worker button" was pressed without selecting a foto
    and shold stay on same page when clicking no on dialog window''', () async {
      await driver.runUnsynchronized(() async {
        assert(addSomeWorkerButton != null);
        await driver.tap(addSomeWorkerButton);
        await driver.waitFor(find.text(continueWithoutFotoDialogText));
        final flatButtonNoText = find.byValueKey(Keys.no);
        assert(flatButtonNoText != null);
        await driver.tap(flatButtonNoText);
        await driver.waitFor(shopAppBarText);
        await driver.waitUntilNoTransientCallbacks();
      });
    });
    test('''
    shold find $continueWithoutFotoDialogText dialog when 
    "add some worker button" was pressed without selecting a foto
    and shold find Address page when clicking yes on dialog window''',
        () async {
      await driver.runUnsynchronized(() async {
        assert(addSomeWorkerButton != null);
        await driver.tap(addSomeWorkerButton);
        await driver.waitFor(find.text(continueWithoutFotoDialogText));
        final flatButtonYesText = find.byValueKey(Keys.yes);
        assert(flatButtonYesText != null);
        await driver.tap(flatButtonYesText);
        await driver.waitFor(find.text('Address'));
        final floatingActionButton = find.byValueKey(Keys.back);
        assert(floatingActionButton != null);
        await driver.tap(floatingActionButton);
        await driver.waitFor(find.text(shopProfileText));
        await driver.waitUntilNoTransientCallbacks();
      });
    });
  });
}
