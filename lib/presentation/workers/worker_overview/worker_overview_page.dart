import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/image/image_handler/image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_actor/worker_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_watcher/worker_watcher_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:firebase_ddd_tutorial/presentation/workers/worker_overview/widgets/worker_overview_form.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class WorkerOverviewPage extends StatelessWidget {
  final Shop shop;

  const WorkerOverviewPage({
    Key key,
    @required this.shop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WorkerWatcherBloc>(
          create: (context) => getIt<WorkerWatcherBloc>()
            ..add(WorkerWatcherEvent.watchAllStarted(shop)),
        ),
        BlocProvider<WorkerActorBloc>(
          create: (context) => getIt<WorkerActorBloc>(),
        ),
        BlocProvider<ImageHandlerBloc>(
          create: (context) => getIt<ImageHandlerBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).pushSignInPage(),
                orElse: () {});
          }),
          BlocListener<WorkerActorBloc, WorkerActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.workerFailure.map(
                        unexpected: (_) =>
                            'Unexpected error occured while deleting, please contact support',
                        unableToUpdate: (_) => 'Impossible error',
                        insufficientPermissions: (_) =>
                            'Insufficient permissions ❌'),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text('Worker of ${shop.name.getOrCrash()}'),
            leading: IconButton(
              key: const Key('Keys.logout'),
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AuthBloc>().add(
                      const AuthEvent.signedOut(),
                    );
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  ExtendedNavigator.of(context).pop();
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ExtendedNavigator.of(context)
                  .pushWorkerCreationPage(shop: shop, numOfWorkers: 1);
            },
            child: const Icon(Icons.add),
          ),
          body: WorkerOverviewForm(shop: shop),
        ),
      ),
    );
  }
}
