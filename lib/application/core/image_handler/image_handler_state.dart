part of 'image_handler_bloc.dart';

@freezed
abstract class ImageHandlerState with _$ImageHandlerState {
  const factory ImageHandlerState.initial() = _Initial;
  const factory ImageHandlerState.loadInProgress(num percent) = _LoadInProgress;
  const factory ImageHandlerState.uploadedSuccessful(ImageUrl imageUrl) =
      _UploadedSuccessful;
  const factory ImageHandlerState.deletedSuccessful() = _DeletedSuccessful;
  // const factory ImageHandlerState.downloadedSuccessful(Image image) =
  //     _DownloadedSuccessful;
  const factory ImageHandlerState.loadSuccess(File image) = _LoadSuccess;
  const factory ImageHandlerState.loadFailure(ImageFailure workerFailure) =
      _LoadFailure;
}
