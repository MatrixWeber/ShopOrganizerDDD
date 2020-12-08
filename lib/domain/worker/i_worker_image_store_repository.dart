import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';

abstract class IWorkerImageStoreRepository {
  // Stream<Image> getImage();
  Stream<Either<None, ImageUrl>> uploadImage(
      File image, String parentId, String id);
  Future<Either<WorkerFailure, Unit>> deleteImage(String imageUrl);
  // Future<Either<WorkerFailure, File>> downloadImage(ImageUrl imageUrl);
}
