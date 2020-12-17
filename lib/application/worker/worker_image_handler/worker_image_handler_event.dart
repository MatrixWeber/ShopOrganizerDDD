part of 'worker_image_handler_bloc.dart';

@freezed
abstract class WorkerImageHandlerEvent with _$WorkerImageHandlerEvent {
  const factory WorkerImageHandlerEvent.uploadImageStarted(
      File image, UniqueId parentId,
      [UniqueId id]) = _UploadImageStarted;
  // const factory WorkerImageHandlerEvent.downloadImageStarted(
  //     ImageUrl imageUml) = _DownloadImageStarted;
  const factory WorkerImageHandlerEvent.imageReceived(
      Either<None, ImageUrl> failureOrImageUrl) = _ImageReceived;
  // const factory WorkerImageHandlerEvent.imageDownloaded(
  //     Either<None, Image> failureOrImage) = _ImageDownloaded;
  const factory WorkerImageHandlerEvent.imageDeleted(String imageUrl) =
      _ImageDeleted;
}
