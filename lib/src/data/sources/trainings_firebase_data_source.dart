import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:gym_labb/di.dart';
import 'package:gym_labb/src/data/failure/training_failure.dart';
import 'package:gym_labb/src/data/repository/auth_repo.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';
import 'package:rxdart/rxdart.dart';

abstract class TrainingsRemoteDataSource {
  Stream<Either<TrainingFailure, List<TrainingEntity>>> watchTrainings();
  Future<Either<TrainingFailure, Unit>> addTraining(TrainingEntity training);
  Future<Either<TrainingFailure, Unit>> updateTraining(TrainingEntity training);
}

class TrainingsFirebaseDataSource implements TrainingsRemoteDataSource {
  TrainingsFirebaseDataSource(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Stream<Either<TrainingFailure, List<TrainingEntity>>>
      watchTrainings() async* {
    final user = getIt<AuthenticationRepository>().currentUser;

    yield* _firestore
        .collection('users')
        .doc(user.id)
        .collection('trainings')
        .snapshots()
        .map(
          (snapshot) =>
              right<TrainingFailure, List<TrainingEntity>>(snapshot.docs
                  .map(
                    (doc) => TrainingEntity.fromFirestore((doc)),
                  )
                  .toList()),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const TrainingFailure.insufficientPermission());
      } else {
        return left(const TrainingFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<TrainingFailure, Unit>> addTraining(
      TrainingEntity training) async {
    try {
      final user = getIt<AuthenticationRepository>().currentUser;

      await _firestore
          .collection('users')
          .doc(user.id)
          .collection('trainings')
          .doc(training.id.toString())
          .set(training.toMap());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const TrainingFailure.insufficientPermission());
      } else {
        return left(const TrainingFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TrainingFailure, Unit>> updateTraining(
      TrainingEntity training) async {
    try {
      final user = getIt<AuthenticationRepository>().currentUser;

      await _firestore
          .collection('users')
          .doc(user.id)
          .collection('trainings')
          .doc(training.id.toString())
          .update(training.toMap());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const TrainingFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const TrainingFailure.unableToUpdate());
      } else {
        return left(const TrainingFailure.unexpected());
      }
    }
  }
}
