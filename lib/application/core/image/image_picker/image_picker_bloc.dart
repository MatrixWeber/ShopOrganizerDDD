import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/failures.dart';
import 'package:firebase_ddd_tutorial/domain/image/image_picker/i_image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'image_picker_event.dart';
part 'image_picker_state.dart';
part 'image_picker_bloc.freezed.dart';

@injectable
class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final IImagePicker _imagePicker;

  ImagePickerBloc(this._imagePicker) : super(const ImagePickerState.initial());
  @override
  Stream<ImagePickerState> mapEventToState(
    ImagePickerEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield const ImagePickerState.initial();
      },
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
