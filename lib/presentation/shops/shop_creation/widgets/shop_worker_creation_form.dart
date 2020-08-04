import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/core/image_picker/image_picker_bloc.dart';
import '../../../../application/worker/worker_form/worker_form_bloc.dart';
import '../../../../application/worker/worker_image_handler/worker_image_handler_bloc.dart';
import '../../../../application/worker/worker_widget/worker_widget_bloc.dart';
import '../../../../domain/core/helper_functions.dart';
import '../../../../domain/core/value_objects.dart';
import '../../../core/confirm_dialog.dart';
import '../../../core/image_widget.dart';
import '../../../routes/router.gr.dart';

class ShopWorkerCreationForm extends StatelessWidget {
  static const _RADIUS = 120.0;
  static const _PADDING = 6.0;
  static const _TF_EDGE = 12.0;
  static const _TF_SIZE = 20.0;

  final UniqueId parentShopId;
  final num numOfWorkers;

  const ShopWorkerCreationForm({Key key, this.parentShopId, this.numOfWorkers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    num numOfWorkers = this.numOfWorkers;
    numOfWorkers--;
    num percent;
    File _image;
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
                  if (numOfWorkers > 0) {
                    ExtendedNavigator.of(context).pushShopWorkerCreationPage(
                        parentShopId: parentShopId, numOfWorkers: numOfWorkers);
                  } else {
                    ExtendedNavigator.of(context).pushNotesOverviewPage();
                  }
                }));
      },
      builder: (BuildContext context, WorkerFormState state) {
        return Form(
          autovalidate: context.bloc<WorkerFormBloc>().state.showErrorMessage,
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
              BlocConsumer<ImagePickerBloc, ImagePickerState>(
                  listener: (context, state) {
                state.maybeMap(
                    loadSuccess: (state) {
                      Navigator.of(context).pop();
                      _image = state.image;
                      context.bloc<WorkerImageHandlerBloc>().add(
                          WorkerImageHandlerEvent.uploadImageStarted(_image));
                    },
                    orElse: () {});
              }, builder: (BuildContext context, ImagePickerState state) {
                return BlocBuilder<WorkerWidgetBloc, WorkerWidgetState>(
                    builder: (context, state) {
                  return state.map(
                      initial: (_) =>
                          ImageWidget(percent: percent, image: _image),
                      actionInProgress: (state) =>
                          ImageWidget(percent: state.percent, image: _image));
                });
              }),
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
                              empty: (_) => 'Name cannot be empty',
                              exceedingLength: (_) => 'Invalid Name Length',
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
                validator: (_) => context
                    .bloc<WorkerFormBloc>()
                    .state
                    .worker
                    .email
                    .value
                    .fold(
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
                              empty: (_) => 'Phone cannot be empty',
                              isNotAPhoneNumber: (_) => 'invalid phone number',
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
                  context
                      .bloc<WorkerFormBloc>()
                      .state
                      .worker
                      .imageUrl
                      .value
                      .fold(
                          (f) => f.maybeMap(
                                empty: (_) => ConfirmDialog.showYesNo(
                                    context, _updateImageUrlToNone),
                                orElse: () => null,
                              ),
                          (_) => null);
                  _saveData(context);
                },
                child: const Text('Add some Tasks',
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
        .bloc<WorkerFormBloc>()
        .add(WorkerFormEvent.parentIdChanged(parentShopId));
    context.bloc<WorkerFormBloc>().add(const WorkerFormEvent.saved());
  }

  void _updateImageUrlToNone(
    BuildContext context,
  ) {
    context
        .bloc<WorkerFormBloc>()
        .add(const WorkerFormEvent.imageUrlChanged('None'));
    _saveData(context);
  }
}
