import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';
import 'widgets/shop_address_creation_form.dart';

class ShopAddressCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShopFormBloc>(
        create: (context) => getIt<ShopFormBloc>(),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) =>
                    ExtendedNavigator.of(context).pushSignInPage(),
                orElse: () {});
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Shop Address Creation'),
              leading: IconButton(
                key: const Key('icon-button-sign-out'),
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  context.read<AuthBloc>().add(
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
            body: ShopAddressCreationForm(),
          ),
        ));
  }
}
