import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/core/image_failure.dart';
import 'package:firebase_ddd_tutorial/domain/core/value_objects.dart';
import 'package:firebase_ddd_tutorial/domain/image/image_store/i_image_store_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'image_handler_event.dart';
part 'image_handler_state.dart';
part 'image_handler_bloc.freezed.dart';

@injectable
class ImageHandlerBloc extends Bloc<ImageHandlerEvent, ImageHandlerState> {
  final IImageStoreRepository _imageRepository;
  StreamSubscription<Either<None, ImageUrl>> _streamSubscription;

  ImageHandlerBloc(this._imageRepository)
      : super(const ImageHandlerState.initial());

  @override
  Stream<ImageHandlerState> mapEventToState(
    ImageHandlerEvent event,
  ) async* {
    yield* event.map(
      uploadImageStarted: (e) async* {
        yield const ImageHandlerState.loadInProgress(0);
        await _streamSubscription?.cancel();
        _streamSubscription = _imageRepository
            .uploadImage(e.image, e.parentId.getOrCrash(),
                e.id == null ? '' : e.id.getOrCrash())
            .listen((failureOrImageUrl) {
          if (failureOrImageUrl.isRight()) {
            add(ImageHandlerEvent.imageReceived(failureOrImageUrl));
          }
        });
      },
      // downloadImageStarted: (e) async* {
      //   yield const ImageHandlerState.loadInProgress(0);
      //   await _workerStreamSubscription?.cancel();
      //   // // _workerStreamSubscription = _workerRepository
      //   // //     .downloadImage(e.imageUml.getOrCrash())
      //   // //     .listen((failureOrImage) {
      //   // //   if (failureOrImage.isRight()) {
      //   // //     add(ImageHandlerEvent.imageDownloaded(failureOrImage));
      //   // //   }
      //   // });
      // },
      imageDeleted: (e) async* {
        yield const ImageHandlerState.loadInProgress(0);
        final failureOrSuccess = await _imageRepository.deleteImage(e.imageUrl);
        failureOrSuccess.fold((f) => ImageHandlerState.loadFailure(f),
            (_) => const ImageHandlerState.deletedSuccessful());
        yield const ImageHandlerState.loadInProgress(100);
      },
      imageReceived: (e) async* {
        yield const ImageHandlerState.loadInProgress(100);
        yield e.failureOrImageUrl.fold(
            (_) => const ImageHandlerState.loadFailure(
                ImageFailure.insufficientPermissions()),
            (imageUrl) => ImageHandlerState.uploadedSuccessful(imageUrl));
      },
      // imageDownloaded: (e) async* {
      //   yield const ImageHandlerState.loadInProgress(100);
      //   yield e.failureOrImage.fold(
      //       (_) => const ImageHandlerState.loadFailure(
      //           WorkerFailure.insufficientPermissions()),
      //       (image) => ImageHandlerState.downloadedSuccessful(image));
      // },
    );
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }
}
