import 'package:firebase_ddd_tutorial/domain/core/keys/keys.dart';
import 'package:flutter/material.dart';

class ConfirmDialog {
  static void showYesNo(
      BuildContext context, void Function(BuildContext) yesPressed) {
    // set up the buttons
    final Widget yesButton = ElevatedButton(
      key: const Key(Keys.yes),
      onPressed: () {
        Navigator.of(context).pop();
        yesPressed(context);
      },
      child: const Text("Yes"),
    );
    final Widget noButton = ElevatedButton(
      key: const Key(Keys.no),
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text("No"),
    );

    // set up the AlertDialog
    final AlertDialog alert = AlertDialog(
      title: const Text("Continue without foto?"),
      actions: [
        yesButton,
        noButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
