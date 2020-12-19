import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/core/image_failure.dart';

abstract class IImageStoreRepository {
  // Stream<Image> getImage();
  Stream<Either<None, ImageUrl>> uploadImage(
      File image, String parentId, String id);
  Future<Either<ImageFailure, Unit>> deleteImage(String imageUrl);
  // Future<Either<WorkerFailure, Image>> downloadImage(String imageUrl);
}
