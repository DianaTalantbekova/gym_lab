import 'package:dartz/dartz.dart';
import 'package:gym_labb/src/data/failure/training_failure.dart';
import 'package:gym_labb/src/data/sources/trainings_firebase_data_source.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';
import 'package:gym_labb/src/domain/repository/trainings_repo.dart';

class TrainingsRepositoryImpl implements TrainingsRepository {
  TrainingsRepositoryImpl(this._trainingsRemoteDataSource);

  final TrainingsRemoteDataSource _trainingsRemoteDataSource;

  @override
  Stream<Either<TrainingFailure, List<TrainingEntity>>>
      watchTrainings() async* {
    yield* _trainingsRemoteDataSource.watchTrainings();
  }

  @override
  Future<Either<TrainingFailure, Unit>> addTraining(
      TrainingEntity training) async {
    return await _trainingsRemoteDataSource.addTraining(training);
  }

  @override
  Future<Either<TrainingFailure, Unit>> updateTraining(
      TrainingEntity training) async {
    return await _trainingsRemoteDataSource.updateTraining(training);
  }
}
