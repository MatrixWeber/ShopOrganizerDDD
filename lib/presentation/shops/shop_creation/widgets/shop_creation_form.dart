import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_ddd_tutorial/domain/core/helper_functions.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCreationForm extends StatelessWidget {
  // static const _RADIUS = 120.0;
  static const _PADDING = 6.0;
  // static const _TF_EDGE = 12.0;
  static const _TF_SIZE = 20.0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopFormBloc, ShopFormState>(
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
                ExtendedNavigator.of(context).pushShopWorkerCreationPage(
                    parentShopId: state.shop.id,
                    numOfWorkers: state.shop.numberOfWorkers.getOrCrash());
              }));
    }, builder: (context, state) {
      return Form(
        autovalidate: state.showErrorMessage,
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
            // GestureDetector(
            //   onTap: () => _showChoiseDialog(context),
            //   child: _decideImageView(),
            // ),
            // Padding(
            //   padding: EdgeInsets.all(_PADDING),
            // ),
            TextFormField(
              key: const Key('name-field'),
              onChanged: (value) => context
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.nameChanged(value)),
              validator: (_) =>
                  context.bloc<ShopFormBloc>().state.shop.name.value.fold(
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
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.keeperChanged(value)),
              validator: (_) =>
                  context.bloc<ShopFormBloc>().state.shop.keeper.value.fold(
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
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.emailChanged(value)),
              validator: (_) =>
                  context.bloc<ShopFormBloc>().state.shop.email.value.fold(
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
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.phoneNumberChanged(value)),
              validator: (_) => context
                  .bloc<ShopFormBloc>()
                  .state
                  .shop
                  .phoneNumber
                  .value
                  .fold(
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
              key: const Key('city-field'),
              onChanged: (value) => context
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.cityChanged(value)),
              validator: (_) => context
                  .bloc<ShopFormBloc>()
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
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.streetChanged(value)),
              validator: (_) => context
                  .bloc<ShopFormBloc>()
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
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.zipChanged(value)),
              validator: (_) => context
                  .bloc<ShopFormBloc>()
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
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.houseNumberChanged(value)),
              validator: (_) => context
                  .bloc<ShopFormBloc>()
                  .state
                  .shop
                  .address
                  .houseNumber
                  .value
                  .fold(
                      (f) => f.maybeMap(
                            maxTypeExceeded: (_) => 'Invalid house number',
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
            const Padding(
              padding: EdgeInsets.all(_PADDING),
            ),
            TextFormField(
              key: const Key('number-of-worker-field'),
              onChanged: (value) => context
                  .bloc<ShopFormBloc>()
                  .add(ShopFormEvent.numberOfWorkersChanged(int.parse(value))),
              validator: (_) => context
                  .bloc<ShopFormBloc>()
                  .state
                  .shop
                  .numberOfWorkers
                  .value
                  .fold(
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
              onPressed: () =>
                  context.bloc<ShopFormBloc>().add(const ShopFormEvent.saved()),
              child: const Text('Add some worker',
                  style: TextStyle(fontSize: _TF_SIZE)),
            ),
          ],
        ),
      );
    });
  }
}
