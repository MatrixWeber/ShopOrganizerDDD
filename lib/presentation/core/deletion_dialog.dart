import 'package:flutter/material.dart';

class DeletionDialog {
  static void show(
      {@required BuildContext context,
      @required String title,
      @required String content,
      @required Function onDelete}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Delete $title:',
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
          content: Text(
            content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL'),
            ),
            FlatButton(
              onPressed: () {
                onDelete();
                Navigator.pop(context);
              },
              child: const Text(
                'DELETE',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
