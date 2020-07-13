import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_tutorial/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_tutorial/infrastructure/notes/note_dtos.dart';
import 'package:firebase_ddd_tutorial/domain/notes/note_failure.dart';
import 'package:firebase_ddd_tutorial/domain/notes/note.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_ddd_tutorial/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final Firestore _firestore;

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
            snapshot.documents
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
          (snapshot) => snapshot.documents
              .map((doc) => NoteDto.fromFirestore(doc).toDomian()),
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
    if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
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

      await userDoc.noteCollection
          .document(noteDto.id)
          .setData(noteDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handleInsufficientPermissionAndUnexpectedPlatformException(e);
    }
  }

  Either<NoteFailure, Unit>
      _handleInsufficientPermissionAndUnexpectedPlatformException(
          PlatformException e) {
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

      await userDoc.noteCollection
          .document(noteDto.id)
          .updateData(noteDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.id.getOrCrash();

      await userDoc.noteCollection.document(noteId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      return _handlePlatformExceptions(e);
    }
  }

  Either<NoteFailure, Unit> _handlePlatformExceptions(PlatformException e) {
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
