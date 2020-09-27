// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/image_picker/i_image_picker.dart';
import 'domain/notes/i_note_repository.dart';
import 'domain/shops/i_shop_repository.dart';
import 'domain/tasks/i_task_repository.dart';
import 'domain/user/i_user_repository.dart';
import 'domain/worker/i_worker_image_store_repository.dart';
import 'domain/worker/i_worker_repository.dart';
import 'application/core/image_picker/image_picker_bloc.dart';
import 'infrastructure/image_picker/image_picker_implementation.dart';
import 'application/notes/note_actor/note_actor_bloc.dart';
import 'application/notes/note_form/note_form_bloc.dart';
import 'infrastructure/notes/note_repository.dart';
import 'application/notes/note_watcher/note_watcher_bloc.dart';
import 'application/shops/shop_actor/shop_actor_bloc.dart';
import 'application/shops/shop_form/shop_form_bloc.dart';
import 'infrastructure/shops/shop_repository.dart';
import 'application/shops/shop_watcher/shop_watcher_bloc.dart';
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'application/task/task_actor/task_actor_bloc.dart';
import 'application/task/task_form/task_form_bloc.dart';
import 'infrastructure/task/task_repository.dart';
import 'application/user/user_actor/user_actor_bloc.dart';
import 'application/user/user_form/user_form_bloc.dart';
import 'infrastructure/user/user_repository.dart';
import 'application/worker/worker_actor/worker_actor_bloc.dart';
import 'application/worker/worker_form/worker_form_bloc.dart';
import 'application/worker/worker_image_handler/worker_image_handler_bloc.dart';
import 'infrastructure/worker/worker_image_store_repository.dart';
import 'infrastructure/worker/worker_repository.dart';
import 'application/worker/worker_watcher/worker_watcher_bloc.dart';
import 'application/worker/worker_widget/worker_widget_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<IImagePicker>(() => ImagePickerImplementation());
  gh.lazySingleton<INoteRepository>(() => NoteRepository(get<Firestore>()));
  gh.lazySingleton<IShopRepository>(() => ShopRepository(get<Firestore>()));
  gh.lazySingleton<ITaskRepository>(() => TaskRepository(get<Firestore>()));
  gh.lazySingleton<IUserRepository>(() => UserRepository(get<Firestore>()));
  gh.lazySingleton<IWorkerImageStoreRepository>(
      () => WorkerImageStoreRepository(get<FirebaseStorage>()));
  gh.lazySingleton<IWorkerRepository>(() => WorkerRepository(get<Firestore>()));
  gh.factory<ImagePickerBloc>(() => ImagePickerBloc(get<IImagePicker>()));
  gh.factory<NoteActorBloc>(() => NoteActorBloc(get<INoteRepository>()));
  gh.factory<NoteFormBloc>(() => NoteFormBloc(get<INoteRepository>()));
  gh.factory<NoteWatcherBloc>(() => NoteWatcherBloc(get<INoteRepository>()));
  gh.factory<ShopActorBloc>(() => ShopActorBloc(get<IShopRepository>()));
  gh.factory<ShopFormBloc>(() => ShopFormBloc(get<IShopRepository>()));
  gh.factory<ShopWatcherBloc>(() => ShopWatcherBloc(get<IShopRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<TaskActorBloc>(() => TaskActorBloc(get<ITaskRepository>()));
  gh.factory<TaskFormBloc>(() => TaskFormBloc(get<ITaskRepository>()));
  gh.factory<UserActorBloc>(() => UserActorBloc(get<IUserRepository>()));
  gh.factory<UserFormBloc>(() => UserFormBloc(get<IUserRepository>()));
  gh.factory<WorkerActorBloc>(() => WorkerActorBloc(get<IWorkerRepository>()));
  gh.factory<WorkerFormBloc>(() => WorkerFormBloc(get<IWorkerRepository>()));
  gh.factory<WorkerImageHandlerBloc>(
      () => WorkerImageHandlerBloc(get<IWorkerImageStoreRepository>()));
  gh.factory<WorkerWatcherBloc>(
      () => WorkerWatcherBloc(get<IWorkerRepository>()));
  gh.factory<WorkerWidgetBloc>(() => WorkerWidgetBloc());
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
