import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            ExtendedNavigator.of(context).pushSignInPage();
          },
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome',
          textScaleFactor: 2,
          style: TextStyle(color: Colors.lightBlue),
        ),
      ),
    );
  }
}
