import 'package:firebase_ddd_tutorial/injection.dart';
import 'package:firebase_ddd_tutorial/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}


