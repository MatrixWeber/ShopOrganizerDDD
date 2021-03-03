// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i40;
import 'application/auth/sign_in_form/bloc/sign_in_form_bloc.dart' as _i31;
import 'application/core/image/image_handler/image_handler_bloc.dart' as _i23;
import 'application/core/image/image_picker/image_picker_bloc.dart' as _i24;
import 'application/core/widget/widget_bloc.dart' as _i36;
import 'application/notes/note_actor/note_actor_bloc.dart' as _i25;
import 'application/notes/note_form/note_form_bloc.dart' as _i26;
import 'application/notes/note_watcher/note_watcher_bloc.dart' as _i27;
import 'application/shops/shop_actor/shop_actor_bloc.dart' as _i28;
import 'application/shops/shop_form/shop_form_bloc.dart' as _i29;
import 'application/shops/shop_watcher/shop_watcher_bloc.dart' as _i30;
import 'application/task/task_actor/task_actor_bloc.dart' as _i32;
import 'application/task/task_form/task_form_bloc.dart' as _i33;
import 'application/user/user_actor/user_actor_bloc.dart' as _i34;
import 'application/user/user_form/user_form_bloc.dart' as _i35;
import 'application/worker/worker_actor/worker_actor_bloc.dart' as _i37;
import 'application/worker/worker_form/worker_form_bloc.dart' as _i38;
import 'application/worker/worker_watcher/worker_watcher_bloc.dart' as _i39;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/image/image_picker/i_image_picker.dart' as _i9;
import 'domain/image/image_store/i_image_store_repository.dart' as _i11;
import 'domain/notes/i_note_repository.dart' as _i13;
import 'domain/shops/i_shop_repository.dart' as _i15;
import 'domain/tasks/i_task_repository.dart' as _i17;
import 'domain/user/i_user_repository.dart' as _i19;
import 'domain/worker/i_worker_repository.dart' as _i21;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i41;
import 'infrastructure/image/image_picker/image_picker_implementation.dart'
    as _i10;
import 'infrastructure/image/image_store/image_store_repository.dart' as _i12;
import 'infrastructure/notes/note_repository.dart' as _i14;
import 'infrastructure/shops/shop_repository.dart' as _i16;
import 'infrastructure/task/task_repository.dart' as _i18;
import 'infrastructure/user/user_repository.dart' as _i20;
import 'infrastructure/worker/worker_repository.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.IAuthFacade>(() =>
      _i8.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i9.IImagePicker>(() => _i10.ImagePickerImplementation());
  gh.lazySingleton<_i11.IImageStoreRepository>(
      () => _i12.ImageStoreRepository(get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i13.INoteRepository>(
      () => _i14.NoteRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i15.IShopRepository>(
      () => _i16.ShopRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i17.ITaskRepository>(
      () => _i18.TaskRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i19.IUserRepository>(
      () => _i20.UserRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i21.IWorkerRepository>(
      () => _i22.WorkerRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i23.ImageHandlerBloc>(
      () => _i23.ImageHandlerBloc(get<_i11.IImageStoreRepository>()));
  gh.factory<_i24.ImagePickerBloc>(
      () => _i24.ImagePickerBloc(get<_i9.IImagePicker>()));
  gh.factory<_i25.NoteActorBloc>(
      () => _i25.NoteActorBloc(get<_i13.INoteRepository>()));
  gh.factory<_i26.NoteFormBloc>(
      () => _i26.NoteFormBloc(get<_i13.INoteRepository>()));
  gh.factory<_i27.NoteWatcherBloc>(
      () => _i27.NoteWatcherBloc(get<_i13.INoteRepository>()));
  gh.factory<_i28.ShopActorBloc>(
      () => _i28.ShopActorBloc(get<_i15.IShopRepository>()));
  gh.factory<_i29.ShopFormBloc>(
      () => _i29.ShopFormBloc(get<_i15.IShopRepository>()));
  gh.factory<_i30.ShopWatcherBloc>(
      () => _i30.ShopWatcherBloc(get<_i15.IShopRepository>()));
  gh.factory<_i31.SignInFormBloc>(
      () => _i31.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i32.TaskActorBloc>(
      () => _i32.TaskActorBloc(get<_i17.ITaskRepository>()));
  gh.factory<_i33.TaskFormBloc>(
      () => _i33.TaskFormBloc(get<_i17.ITaskRepository>()));
  gh.factory<_i34.UserActorBloc>(
      () => _i34.UserActorBloc(get<_i19.IUserRepository>()));
  gh.factory<_i35.UserFormBloc>(
      () => _i35.UserFormBloc(get<_i19.IUserRepository>()));
  gh.factory<_i36.WidgetBloc>(() => _i36.WidgetBloc());
  gh.factory<_i37.WorkerActorBloc>(
      () => _i37.WorkerActorBloc(get<_i21.IWorkerRepository>()));
  gh.factory<_i38.WorkerFormBloc>(
      () => _i38.WorkerFormBloc(get<_i21.IWorkerRepository>()));
  gh.factory<_i39.WorkerWatcherBloc>(
      () => _i39.WorkerWatcherBloc(get<_i21.IWorkerRepository>()));
  gh.factory<_i40.AuthBloc>(() => _i40.AuthBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i41.FirebaseInjectableModule {}
