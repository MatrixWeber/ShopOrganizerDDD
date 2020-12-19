import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/core/image_picker/image_picker_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_widget/shop_widget_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_image_handler/worker_image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/core/helper_functions.dart';
import 'package:firebase_ddd_tutorial/presentation/core/confirm_dialog.dart';
import 'package:firebase_ddd_tutorial/presentation/core/image_widget.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
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
    return BlocBuilder<ShopFormBloc, ShopFormState>(
        builder: (context, shopFormState) {
      return Form(
        autovalidateMode: shopFormState.showErrorMessage
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
        child: ListView(
          padding: const EdgeInsets.all(_PADDING),
          children: <Widget>[
            Text('Shops properties',
                style: textStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center),
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            BlocConsumer<ImagePickerBloc, ImagePickerState>(
                listener: (context, imagePickerState) {
              imagePickerState.maybeMap(
                  loadSuccess: (imagePickerState) {
                    Navigator.of(context).pop();
                    _image = imagePickerState.image;
                    context.read<WorkerImageHandlerBloc>().add(
                        WorkerImageHandlerEvent.uploadImageStarted(
                            _image, shopFormState.shop.id));
                  },
                  orElse: () {});
            }, builder:
                    (BuildContext context, ImagePickerState imagePickerState) {
              return BlocBuilder<ShopWidgetBloc, ShopWidgetState>(
                  builder: (context, shopWidgetState) {
                return shopWidgetState.map(
                    initial: (_) =>
                        ImageWidget(percent: percent, image: _image),
                    actionInProgress: (shopWidgetState) => ImageWidget(
                        percent: shopWidgetState.percent, image: _image));
              });
            }),
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            TextFormField(
              key: const Key('name-field'),
              onChanged: (value) => context
                  .read<ShopFormBloc>()
                  .add(ShopFormEvent.nameChanged(value)),
              validator: (_) => shopFormState.shop.name.value.fold(
                  (f) => f.maybeMap(
                        empty: (_) => 'Name cannot be empty',
                        exceedingLength: (_) => 'Invalid Name',
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
              key: const Key('keeper-field'),
              onChanged: (value) => context
                  .read<ShopFormBloc>()
                  .add(ShopFormEvent.keeperChanged(value)),
              validator: (_) => shopFormState.shop.keeper.value.fold(
                  (f) => f.maybeMap(
                        empty: (_) => 'Keeper Name cannot be empty',
                        exceedingLength: (_) => 'Invalid Keeper Name',
                        orElse: () => null,
                      ),
                  (_) => null),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.nature),
                labelText: 'Keeper',
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
                  .read<ShopFormBloc>()
                  .add(ShopFormEvent.emailChanged(value)),
              validator: (_) => shopFormState.shop.email.value.fold(
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
              key: const Key('phone-field'),
              onChanged: (value) => context
                  .read<ShopFormBloc>()
                  .add(ShopFormEvent.phoneNumberChanged(value)),
              validator: (_) => shopFormState.shop.phoneNumber.value.fold(
                  (f) => f.maybeMap(
                        empty: (_) => 'Phone Number cannot be empty',
                        exceedingLength: (_) => 'Invalid Phone Number',
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
              key: const Key('number-of-worker-field'),
              onChanged: (value) => context
                  .read<ShopFormBloc>()
                  .add(ShopFormEvent.numberOfWorkersChanged(int.parse(value))),
              validator: (_) => shopFormState.shop.numberOfWorkers.value.fold(
                  (f) => f.maybeMap(
                        maxTypeExceeded: (_) => 'Invalid number of worker',
                        orElse: () => null,
                      ),
                  (_) => null),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.group_work),
                labelText: 'Number of worker',
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
                ExtendedNavigator.of(context)
                    .pushShopAddressCreationPage(shop: shopFormState.shop);
              },
              child: const Text('Add some worker',
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
        .add(const ShopFormEvent.imageUrlChanged('None'));
    ExtendedNavigator.of(context).pushShopAddressCreationPage();
  }
}
