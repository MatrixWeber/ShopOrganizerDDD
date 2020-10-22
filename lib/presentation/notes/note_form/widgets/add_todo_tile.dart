import 'package:flutter/material.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Add a todo'),
      leading: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.add),
      ),
    );
  }
}
