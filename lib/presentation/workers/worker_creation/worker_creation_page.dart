import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_form/worker_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_widget/worker_widget_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/core/image_picker/image_picker_bloc.dart';
import '../../../application/core/image_handler/image_handler_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';
import 'widgets/worker_creation_form.dart';

class WorkerCreationPage extends StatelessWidget {
  final Shop shop;
  final num numOfWorkers;

  const WorkerCreationPage({Key key, @required this.shop, this.numOfWorkers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<WorkerFormBloc>(
            create: (context) => getIt<WorkerFormBloc>(),
          ),
          BlocProvider<ImageHandlerBloc>(
            create: (context) => getIt<ImageHandlerBloc>(),
          ),
          BlocProvider<ImagePickerBloc>(
            create: (context) => getIt<ImagePickerBloc>(),
          ),
          BlocProvider<WorkerWidgetBloc>(
            create: (context) => getIt<WorkerWidgetBloc>(),
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
            BlocListener<ImageHandlerBloc, ImageHandlerState>(
                listener: (context, state) {
              state.maybeMap(
                uploadedSuccessful: (state) =>
                    context.read<WorkerFormBloc>().add(
                          WorkerFormEvent.imageUrlChanged(
                            state.imageUrl.getOrCrash(),
                          ),
                        ),
                deletedSuccessful: (_) => Navigator.of(context).pop(),
                loadInProgress: (state) => context
                    .read<WorkerWidgetBloc>()
                    .add(WorkerWidgetEvent.inProgress(state.percent)),
                orElse: () {},
              );
            }),
          ],
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Worker Creation'),
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
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {},
            //   child: const Icon(Icons.add),
            // ),
            body: WorkerCreationForm(
              shop: shop,
              numOfWorkers: numOfWorkers ?? shop.numberOfWorkers.getOrCrash(),
            ),
          ),
        ));
  }
}
