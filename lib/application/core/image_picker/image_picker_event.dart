part of 'image_picker_bloc.dart';

@freezed
abstract class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.selectImageFromGalleryStarted() =
      _SelectImageFromGalleryStarted;
  const factory ImagePickerEvent.getImageFromCameraStarted() =
      _GetImageFromCameraStarted;
}
