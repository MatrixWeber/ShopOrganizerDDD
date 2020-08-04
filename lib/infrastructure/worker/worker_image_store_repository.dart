import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_image_store_repository.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firebase_storage_helpers.dart';

@LazySingleton(as: IWorkerImageStoreRepository)
class WorkerImageStoreRepository implements IWorkerImageStoreRepository {
  final FirebaseStorage _firebaseStorage;

  WorkerImageStoreRepository(this._firebaseStorage);

  @override
  Future<Either<WorkerFailure, Unit>> deleteImage(String imageUrl) async {
    try {
      final storegeReference =
          await _firebaseStorage.getReferenceFromUrl(imageUrl);
      await storegeReference.delete();
      return right(unit);
    } on PlatformException catch (e) {
      return left(_handlePlatformExceptions(e));
    }
  }

  @override
  Stream<Either<None, ImageUrl>> uploadImage(File image) async* {
    try {
      final storageReference = await _firebaseStorage.userDocument.call();

      final uploadTask = storageReference
          .child(storageReference.shopsCollection)
          // .child(parentShopId)
          .child(storageReference.workerCollection)
          .putFile(image);

      // final StreamSubscription<StorageTaskEvent> streamSubscription =
      // yield* uploadTask.events.map((event) {
      //   if (event.type == StorageTaskEventType.progress) {
      //     return left(const None());
      //   } else {
      //     return left(const None());
      //   }
      // });
      // .listen((event) {
      // You can use this to notify yourself or your user in any kind of way.
      // For example: you could use the uploadTask.events stream in a StreamBuilder instead
      // to show your user what the current status is. In that case, you would not need to cancel any
      // subscription as StreamBuilder handles this automatically.

      // Here, every StorageTaskEvent concerning the upload is printed to the logs.
      //   print('EVENT ${event.type}');
      // });
// Cancel your subscription when done.
      final uploadSnapshot = await uploadTask.onComplete;
      final uploadError = uploadSnapshot.error;
      final downLoadUrl = await uploadSnapshot.ref.getDownloadURL();
      if (uploadError == null) {
        yield right<None, ImageUrl>(ImageUrl(downLoadUrl.toString()));
      }
      // yield* uploadTask.onComplete.then((value) {
      //   if (value.error == null) {
      //     value.ref.getDownloadURL().then((downloadUrl) {
      //       return right<WorkerFailure, ImageUrl>(
      //           ImageUrl(downloadUrl.toString()));
      //     });
      //   } else {
      //     return Future.error(value.error);
      //   }
      //   return Future.error('');
      // });
      // streamSubscription.cancel();
    } on PlatformException catch (e) {
      // yield left(_handlePlatformExceptions(e));
    }
  }

  WorkerFailure _handlePlatformExceptions(PlatformException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return const WorkerFailure.insufficientPermissions();
    } else if (e.message.contains('NOT_FOUND')) {
      // TODO log.error(e.toString);
      return const WorkerFailure.unableToUpdate();
    } else {
      // TODO log.error(e.toString);
      return const WorkerFailure.unexpected();
    }
  }

//   @override
//   Future<Either<WorkerFailure, File>> downloadImage(ImageUrl imageUrl) async {
//     try {
//       final storageReference = await _firebaseStorage.userDocument.call();
// _firebaseStorage.ref().
//       final uploadTask = storageReference.getDownloadURL();

//       final StreamSubscription<StorageTaskEvent> streamSubscription =
//           uploadTask.events.listen((event) {
//         // You can use this to notify yourself or your user in any kind of way.
//         // For example: you could use the uploadTask.events stream in a StreamBuilder instead
//         // to show your user what the current status is. In that case, you would not need to cancel any
//         // subscription as StreamBuilder handles this automatically.

//         // Here, every StorageTaskEvent concerning the upload is printed to the logs.
//         print('EVENT ${event.type}');
//       });

// // Cancel your subscription when done.
//       await uploadTask.onComplete;
//       streamSubscription.cancel();
//       return right(unit);
//     } on PlatformException catch (e) {
//       return _handlePlatformExceptions(e);
//     }
//   }
}
