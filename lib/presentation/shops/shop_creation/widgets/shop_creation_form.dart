import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/core/image/image_picker/image_picker_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/widget/widget_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/image/image_handler/image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/domain/core/helper_functions.dart';
import 'package:firebase_ddd_tutorial/domain/core/keys/keys.dart';
import 'package:firebase_ddd_tutorial/domain/core/strings/strings.dart';
import 'package:firebase_ddd_tutorial/presentation/core/confirm_dialog.dart';
import 'package:firebase_ddd_tutorial/presentation/core/image_widget.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCreationForm extends StatelessWidget {
  // static const _RADIUS = 120.0;
  static const _PADDING = 4.0;
  // static const _TF_EDGE = 12.0;
  static const _TF_SIZE = 20.0;
  @override
  Widget build(BuildContext context) {
    num percent;
    File _image;
    return BlocConsumer<ShopFormBloc, ShopFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, shopFormState) {
          shopFormState.saveFailureOrSuccessOption.fold(
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
                    ExtendedNavigator.of(context)
                        .pushShopAddressCreationPage(shop: shopFormState.shop);
                  }));
        },
        builder: (context, shopFormState) {
          return Form(
            autovalidateMode: shopFormState.showErrorMessage
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: ListView(
              padding: const EdgeInsets.all(_PADDING),
              children: <Widget>[
                Text(Strings.shopProperties,
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
                                _image, shopFormState.shop.id));
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
                  key: const Key(Keys.nameField),
                  onChanged: (value) => context
                      .read<ShopFormBloc>()
                      .add(ShopFormEvent.nameChanged(value)),
                  validator: (_) => shopFormState.shop.name.value.fold(
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
                  key: const Key(Keys.keeperField),
                  onChanged: (value) => context
                      .read<ShopFormBloc>()
                      .add(ShopFormEvent.keeperChanged(value)),
                  validator: (_) => shopFormState.shop.keeper.value.fold(
                      (f) => f.maybeMap(
                            empty: (_) => Strings.cannotBeEmpty,
                            exceedingLength: (_) => Strings.tooLong,
                            isNotALetter: (_) => Strings.shouldContainLetters,
                            orElse: () => null,
                          ),
                      (_) => null),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.nature),
                    labelText: Strings.keeper,
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                ),
                const Padding(
                  padding: EdgeInsets.all(_PADDING),
                ),
                TextFormField(
                  key: const Key(Keys.emailField),
                  onChanged: (value) => context
                      .read<ShopFormBloc>()
                      .add(ShopFormEvent.emailChanged(value)),
                  validator: (_) => shopFormState.shop.email.value.fold(
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
                  key: const Key(Keys.phoneField),
                  onChanged: (value) => context
                      .read<ShopFormBloc>()
                      .add(ShopFormEvent.phoneNumberChanged(value)),
                  validator: (_) => shopFormState.shop.phoneNumber.value.fold(
                      (f) => f.maybeMap(
                            empty: (_) => Strings.cannotBeEmpty,
                            exceedingLength: (_) => Strings.tooLong,
                            isNotAPhoneNumber: (_) =>
                                Strings.invalidPhoneNumber,
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
                TextFormField(
                  key: const Key(Keys.numOfWorkesField),
                  onChanged: (value) => context.read<ShopFormBloc>().add(
                      ShopFormEvent.numberOfWorkersChanged(int.parse(value))),
                  validator: (_) =>
                      shopFormState.shop.numberOfWorkers.value.fold(
                          (f) => f.maybeMap(
                                maxTypeExceeded: (_) => Strings.numberTooBig,
                                orElse: () => null,
                              ),
                          (_) => null),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.group_work),
                    labelText: Strings.numberOfWorker,
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                ),
                const Padding(
                  padding: EdgeInsets.all(_PADDING),
                ),
                RaisedButton(
                  color: primaryColor,
                  onPressed: () {
                    shopFormState.shop.imageUrl.value.fold(
                        (f) => f.maybeMap(
                              empty: (_) => ConfirmDialog.showYesNo(
                                  context, _updateImageUrlToNone),
                              orElse: () => null,
                            ),
                        (_) => null);
                    // ExtendedNavigator.of(context)
                    //     .pushShopAddressCreationPage(shop: shopFormState.shop);
                  },
                  child: const Text(Strings.addSomeWorker,
                      style: TextStyle(fontSize: _TF_SIZE)),
                ),
              ],
            ),
          );
        });
  }

  void _updateImageUrlToNone(
    BuildContext context,
  ) {
    context
        .read<ShopFormBloc>()
        .add(const ShopFormEvent.imageUrlChanged(Strings.none));
    context.read<ShopFormBloc>().add(const ShopFormEvent.validateForm());
  }
}
