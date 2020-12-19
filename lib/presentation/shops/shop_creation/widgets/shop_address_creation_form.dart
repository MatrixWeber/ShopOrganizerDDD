import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/core/helper_functions.dart';
import '../../../routes/router.gr.dart';

// ignore: must_be_immutable
class ShopAddressCreationForm extends StatelessWidget {
  final Shop shop;

  const ShopAddressCreationForm({Key key, this.shop}) : super(key: key);
  static const _PADDING = 6.0;
  static const _TF_SIZE = 20.0;

  @override
  Widget build(BuildContext context) {
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
                            'Unexpected error occured while $functionName, please contact support',
                        unableToUpdate: (_) => 'Impossible error',
                        insufficientPermissions: (_) =>
                            'Insufficient permissions ❌'),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                }, (_) {
                  ExtendedNavigator.of(context)
                      .pushWorkerCreationPage(shop: shopFormState.shop);
                }));
      },
      builder: (BuildContext context, ShopFormState shopFormState) {
        return Form(
          autovalidateMode: shopFormState.showErrorMessage
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(_PADDING),
            children: <Widget>[
              Text('Shop Address properties',
                  style: textStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center),
              const Padding(
                padding: EdgeInsets.all(_PADDING),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: customShadow,
                  color: primaryColor,
                  gradient: LinearGradient(
                    colors: [primaryColor, Colors.cyan[100]],
                  ),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Text('Address', style: TextStyle(fontSize: _TF_SIZE)),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      key: const Key('city-field'),
                      onChanged: (value) => context
                          .read<ShopFormBloc>()
                          .add(ShopFormEvent.cityChanged(value)),
                      validator: (_) => context
                          .read<ShopFormBloc>()
                          .state
                          .shop
                          .address
                          .city
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                    empty: (_) => 'City cannot be empty',
                                    exceedingLength: (_) => 'Invalid city',
                                    orElse: () => null,
                                  ),
                              (_) => null),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'City',
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.text,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(_PADDING),
                    ),
                    TextFormField(
                      key: const Key('street-field'),
                      onChanged: (value) => context
                          .read<ShopFormBloc>()
                          .add(ShopFormEvent.streetChanged(value)),
                      validator: (_) => context
                          .read<ShopFormBloc>()
                          .state
                          .shop
                          .address
                          .street
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                    empty: (_) => 'Street cannot be empty',
                                    exceedingLength: (_) => 'Invalid street',
                                    orElse: () => null,
                                  ),
                              (_) => null),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'Street',
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.text,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(_PADDING),
                    ),
                    TextFormField(
                      key: const Key('zip-field'),
                      onChanged: (value) => context
                          .read<ShopFormBloc>()
                          .add(ShopFormEvent.zipChanged(value)),
                      validator: (_) => context
                          .read<ShopFormBloc>()
                          .state
                          .shop
                          .address
                          .zip
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                    empty: (_) => 'Zip cannot be empty',
                                    exceedingLength: (_) => 'Invalid zip',
                                    orElse: () => null,
                                  ),
                              (_) => null),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'Zip',
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(_PADDING),
                    ),
                    TextFormField(
                      key: const Key('house-number-field'),
                      onChanged: (value) => context
                          .read<ShopFormBloc>()
                          .add(ShopFormEvent.houseNumberChanged(value)),
                      validator: (_) => context
                          .read<ShopFormBloc>()
                          .state
                          .shop
                          .address
                          .houseNumber
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                    maxTypeExceeded: (_) =>
                                        'Invalid house number',
                                    orElse: () => null,
                                  ),
                              (_) => null),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'House Number',
                      ),
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(_PADDING),
              ),
              RaisedButton(
                onPressed: () {
                  context
                      .read<ShopFormBloc>()
                      .add(ShopFormEvent.shopChanged(shop));
                  context.read<ShopFormBloc>().add(const ShopFormEvent.saved());
                },
                child: const Text('Create some worker',
                    style: TextStyle(fontSize: _TF_SIZE)),
              ),
            ],
          ),
        );
      },
    );
  }
}
