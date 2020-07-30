// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../notes/notes_overview/notes_overview_page.dart';
import '../shops/shop_creation/shop_creation_page.dart';
import '../shops/shop_creation/shop_worker_creation_page.dart';
import '../shops/shop_overview/shops_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String notesOverviewPage = '/notes-overview-page';
  static const String shopsOverviewPage = '/shops-overview-page';
  static const String shopsCreationPage = '/shops-creation-page';
  static const String shopWorkerCreationPage = '/shop-worker-creation-page';
  static const all = <String>{
    splashPage,
    signInPage,
    notesOverviewPage,
    shopsOverviewPage,
    shopsCreationPage,
    shopWorkerCreationPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.notesOverviewPage, page: NotesOverviewPage),
    RouteDef(Routes.shopsOverviewPage, page: ShopsOverviewPage),
    RouteDef(Routes.shopsCreationPage, page: ShopsCreationPage),
    RouteDef(Routes.shopWorkerCreationPage, page: ShopWorkerCreationPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    NotesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotesOverviewPage(),
        settings: data,
      );
    },
    ShopsOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShopsOverviewPage(),
        settings: data,
      );
    },
    ShopsCreationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShopsCreationPage(),
        settings: data,
      );
    },
    ShopWorkerCreationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShopWorkerCreationPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushNotesOverviewPage() =>
      push<dynamic>(Routes.notesOverviewPage);

  Future<dynamic> pushShopsOverviewPage() =>
      push<dynamic>(Routes.shopsOverviewPage);

  Future<dynamic> pushShopsCreationPage() =>
      push<dynamic>(Routes.shopsCreationPage);

  Future<dynamic> pushShopWorkerCreationPage() =>
      push<dynamic>(Routes.shopWorkerCreationPage);
}
