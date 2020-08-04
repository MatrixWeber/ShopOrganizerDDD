import 'package:flutter/material.dart';

class ConfirmDialog {
  static void showYesNo(
      BuildContext context, void Function(BuildContext) yesPressed) {
    // set up the buttons
    final Widget yesButton = FlatButton(
      onPressed: () {
        Navigator.of(context).pop();
        yesPressed(context);
      },
      child: const Text("Yes"),
    );
    final Widget noButton = FlatButton(
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
