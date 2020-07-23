part of 'image_picker_bloc.dart';

@freezed
abstract class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.initial() = _Initial;
  const factory ImagePickerState.loadInProgress() = _LoadInProgress;
  const factory ImagePickerState.loadSuccess(File image) = _LoadSuccess;
  const factory ImagePickerState.loadFailure(ValueFailure valueFailure) =
      _LoadFailure;
}
