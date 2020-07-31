import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/image_picker/image_picker_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_form/worker_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_image_handler/worker_image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/widgets/shop_worker_creation_form.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class ShopWorkerCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<WorkerFormBloc>(
            create: (context) => getIt<WorkerFormBloc>(),
          ),
          BlocProvider<WorkerImageHandlerBloc>(
            create: (context) => getIt<WorkerImageHandlerBloc>(),
          ),
          BlocProvider<ImagePickerBloc>(
            create: (context) => getIt<ImagePickerBloc>(),
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
            BlocListener<WorkerImageHandlerBloc, WorkerImageHandlerState>(
                listener: (context, state) {
              state.maybeMap(
                  uploadedSuccessful: (state) =>
                      context.bloc<WorkerFormBloc>().add(
                            WorkerFormEvent.imageUrlChanged(
                              state.imageUrl.getOrCrash(),
                            ),
                          ),
                  orElse: () {});
            }),
            BlocListener<WorkerFormBloc, WorkerFormState>(
                listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold((failure) {
                        FlushbarHelper.createError(
                          message: failure.map(
                              unexpected: (_) =>
                                  'Unexpected error occured while deleting, please contact support',
                              unableToUpdate: (_) => 'Impossible error',
                              insufficientPermissions: (_) =>
                                  'Insufficient permissions ❌'),
                          duration: const Duration(seconds: 5),
                        ).show(context);
                      }, (_) {
                        ExtendedNavigator.of(context).pushNotesOverviewPage();
                      }));
            }),
          ],
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Worker Overview'),
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
                // TODO navigate to shop form page
              },
              child: const Icon(Icons.add),
            ),
            body: ShopWorkerCreationForm(),
          ),
        ));
  }
}
