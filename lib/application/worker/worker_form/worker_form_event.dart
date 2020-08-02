part of 'worker_form_bloc.dart';

@freezed
abstract class WorkerFormEvent with _$WorkerFormEvent {
  const factory WorkerFormEvent.initialized(
      Option<Worker> initialWorkerOption) = Initialized;
  const factory WorkerFormEvent.reset(String parentShopId) = Reset;
  const factory WorkerFormEvent.nameChanged(String name) = NameChanged;
  const factory WorkerFormEvent.firstNameChanged(String firstName) =
      FirstNameChanged;
  const factory WorkerFormEvent.emailChanged(String email) = EmailChanged;
  const factory WorkerFormEvent.phoneNumberChanged(String phone) =
      PhoneNumberChanged;
  const factory WorkerFormEvent.imageUrlChanged(String imageUrl) =
      ImageUrlChanged;
  const factory WorkerFormEvent.parentIdChanged(UniqueId parentId) =
      ParentIdChanged;
  const factory WorkerFormEvent.saved() = Saved;
}
