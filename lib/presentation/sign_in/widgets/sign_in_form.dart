import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/keys/keys.dart';
import 'package:firebase_ddd_tutorial/domain/core/strings/strings.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_ddd_tutorial/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                        cancelledByUser: (_) => Strings.cancelled,
                        serverError: (_) => Strings.serverError,
                        emailAlreadyInUse: (_) => Strings.emailAlreadyInUse,
                        invalidEmailAndPasswordCombination: (_) =>
                            Strings.invalidEmailAndPasswordCombination),
                  ).show(context);
                }, (_) {
                  ExtendedNavigator.of(context).pushShopsOverviewPage();
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 130,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                key: const Key(Keys.emailField),
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
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
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                key: const Key(Keys.passwordField),
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.password.value.fold(
                        (f) => f.maybeMap(
                              shortPassword: (_) => Strings.shortPassword,
                              orElse: () => null,
                            ),
                        (_) => null),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: Strings.password,
                ),
                autocorrect: false,
                obscureText: true,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text(Strings.signIn),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text(Strings.register),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RaisedButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(
                        const SignInFormEvent.signInWithGooglePressed(),
                      );
                },
                color: Colors.lightBlue,
                child: const Text(
                  Strings.signInWithGoogle,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator(),
              ]
            ],
          ),
        );
      },
    );
  }
}
