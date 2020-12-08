import 'package:freezed_annotation/freezed_annotation.dart';

part 'worker_failure.freezed.dart';

@freezed
abstract class WorkerFailure with _$WorkerFailure {
  const factory WorkerFailure.unexpected(String funcionName) = _Unexpected;
  const factory WorkerFailure.unableToUpdate() = _UnableToUpdate;
  const factory WorkerFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
