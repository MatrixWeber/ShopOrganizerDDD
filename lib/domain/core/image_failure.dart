import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_failure.freezed.dart';

@freezed
abstract class ImageFailure with _$ImageFailure {
  const factory ImageFailure.unexpected(String funcionName) = _Unexpected;
  const factory ImageFailure.unableToUpdate() = _UnableToUpdate;
  const factory ImageFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
