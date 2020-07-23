import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/worker/worker_failure.dart';

abstract class IWorkerImageStoreRepository {
  // Stream<Image> getImage();
  Future<Either<WorkerFailure, ImageUrl>> uploadImage(File image);
  Future<Either<WorkerFailure, Unit>> deleteImage(ImageUrl imageUrl);
  // Future<Either<WorkerFailure, File>> downloadImage(ImageUrl imageUrl);
}
