import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:gym_labb/gen/assets.gen.dart';
import 'package:gym_labb/src/domain/repository/trainings_repo.dart';

import '../../../../domain/entity/training_entity.dart';

part 'training_bloc.freezed.dart';
part 'training_event.dart';
part 'training_state.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  TrainingBloc(this._trainingsRepository)
      : super(const TrainingState.initial(trainings: [])) {
    on<Started>((event, emit) async {
      emit(state.copyWith(isLoading: !event.isRefresh));
      await Future.delayed(const Duration(seconds: 1)); //firebase
      emit(state.copyWith(isLoading: false, trainings: [
        TrainingEntity(
          name: 'плечи',
          color: 4286743219,
          exercises: [
            for (int i = 0; i < 3; i++) ...[
              ExerciseEntity(
                name: 'ЖИМ ЛЕЖА',
                imageUrl: Assets.images.exercise1.path,
                approaches: [
                  ApproachEntity(
                    repeat: 12,
                    weight: 12,
                    complexity: ApproachComplexity.easy,
                    approachTime: const Duration(minutes: 1),
                    id: 3,
                  ),
                  ApproachEntity(
                    repeat: 8,
                    weight: 24,
                    complexity: ApproachComplexity.hard,
                    approachTime: const Duration(minutes: 1),
                    id: 4,
                  ),
                  ApproachEntity(
                    repeat: 6,
                    weight: 16,
                    complexity: ApproachComplexity.medium,
                    approachTime: const Duration(minutes: 1),
                    id: 2,
                  ),
                ],
                restTime: const Duration(minutes: 2),
                exerciseType: [],
              ),
            ],
          ],
        ),
        TrainingEntity(
          name: 'бицепс',
          color: 4289646315,
        ),
      ]));
    });
    on<ApproachDetailsChanged>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final List<TrainingEntity> trainings =
          List<TrainingEntity>.from(state.trainings);
      final TrainingEntity training = trainings[event.trainingId];
      final List<ExerciseEntity> exercises =
          List<ExerciseEntity>.from(training.exercises!);
      final ExerciseEntity exercise = exercises[event.exerciseId];
      final List<ApproachEntity> approaches =
          List<ApproachEntity>.from(exercise.approaches!);
      final ApproachEntity approach = approaches[event.approachId];

      approaches[event.approachId] = approach.copyWith(
        repeat: event.reps,
        weight: event.weight,
        complexity: event.exerciseComplexity,
      );

      exercises[event.exerciseId] = exercise.copyWith(approaches: approaches);
      trainings[event.trainingId] = training.copyWith(exercises: exercises);

      final result = await _trainingsRepository
          .updateTraining(trainings[event.trainingId]);

      result.fold(
        (f) => emit(state.copyWith(error: f.message, isLoading: false)),
        (r) => emit(state.copyWith(isLoading: false)),
      );
    });
    on<TrainingDetailsOpened>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1)); //firebase
      emit(state.copyWith(exercisesLoading: false));
    });
    on<ApproachDeleted>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final List<TrainingEntity> trainings =
          List<TrainingEntity>.from(state.trainings);
      final TrainingEntity training = trainings[event.trainingId];
      final List<ExerciseEntity> exercises =
          List<ExerciseEntity>.from(training.exercises!);
      final ExerciseEntity exercise = exercises[event.exerciseId];
      final List<ApproachEntity> approaches =
          List<ApproachEntity>.from(exercise.approaches!);

      approaches.removeAt(event.approachId);

      exercises[event.exerciseId] = exercise.copyWith(approaches: approaches);
      trainings[event.trainingId] = training.copyWith(exercises: exercises);

      final result = await _trainingsRepository
          .updateTraining(trainings[event.trainingId]);

      result.fold(
        (f) => emit(state.copyWith(error: f.message, isLoading: false)),
        (r) => emit(state.copyWith(isLoading: false)),
      );
    });
    on<ApproachAdded>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final List<TrainingEntity> trainings =
          List<TrainingEntity>.from(state.trainings);
      final TrainingEntity training = trainings[event.trainingId];
      final List<ExerciseEntity> exercises =
          List<ExerciseEntity>.from(training.exercises!);
      final ExerciseEntity exercise = exercises[event.exerciseId];
      final List<ApproachEntity> approaches =
          List<ApproachEntity>.from(exercise.approaches ?? []);

      approaches.add(ApproachEntity(
          id: approaches.length,
          repeat: 1,
          weight: 1,
          complexity: ApproachComplexity.easy,
          approachTime: const Duration(minutes: 1)));

      exercises[event.exerciseId] = exercise.copyWith(approaches: approaches);
      trainings[event.trainingId] = training.copyWith(exercises: exercises);

      final result = await _trainingsRepository
          .updateTraining(trainings[event.trainingId]);

      result.fold(
        (f) => emit(state.copyWith(error: f.message, isLoading: false)),
        (r) => emit(state.copyWith(isLoading: false)),
      );
    });
    on<WatchTrainingsStarted>(
      (event, emit) {
        emit(state.copyWith(isLoading: true));
        _trainingsStreamSubscription?.cancel();

        emit.forEach(_trainingsRepository.watchTrainings(),
            onData: (trainings) {
          return trainings.fold(
              (f) => state.copyWith(error: f.message, isLoading: false),
              (r) => state.copyWith(trainings: r, isLoading: false));
        });
      },
    );
  }

  @override
  Future<void> close() async {
    await _trainingsStreamSubscription?.cancel();
    return super.close();
  }

  final TrainingsRepository _trainingsRepository;
  StreamSubscription<List<TrainingEntity>>? _trainingsStreamSubscription;
}
