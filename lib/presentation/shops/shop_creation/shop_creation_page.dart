import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/image/image_picker/image_picker_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/widget/widget_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/image/image_handler/image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/widgets/shop_creation_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';
import '../../routes/router.gr.dart';

class ShopsCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ShopFormBloc>(
            create: (context) => getIt<ShopFormBloc>(),
          ),
          BlocProvider<WidgetBloc>(
            create: (context) => getIt<WidgetBloc>(),
          ),
          BlocProvider<ImageHandlerBloc>(
            create: (context) => getIt<ImageHandlerBloc>(),
          ),
          BlocProvider<ImagePickerBloc>(
            create: (context) => getIt<ImagePickerBloc>(),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(listener: (context, state) {
              state.maybeMap(
                  unauthenticated: (_) =>
                      ExtendedNavigator.of(context).pushSignInPage(),
                  orElse: () {});
            }),
            BlocListener<ImageHandlerBloc, ImageHandlerState>(
                listener: (context, state) {
              state.maybeMap(
                uploadedSuccessful: (state) => context.read<ShopFormBloc>().add(
                      ShopFormEvent.imageUrlChanged(
                        state.imageUrl.getOrCrash(),
                      ),
                    ),
                deletedSuccessful: (_) => Navigator.of(context).pop(),
                loadInProgress: (state) => context
                    .read<WidgetBloc>()
                    .add(WidgetEvent.inProgress(state.percent)),
                orElse: () {},
              );
            }),
          ],
          child: Scaffold(
            backgroundColor: primaryColor,
            appBar: AppBar(
              title: const Text('Shops'),
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
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    ExtendedNavigator.of(context).pop();
                  },
                ),
              ],
            ),
            body: ShopCreationForm(),
          ),
        ));
  }
}
