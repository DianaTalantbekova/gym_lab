import 'package:dartz/dartz.dart';
import 'package:gym_labb/src/data/failure/training_failure.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';

abstract class TrainingsRepository {
  Stream<Either<TrainingFailure, List<TrainingEntity>>> watchTrainings();
  Future<Either<TrainingFailure, Unit>> addTraining(TrainingEntity training);
  Future<Either<TrainingFailure, Unit>> updateTraining(TrainingEntity training);
}
