import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/image_failure.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/image/image_store/i_image_store_repository.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firebase_storage_helpers.dart';

@LazySingleton(as: IImageStoreRepository)
class ImageStoreRepository implements IImageStoreRepository {
  final FirebaseStorage _firebaseStorage;

  ImageStoreRepository(this._firebaseStorage);

  @override
  Future<Either<ImageFailure, Unit>> deleteImage(String imageUrl) async {
    try {
      final storegeReference = _firebaseStorage.refFromURL(imageUrl);
      await storegeReference.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return left(_handlePlatformExceptions(e, 'delete'));
    }
  }

  @override
  Stream<Either<None, ImageUrl>> uploadImage(
      File image, String parentId, String id) async* {
    try {
      final userStorageReference = await _firebaseStorage.userDocument.call();
      final shopStorageReference = userStorageReference
          .child(userStorageReference.shopsCollection)
          .child(parentId);
      final workerStorageReference = shopStorageReference
          .child(userStorageReference.workerCollection)
          .child(id);

      final uploadTask = id.isEmpty
          ? shopStorageReference.putFile(image)
          : workerStorageReference.putFile(image);

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
      final uploadSnapshot = await uploadTask;
//      final uploadError = uploadSnapshot.error;
      final downLoadUrl = await uploadSnapshot.ref.getDownloadURL();
      //if (uploadError == null) {
      yield right<None, ImageUrl>(ImageUrl(downLoadUrl.toString()));
      //}
      // yield* uploadTask.onComplete.then((value) {
      //   if (value.error == null) {
      //     value.ref.getDownloadURL().then((downloadUrl) {
      //       return right<ImageFailure, ImageUrl>(
      //           ImageUrl(downloadUrl.toString()));
      //     });
      //   } else {
      //     return Future.error(value.error);
      //   }
      //   return Future.error('');
      // });
      // streamSubscription.cancel();
    } on FirebaseException catch (e) {
      // yield left(_handlePlatformExceptions(e));
    }
  }

  // @override
  // Future<Either<ImageFailure, Image>> downloadImage(String imageUrl) async {
  //   try {
  //     final downloadData = Image.network(imageUrl);
  //     return right(downloadData);
  //   } on FirebaseException catch (e) {
  //     return left(_handlePlatformExceptions(e, 'download image'));
  //   }
  // }

  ImageFailure _handlePlatformExceptions(
      FirebaseException e, String functionName) {
    if (e.message.contains('permission-denied')) {
      return const ImageFailure.insufficientPermissions();
    } else if (e.message.contains('not-found')) {
      // TODO log.error(e.toString);
      return const ImageFailure.unableToUpdate();
    } else {
      // TODO log.error(e.toString);
      return ImageFailure.unexpected(functionName);
    }
  }

//   @override
//   Future<Either<ImageFailure, File>> downloadImage(ImageUrl imageUrl) async {
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
//     } on FirebaseException catch (e) {
//       return _handlePlatformExceptions(e);
//     }
//   }
}
