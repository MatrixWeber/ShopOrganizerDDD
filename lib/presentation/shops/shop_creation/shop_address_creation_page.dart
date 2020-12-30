import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/domain/core/keys/keys.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';
import 'widgets/shop_address_creation_form.dart';

class ShopAddressCreationPage extends StatelessWidget {
  final Shop shop;

  const ShopAddressCreationPage({Key key, this.shop}) : super(key: key);

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
            backgroundColor: primaryColor,
            appBar: AppBar(
              title: const Text('Shop Address Creation'),
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
                  key: const Key(Keys.back),
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    ExtendedNavigator.of(context).pop();
                  },
                ),
              ],
            ),
            body: ShopAddressCreationForm(shop: shop),
          ),
        ));
  }
}
