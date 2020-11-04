import 'package:firebase_ddd_tutorial/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_ddd_tutorial/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:firebase_ddd_tutorial/presentation/notes/note_form/misc/build_context_x.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) => p.note.todos.isFull != c.note.todos.isFull,
      listener: (context, state) {
        if (state.note.todos.isFull) {
          FlushbarHelper.createAction(
            message: 'Want longer lists? Activate premium 😍',
            button: FlatButton(
              onPressed: () {},
              child: const Text(
                'BUY NOW',
                style: TextStyle(color: Colors.yellow),
              ),
            ),
            duration: const Duration(seconds: 5),
          ).show(context);
        }
      },
      child: Consumer<FormTodos>(builder: (context, formTodos, child) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: formTodos.value.size,
            itemBuilder: (context, index) {
              return TodoTile(
                index: index,
              );
            });
      }),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;
  const TodoTile({@required this.index, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = context.formTodos[index];
    return ListTile(
      leading: Checkbox(value: true, onChanged: (value) {}),
    );
  }
}
