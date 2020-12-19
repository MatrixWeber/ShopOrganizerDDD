part of 'image_handler_bloc.dart';

@freezed
abstract class ImageHandlerEvent with _$ImageHandlerEvent {
  const factory ImageHandlerEvent.uploadImageStarted(
      File image, UniqueId parentId,
      [UniqueId id]) = _UploadImageStarted;
  // const factory ImageHandlerEvent.downloadImageStarted(
  //     ImageUrl imageUml) = _DownloadImageStarted;
  const factory ImageHandlerEvent.imageReceived(
      Either<None, ImageUrl> failureOrImageUrl) = _ImageReceived;
  // const factory ImageHandlerEvent.imageDownloaded(
  //     Either<None, Image> failureOrImage) = _ImageDownloaded;
  const factory ImageHandlerEvent.imageDeleted(String imageUrl) = _ImageDeleted;
}
