// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/core/value_objects.dart';
import '../../domain/notes/note.dart';
import '../notes/note_form/note_form_page.dart';
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
  static const String noteFormPage = '/note-form-page';
  static const String shopsOverviewPage = '/shops-overview-page';
  static const String shopsCreationPage = '/shops-creation-page';
  static const String shopWorkerCreationPage = '/shop-worker-creation-page';
  static const all = <String>{
    splashPage,
    signInPage,
    notesOverviewPage,
    noteFormPage,
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
    RouteDef(Routes.noteFormPage, page: NoteFormPage),
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
    NoteFormPage: (data) {
      final args = data.getArgs<NoteFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NoteFormPage(
          key: args.key,
          editedNote: args.editedNote,
        ),
        settings: data,
        fullscreenDialog: true,
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
      final args = data.getArgs<ShopWorkerCreationPageArguments>(
        orElse: () => ShopWorkerCreationPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShopWorkerCreationPage(
          key: args.key,
          parentShopId: args.parentShopId,
          numOfWorkers: args.numOfWorkers,
        ),
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

  Future<dynamic> pushNoteFormPage({
    Key key,
    @required Note editedNote,
  }) =>
      push<dynamic>(
        Routes.noteFormPage,
        arguments: NoteFormPageArguments(key: key, editedNote: editedNote),
      );

  Future<dynamic> pushShopsOverviewPage() =>
      push<dynamic>(Routes.shopsOverviewPage);

  Future<dynamic> pushShopsCreationPage() =>
      push<dynamic>(Routes.shopsCreationPage);

  Future<dynamic> pushShopWorkerCreationPage({
    Key key,
    UniqueId parentShopId,
    num numOfWorkers,
  }) =>
      push<dynamic>(
        Routes.shopWorkerCreationPage,
        arguments: ShopWorkerCreationPageArguments(
            key: key, parentShopId: parentShopId, numOfWorkers: numOfWorkers),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NoteFormPage arguments holder class
class NoteFormPageArguments {
  final Key key;
  final Note editedNote;
  NoteFormPageArguments({this.key, @required this.editedNote});
}

/// ShopWorkerCreationPage arguments holder class
class ShopWorkerCreationPageArguments {
  final Key key;
  final UniqueId parentShopId;
  final num numOfWorkers;
  ShopWorkerCreationPageArguments(
      {this.key, this.parentShopId, this.numOfWorkers});
}
