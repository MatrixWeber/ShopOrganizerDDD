import 'package:auto_route/auto_route_annotations.dart';
import 'package:firebase_ddd_tutorial/presentation/home/home_page.dart';
import 'package:firebase_ddd_tutorial/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/shop_creation_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/shop_worker_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_overview/shops_overview_page.dart';
import 'package:firebase_ddd_tutorial/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_ddd_tutorial/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: NotesOverviewPage),
    MaterialRoute(page: ShopsOverviewPage),
    MaterialRoute(page: ShopsCreationPage),
    MaterialRoute(page: ShopWorkerPage),
  ],
)
class $Router {}
