import 'package:auto_route/auto_route_annotations.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/shop_address_creation_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/shop_creation_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_overview/shops_overview_page.dart';
import 'package:firebase_ddd_tutorial/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_ddd_tutorial/presentation/workers/worker_creation/worker_creation_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: ShopsOverviewPage),
    MaterialRoute(page: ShopsCreationPage, initial: true),
    MaterialRoute(page: ShopAddressCreationPage),
    MaterialRoute(page: WorkerCreationPage),
  ],
)
class $TestRouter {}
