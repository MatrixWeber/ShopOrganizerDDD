import 'package:firebase_ddd_tutorial/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_tutorial/domain/core/errors.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../injection.dart';

extension FirebaseStorageX on FirebaseStorage {
  Future<StorageReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseStorage().ref().child(user.id.getOrCrash());
  }
}
