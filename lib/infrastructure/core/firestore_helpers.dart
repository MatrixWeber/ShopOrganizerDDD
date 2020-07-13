import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ddd_tutorial/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_tutorial/domain/core/errors.dart';

import '../../injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }
}

extension DocumentReferenceNote on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}

extension DocumentReferenceTask on DocumentReference {
  CollectionReference get taskCollection => collection('tasks');
}

extension DocumentReferenceShop on DocumentReference {
  CollectionReference get shopCollection => collection('shops');
}

extension DocumentReferenceUser on DocumentReference {
  CollectionReference get userCollection => collection('user');
}
