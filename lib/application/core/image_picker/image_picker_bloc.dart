import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/image_picker/i_image_picker.dart';
import 'package:firebase_ddd_tutorial/domain/worker/i_worker_image_store_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';
part 'image_picker_bloc.freezed.dart';

@injectable
class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final IImagePicker _imagePicker;

  ImagePickerBloc(this._imagePicker);
  @override
  ImagePickerState get initialState => const ImagePickerState.initial();

  @override
  Stream<ImagePickerState> mapEventToState(
    ImagePickerEvent event,
  ) async* {
    yield* event.map(
      selectImageFromGalleryStarted: (e) async* {
        yield const ImagePickerState.loadInProgress();
        final image = await _imagePicker.getImageFromGalery();
        // failureOrSuccess.fold((f) => ImagePickerState.loadFailure(f),
        yield ImagePickerState.loadSuccess(image);
      },
      getImageFromCameraStarted: (e) async* {
        yield const ImagePickerState.loadInProgress();
        final image = await _imagePicker.getImageFromCamera();
        // failureOrSuccess.fold((f) => ImagePickerState.loadFailure(f),
        yield ImagePickerState.loadSuccess(image);
      },
    );
  }
}
