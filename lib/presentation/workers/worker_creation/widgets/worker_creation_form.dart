import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/core/image_picker/image_picker_bloc.dart';
import '../../../../application/worker/worker_form/worker_form_bloc.dart';
import '../../../../application/worker/worker_image_handler/worker_image_handler_bloc.dart';
import '../../../../application/worker/worker_widget/worker_widget_bloc.dart';
import '../../../../domain/core/helper_functions.dart';
import '../../../core/confirm_dialog.dart';
import '../../../core/image_widget.dart';
import '../../../routes/router.gr.dart';

// ignore: must_be_immutable
class WorkerCreationForm extends StatelessWidget {
  static const _PADDING = 6.0;
  static const _TF_SIZE = 20.0;

  final Shop shop;
  final num numOfWorkers;

  const WorkerCreationForm(
      {Key key, @required this.shop, @required this.numOfWorkers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    num numOfRemainingWorkers = numOfWorkers;
    numOfRemainingWorkers--;
    num percent;
    File _image;
    return BlocConsumer<WorkerFormBloc, WorkerFormState>(
      listenWhen: (p, c) =>
          p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, workerFormState) {
        workerFormState.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                        unexpected: (functionName) =>
                            'Unexpected error occured while $functionName, please contact support',
                        unableToUpdate: (_) => 'Impossible error',
                        insufficientPermissions: (_) =>
                            'Insufficient permissions ❌'),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                }, (_) {
                  if (numOfRemainingWorkers > 0) {
                    ExtendedNavigator.of(context).pushWorkerCreationPage(
                        shop: shop, numOfWorkers: numOfRemainingWorkers);
                  } else {
                    ExtendedNavigator.of(context)
                        .pushWorkerOverviewPage(shop: shop);
                  }
                }));
      },
      builder: (BuildContext context, WorkerFormState workerFormState) {
        return Form(
          autovalidateMode: workerFormState.showErrorMessage
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
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
              BlocConsumer<ImagePickerBloc, ImagePickerState>(listener:
                  (context, imagePickerState) {
                imagePickerState.maybeMap(
                    loadSuccess: (imagePickerState) {
                      Navigator.of(context).pop();
                      _image = imagePickerState.image;
                      context.read<WorkerImageHandlerBloc>().add(
                          WorkerImageHandlerEvent.uploadImageStarted(
                              _image, shop.id, workerFormState.worker.id));
                    },
                    orElse: () {});
              }, builder:
                  (BuildContext context, ImagePickerState imagePickerState) {
                return BlocBuilder<WorkerWidgetBloc, WorkerWidgetState>(
                    builder: (context, workerWidgetState) {
                  return workerWidgetState.map(
                      initial: (_) =>
                          ImageWidget(percent: percent, image: _image),
                      actionInProgress: (workerWidgetState) => ImageWidget(
                          percent: workerWidgetState.percent, image: _image));
                });
              }),
              const Padding(
                padding: EdgeInsets.all(_PADDING),
              ),
              TextFormField(
                autovalidateMode: workerFormState.showErrorMessage
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                key: const Key('name-field'),
                onChanged: (value) => context
                    .read<WorkerFormBloc>()
                    .add(WorkerFormEvent.nameChanged(value)),
                validator: (_) => workerFormState.worker.name.value.fold(
                    (f) => f.maybeMap(
                          empty: (_) => 'Name cannot be empty',
                          exceedingLength: (_) => 'Invalid Name Length',
                          isNotALetter: (_) => 'Name should contain of letters',
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
                autovalidateMode: workerFormState.showErrorMessage
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                key: const Key('email-field'),
                onChanged: (value) => context
                    .read<WorkerFormBloc>()
                    .add(WorkerFormEvent.emailChanged(value)),
                validator: (_) => workerFormState.worker.email.value.fold(
                    (f) => f.maybeMap(
                          invalidEmail: (_) => INVALID_EMAIL,
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
                autovalidateMode: workerFormState.showErrorMessage
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                key: const Key('phone-field'),
                onChanged: (value) => context
                    .read<WorkerFormBloc>()
                    .add(WorkerFormEvent.phoneNumberChanged(value)),
                validator: (_) => workerFormState.worker.phoneNumber.value.fold(
                    (f) => f.maybeMap(
                          empty: (_) => 'Phone cannot be empty',
                          isNotAPhoneNumber: (_) => 'Invalid phone number',
                          exceedingLength: (_) => 'Invalid Phone Length',
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
                onPressed: () {
                  workerFormState.worker.imageUrl.value.fold(
                      (f) => f.maybeMap(
                            empty: (_) => ConfirmDialog.showYesNo(
                                context, _updateImageUrlToNone),
                            orElse: () => null,
                          ),
                      (_) => null);
                  _saveData(context);
                },
                child: const Text('Save Worker',
                    style: TextStyle(fontSize: _TF_SIZE)),
              ),
            ],
          ),
        );
      },
    );
  }

  void _saveData(
    BuildContext context,
  ) {
    context
        .read<WorkerFormBloc>()
        .add(WorkerFormEvent.parentIdChanged(shop.id));
    context.read<WorkerFormBloc>().add(const WorkerFormEvent.saved());
  }

  void _updateImageUrlToNone(
    BuildContext context,
  ) {
    context
        .read<WorkerFormBloc>()
        .add(const WorkerFormEvent.imageUrlChanged('None'));
    _saveData(context);
  }
}
