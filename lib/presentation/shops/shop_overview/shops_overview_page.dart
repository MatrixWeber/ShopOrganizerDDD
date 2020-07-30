import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_actor/shop_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_watcher/shop_watcher_bloc.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_overview/widgets/shop_overview_form.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class ShopsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ShopWatcherBloc>(
          create: (context) => getIt<ShopWatcherBloc>()
            ..add(const ShopWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<ShopActorBloc>(
          create: (context) => getIt<ShopActorBloc>(),
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
          BlocListener<ShopActorBloc, ShopActorState>(
            listener: (context, state) {
              state.maybeMap(
                  deleteFailure: (state) {
                    FlushbarHelper.createError(
                      message: state.shopFailure.map(
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
            title: const Text('Shops'),
            leading: IconButton(
              key: const Key('icon-button-sign-out'),
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(
                      const AuthEvent.signedOut(),
                    );
              },
            ),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.indeterminate_check_box),
                  onPressed: () {})
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ExtendedNavigator.of(context).pushShopsCreationPage();
            },
            child: const Icon(Icons.add),
          ),
          body: ShopOverviewForm(),
        ),
      ),
    );
  }
}
