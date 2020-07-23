import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/core/image_picker/image_picker_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_form/worker_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/helper_functions.dart';
import 'package:firebase_ddd_tutorial/presentation/core/image_widget.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopWorkerCreationForm extends StatelessWidget {
  static const _RADIUS = 120.0;
  static const _PADDING = 6.0;
  static const _TF_EDGE = 12.0;
  static const _TF_SIZE = 20.0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkerFormBloc, WorkerFormState>(
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
                ExtendedNavigator.of(context)
                    .pushReplacementNamed(Routes.notesOverviewPage);
              }));
    }, builder: (context, state) {
      return Form(
        autovalidate: state.showErrorMessage,
        child: ListView(
          padding: const EdgeInsets.all(_PADDING),
          children: <Widget>[
            Text('Workers properties',
                style: textStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center),
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            GestureDetector(
              onTap: () => _showChoiseDialog(context),
              child: decideImageView(null),
            ),
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            TextFormField(
              key: const Key('name-field'),
              onChanged: (value) => context
                  .bloc<WorkerFormBloc>()
                  .add(WorkerFormEvent.nameChanged(value)),
              validator: (_) =>
                  context.bloc<WorkerFormBloc>().state.worker.name.value.fold(
                      (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Name',
                            orElse: () => null,
                          ),
                      (_) => null),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.nature),
                labelText: 'Name',
              ),
              autocorrect: false,
              keyboardType: TextInputType.text,
            ),
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            TextFormField(
              key: const Key('email-field'),
              onChanged: (value) => context
                  .bloc<WorkerFormBloc>()
                  .add(WorkerFormEvent.emailChanged(value)),
              validator: (_) =>
                  context.bloc<WorkerFormBloc>().state.worker.email.value.fold(
                      (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Email',
                            orElse: () => null,
                          ),
                      (_) => null),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
            ),
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            TextFormField(
              key: const Key('phone-field'),
              onChanged: (value) => context
                  .bloc<WorkerFormBloc>()
                  .add(WorkerFormEvent.phoneNumberChanged(value)),
              validator: (_) => context
                  .bloc<WorkerFormBloc>()
                  .state
                  .worker
                  .phoneNumber
                  .value
                  .fold(
                      (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid Phone Number',
                            orElse: () => null,
                          ),
                      (_) => null),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone_iphone),
                labelText: 'Phone',
              ),
              autocorrect: false,
              keyboardType: TextInputType.phone,
            ),
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            RaisedButton(
              onPressed: () => context
                  .bloc<WorkerFormBloc>()
                  .add(const WorkerFormEvent.saved()),
              child: const Text('Add some Tasks',
                  style: TextStyle(fontSize: _TF_SIZE)),
            ),
          ],
        ),
      );
    });
  }

  // void _showWaitSnackBar() {
  //   _scaffoldState.currentState.showSnackBar(SnackBar(
  //     duration: new Duration(seconds: 4),
  //     content: Row(
  //       children: <Widget>[
  //         new CircularProgressIndicator(),
  //         new Text("  Signing-In...")
  //       ],
  //     ),
  //   ));
  // }

  Future<void> _showChoiseDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Choose the Foto source',
                style: textStyle(fontSize: 24.0, color: Colors.black),
                textAlign: TextAlign.center),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => context.bloc<ImagePickerBloc>().add(
                        const ImagePickerEvent.selectImageFromGalleryStarted()),
                    child: Text(
                      'Galery',
                      style: textStyle(fontSize: 21.0, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    onTap: () => context.bloc<ImagePickerBloc>().add(
                        const ImagePickerEvent.getImageFromCameraStarted()),
                    child: Text('Camera',
                        style: textStyle(fontSize: 21.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
