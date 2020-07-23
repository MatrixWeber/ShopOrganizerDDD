part of 'worker_image_handler_bloc.dart';

@freezed
abstract class WorkerImageHandlerState with _$WorkerImageHandlerState {
  const factory WorkerImageHandlerState.initial() = _Initial;
  const factory WorkerImageHandlerState.loadInProgress() = _LoadInProgress;
  const factory WorkerImageHandlerState.uploadedSuccessful(ImageUrl imageUrl) =
      _UploadedSuccessful;
  const factory WorkerImageHandlerState.deletedSuccessful() =
      _DeletedSuccessful;
  // const factory WorkerImageHandlerState.downloadedSuccessful(File image) =
  //     _LoadSuccess;
  const factory WorkerImageHandlerState.loadSuccess(File image) = _LoadSuccess;
  const factory WorkerImageHandlerState.loadFailure(
      WorkerFailure workerFailure) = _LoadFailure;
}
