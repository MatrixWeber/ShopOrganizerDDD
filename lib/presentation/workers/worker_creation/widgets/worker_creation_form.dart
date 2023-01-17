import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/core/widget/widget_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_form/worker_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/keys/keys.dart';
import 'package:firebase_ddd_tutorial/domain/core/strings/strings.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/core/image/image_picker/image_picker_bloc.dart';
import '../../../../application/core/image/image_handler/image_handler_bloc.dart';
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
                            '${Strings.unexpectedErrorOccured} while $functionName, ${Strings.pleaseContactSupport}',
                        unableToUpdate: (_) => Strings.inpossibleError,
                        insufficientPermissions: (_) =>
                            Strings.insufficientPermissions),
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
                      context.read<ImageHandlerBloc>().add(
                          ImageHandlerEvent.uploadImageStarted(
                              _image, shop.id, workerFormState.worker.id));
                    },
                    orElse: () {});
              }, builder:
                  (BuildContext context, ImagePickerState imagePickerState) {
                return BlocBuilder<WidgetBloc, WidgetState>(
                    builder: (context, widgetState) {
                  return widgetState.map(
                      initial: (_) =>
                          ImageWidget(percent: percent, image: _image),
                      actionInProgress: (widgetState) => ImageWidget(
                          percent: widgetState.percent, image: _image));
                });
              }),
              const Padding(
                padding: EdgeInsets.all(_PADDING),
              ),
              TextFormField(
                autovalidateMode: workerFormState.showErrorMessage
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                key: const Key(Keys.nameField),
                onChanged: (value) => context
                    .read<WorkerFormBloc>()
                    .add(WorkerFormEvent.nameChanged(value)),
                validator: (_) => workerFormState.worker.name.value.fold(
                    (f) => f.maybeMap(
                          empty: (_) => Strings.cannotBeEmpty,
                          exceedingLength: (_) => Strings.tooLong,
                          isNotALetter: (_) => Strings.shouldContainLetters,
                          orElse: () => null,
                        ),
                    (_) => null),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.nature),
                  labelText: Strings.name,
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
                key: const Key(Keys.emailField),
                onChanged: (value) => context
                    .read<WorkerFormBloc>()
                    .add(WorkerFormEvent.emailChanged(value)),
                validator: (_) => workerFormState.worker.email.value.fold(
                    (f) => f.maybeMap(
                          invalidEmail: (_) => Strings.invalidEmail,
                          orElse: () => null,
                        ),
                    (_) => null),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: Strings.email,
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
                key: const Key(Keys.phoneField),
                onChanged: (value) => context
                    .read<WorkerFormBloc>()
                    .add(WorkerFormEvent.phoneNumberChanged(value)),
                validator: (_) => workerFormState.worker.phoneNumber.value.fold(
                    (f) => f.maybeMap(
                          empty: (_) => Strings.cannotBeEmpty,
                          isNotAPhoneNumber: (_) => Strings.invalidPhoneNumber,
                          exceedingLength: (_) => Strings.tooLong,
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
              ElevatedButton(
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
        .add(const WorkerFormEvent.imageUrlChanged(Strings.none));
    _saveData(context);
  }
}
