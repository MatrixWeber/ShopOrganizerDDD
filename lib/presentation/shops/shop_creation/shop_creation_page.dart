import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/widgets/shop_creation_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class ShopsCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: const Icon(Icons.indeterminate_check_box), onPressed: () {})
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // TODO navigate to shop form page
      //   },
      //   child: const Icon(Icons.add),
      // ),
      body: BlocProvider(
        create: (context) => getIt<ShopFormBloc>(),
        child: ShopCreationForm(),
      ),
    );
  }
}
