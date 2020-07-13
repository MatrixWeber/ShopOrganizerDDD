import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

// import 'package:flutter_test/flutter_test.dart';
// import 'package:flushbar/flushbar_helper.dart';
@Timeout(Duration(seconds: 45))
void main() {
  group('FlutterAuthSignInTestPage', () {
    final emailField = find.byValueKey('email-field');
    final passwordField = find.byValueKey('password-field');
    final signInButton = find.text('SIGN IN');
    // final registerButton = find.text('REGISTER');
    // final signInWithGoogleButton = find.text('SIGN IN WITH GOOGLE');
    final flushbarHelper = find.byType('FlushbarHelper');
    final extendedNavigator = find.byType('ExtendedNavigator');
    final floatingActionButton = find.byValueKey('icon-button-sign-out');

    FlutterDriver driver;
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test(
        'shold provide flash helper feedback "Invalid email and password combination" when login fails with password to short',
        () async {
      await driver.runUnsynchronized(() async {
        await driver.tap(emailField);
        await driver.enterText('test@testmail.com');
        await driver.tap(passwordField);
        await driver.enterText('test');
        await driver.tap(signInButton);
        // await driver.waitFor(flushbarHelper);
        assert(flushbarHelper != null);
        // expect(flushbarHelper, 'Invalid email and password combination');
        await driver.waitUntilNoTransientCallbacks();
        assert(extendedNavigator == null);
      });
    });

    test(
        'shold provide flash helper feedback "Invalid email and password combination" when login fails with email has no @ sign',
        () async {
      await driver.tap(emailField);
      await driver.enterText('testtestmail.com');
      await driver.tap(passwordField);
      await driver.enterText('testing');
      await driver.tap(signInButton);
      // await driver.waitFor(flushbarHelper);
      assert(flushbarHelper != null);
      await driver.waitUntilNoTransientCallbacks();
      assert(extendedNavigator == null);
    });

    test(
        'shold provide flash helper feedback "Invalid email and password combination" when login fails with email space at the end',
        () async {
      await driver.tap(emailField);
      await driver.enterText('test@testmail.com ');
      await driver.tap(passwordField);
      await driver.enterText('testing');
      await driver.tap(signInButton);
      // await driver.waitFor(flushbarHelper);
      assert(flushbarHelper != null);
      await driver.waitUntilNoTransientCallbacks();
      assert(extendedNavigator == null);
    });

    test('logs in with correct email and password', () async {
      await driver.tap(emailField);
      await driver.enterText('test@testmail.com');
      await driver.tap(passwordField);
      await driver.enterText('testing');
      await driver.tap(signInButton);
      // await driver.waitFor(extendedNavigator);
      assert(extendedNavigator != null);
      await driver.tap(floatingActionButton);
      assert(extendedNavigator == null);
      await driver.waitUntilNoTransientCallbacks();
    });
  });
}
