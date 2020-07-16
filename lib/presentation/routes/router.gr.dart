// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/presentation/splash/splash_page.dart';
import 'package:firebase_ddd_tutorial/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_ddd_tutorial/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_overview/shops_overview_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/shop_creation_page.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_creation/shop_worker_creation_page.dart';

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
    SplashPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    NotesOverviewPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotesOverviewPage(),
        settings: data,
      );
    },
    ShopsOverviewPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShopsOverviewPage(),
        settings: data,
      );
    },
    ShopsCreationPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShopsCreationPage(),
        settings: data,
      );
    },
    ShopWorkerCreationPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShopWorkerCreationPage(),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => pushNamed<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => pushNamed<dynamic>(Routes.signInPage);

  Future<dynamic> pushNotesOverviewPage() =>
      pushNamed<dynamic>(Routes.notesOverviewPage);

  Future<dynamic> pushShopsOverviewPage() =>
      pushNamed<dynamic>(Routes.shopsOverviewPage);

  Future<dynamic> pushShopsCreationPage() =>
      pushNamed<dynamic>(Routes.shopsCreationPage);

  Future<dynamic> pushShopWorkerCreationPage() =>
      pushNamed<dynamic>(Routes.shopWorkerCreationPage);
}
