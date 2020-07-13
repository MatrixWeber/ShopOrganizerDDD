import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/application/notes/note_actor/note_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) => ExtendedNavigator.of(context)
                    .pushReplacementNamed(Routes.signInPage),
                orElse: () {});
          }),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                  deleteFailure: (state) {
                    FlushbarHelper.createError(
                      message: state.noteFailure.map(
                          unexpected: (_) =>
                              'Unexpected error occured while deleting, please contact support',
                          unableToUpdate: (_) => 'Impossible error',
                          insufficientPermissions: (_) =>
                              'Insufficient permissions ❌'),
                      duration: const Duration(seconds: 5),
                    ).show(context);
                  },
                  orElse: () {});
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
              key: const Key('icon-button-sign-out'),
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(
                      const AuthEvent.signedOut(),
                    );
              },
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.indeterminate_check_box), onPressed: () {})
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO navigate to note form page
              ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.shopsOverviewPage);
            },
            child: Icon(Icons.add),
          ),
          body: const Center(
            child: Text('euter'),
          ),
        ),
      ),
    );
  }
}
