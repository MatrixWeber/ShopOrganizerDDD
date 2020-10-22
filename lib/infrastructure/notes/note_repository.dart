import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_tutorial/infrastructure/notes/note_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/notes/note_failure.dart';
import 'package:firebase_ddd_tutorial/domain/notes/note.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _firestore;

  NoteRepository(this._firestore);

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    // ? user/{user ID}/notes/{note ID}
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NoteFailure, KtList<Note>>(
            snapshot.docs
                .map((doc) => NoteDto.fromFirestore(doc).toDomian())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      return _checkIfPlatformExceptionAndHandleInsufficientPermissionAndUnexpected(
          e);
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    // ? user/{user ID}/notes/{note ID}
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => NoteDto.fromFirestore(doc).toDomian()),
        )
        .map((notes) => right<NoteFailure, KtList<Note>>(
              notes
                  .where((note) =>
                      note.todos.getOrCrash().any((todoItem) => !todoItem.done))
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      return _checkIfPlatformExceptionAndHandleInsufficientPermissionAndUnexpected(
          e);
    });
  }

  Either<NoteFailure, KtList<Note>>
      _checkIfPlatformExceptionAndHandleInsufficientPermissionAndUnexpected(e) {
    if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
      return left(const NoteFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);

      await userDoc.noteCollection.doc(noteDto.id).set(noteDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<NoteFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          FirebaseException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const NoteFailure.insufficientPermissions());
    } else {
      // TODO log.error(e.toString);
      return left(const NoteFailure.unexpected());
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);

      await userDoc.noteCollection.doc(noteDto.id).update(noteDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.id.getOrCrash();

      await userDoc.noteCollection.doc(noteId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  Either<NoteFailure, Unit> _handlePlatformExceptions(FirebaseException e) {
    if (e.message.contains('PERMISSION_DENIED')) {
      return left(const NoteFailure.insufficientPermissions());
    } else if (e.message.contains('NOT_FOUND')) {
      // TODO log.error(e.toString);
      return left(const NoteFailure.unableToUpdate());
    } else {
      // TODO log.error(e.toString);
      return left(const NoteFailure.unexpected());
    }
  }
}
