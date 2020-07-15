// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_ddd_tutorial/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_ddd_tutorial/infrastructure/auth/firebase_auth_facade.dart';
import 'package:firebase_ddd_tutorial/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_tutorial/infrastructure/notes/note_repository.dart';
import 'package:firebase_ddd_tutorial/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_tutorial/infrastructure/shops/shop_repository.dart';
import 'package:firebase_ddd_tutorial/domain/shops/i_shop_repository.dart';
import 'package:firebase_ddd_tutorial/infrastructure/task/task_repository.dart';
import 'package:firebase_ddd_tutorial/domain/tasks/i_task_repository.dart';
import 'package:firebase_ddd_tutorial/infrastructure/user/user_repository.dart';
import 'package:firebase_ddd_tutorial/domain/user/i_user_repository.dart';
import 'package:firebase_ddd_tutorial/infrastructure/worker/worker_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_repository.dart';
import 'package:firebase_ddd_tutorial/application/notes/note_actor/note_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_actor/shop_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_form/shop_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_watcher/shop_watcher_bloc.dart';
import 'package:firebase_ddd_tutorial/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/task/task_actor/task_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/task/task_form/task_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/user/user_actor/user_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/user/user_form/user_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_form/worker_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<INoteRepository>(
      () => NoteRepository(g<Firestore>()));
  g.registerLazySingleton<IShopRepository>(
      () => ShopRepository(g<Firestore>()));
  g.registerLazySingleton<ITaskRepository>(
      () => TaskRepository(g<Firestore>()));
  g.registerLazySingleton<IUserRepository>(
      () => UserRepository(g<Firestore>()));
  g.registerLazySingleton<IWorkerRepository>(
      () => WorkerRepository(g<Firestore>()));
  g.registerFactory<NoteActorBloc>(() => NoteActorBloc(g<INoteRepository>()));
  g.registerFactory<NoteFormBloc>(() => NoteFormBloc(g<INoteRepository>()));
  g.registerFactory<NoteWatcherBloc>(
      () => NoteWatcherBloc(g<INoteRepository>()));
  g.registerFactory<ShopActorBloc>(() => ShopActorBloc(g<IShopRepository>()));
  g.registerFactory<ShopFormBloc>(() => ShopFormBloc(g<IShopRepository>()));
  g.registerFactory<ShopWatcherBloc>(
      () => ShopWatcherBloc(g<IShopRepository>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<TaskActorBloc>(() => TaskActorBloc(g<ITaskRepository>()));
  g.registerFactory<TaskFormBloc>(() => TaskFormBloc(g<ITaskRepository>()));
  g.registerFactory<UserActorBloc>(() => UserActorBloc(g<IUserRepository>()));
  g.registerFactory<UserFormBloc>(() => UserFormBloc(g<IUserRepository>()));
  g.registerFactory<WorkerFormBloc>(
      () => WorkerFormBloc(g<IWorkerRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
