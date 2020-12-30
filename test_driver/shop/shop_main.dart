import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_tutorial/injection.dart';
import 'package:firebase_ddd_tutorial/presentation/routes/router.gr.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/shop_creation_page.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:injectable/injectable.dart';

import 'package:firebase_ddd_tutorial/main.dart' as app;
// class ShopCreationTestPage extends StatelessWidget {
//   const ShopCreationTestPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<AuthBloc>()
//         ..add(
//           const AuthEvent.authCheckRequested(),
//         ),
//       child: MaterialApp(
//         builder: ExtendedNavigator.builder(
//           router: Router(),
//         ),
//         home: ShopsCreationPage(),
//       ),
//     );
//   }
// }

// Future<void> main() async {
//   enableFlutterDriverExtension();
//   WidgetsFlutterBinding.ensureInitialized();
//   configureInjection(Environment.test);
//   await Firebase.initializeApp();
//   runApp(const ShopCreationTestPage());
// }

void main() {
  enableFlutterDriverExtension();
  app.main();
}
