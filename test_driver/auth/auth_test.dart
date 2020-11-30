import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

// import 'package:flutter_test/flutter_test.dart';
// import 'package:flushbar/flushbar_helper.dart';
void main() {
  group('FlutterAuthSignInTestPage', () {
    final emailField = find.byValueKey('email-field');
    final passwordField = find.byValueKey('password-field');
    final signInButton = find.text('SIGN IN');
    const shortPassword = SHORT_PASSWORD;
    const invalidEmail = INVALID_EMAIL;
    // final signInWithGoogleButton = find.text('SIGN IN WITH GOOGLE');
    final flushbarHelper = find.byType('FlushbarHelper');

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
        'shold provide validation message $shortPassword when login fails with password to short',
        () async {
      await driver.runUnsynchronized(() async {
        await driver.tap(emailField);
        await driver.waitFor(find.text(''));
        const email = 'test@testmail.com';
        await driver.enterText(email);
        await driver.waitFor(find.text(email));
        await driver.tap(passwordField);
        await driver.enterText('test');
        await driver.tap(signInButton);
        // await driver.waitFor(flushbarHelper);
        assert(flushbarHelper != null);
        // expect(flushbarHelper, 'Invalid email and password combination');
        await driver.waitFor(find.text(email));
        expect(await driver.getText(find.text(shortPassword)), shortPassword);
        // final emailStr = await driver.getText(shortPassword);
        await driver.waitUntilNoTransientCallbacks();
        // assert(email != emailStr);
      });
    });

    test(
        'shold provide validation message $invalidEmail when login fails with email has no @ sign',
        () async {
      await driver.tap(emailField);
      const email = 'testtestmail.com';
      await driver.enterText(email);
      await driver.tap(passwordField);
      await driver.enterText('testing');
      await driver.tap(signInButton);
      // await driver.waitFor(flushbarHelper);
      assert(flushbarHelper != null);
      await driver.waitUntilNoTransientCallbacks();
      expect(await driver.getText(find.text(invalidEmail)), invalidEmail);
      await driver.waitFor(find.text(email));
    });

    test(
        'shold provide validation message $invalidEmail when login fails with email space at the end',
        () async {
      await driver.tap(emailField);
      const email = 'test@testmail.com ';
      await driver.enterText(email);
      await driver.tap(passwordField);
      await driver.enterText('testing');
      await driver.tap(signInButton);
      // await driver.waitFor(flushbarHelper);
      assert(flushbarHelper != null);
      await driver.waitUntilNoTransientCallbacks();
      await driver.waitFor(find.text(email));
      expect(await driver.getText(find.text(invalidEmail)), invalidEmail);
    });

    test('logs in with correct email and password', () async {
      await driver.tap(emailField);
      const email = 'test@testmail.com';
      await driver.enterText(email);
      await driver.tap(passwordField);
      await driver.enterText('testing');
      await driver.tap(signInButton);
      // await driver.waitFor(extendedNavigator);
      await driver.waitUntilNoTransientCallbacks();
      final floatingActionButton = find.byValueKey('icon-button-sign-out');
      assert(floatingActionButton != null);
      expect(await driver.getText(find.text('Notes')), 'Notes');
      await driver.tap(floatingActionButton);
      await driver.waitFor(find.text('Sign in'));
    });
  });
}
