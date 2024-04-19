import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:gym_labb/gen/assets.gen.dart';

import '../../../../domain/entity/training_entity.dart';

part 'training_bloc.freezed.dart';
part 'training_event.dart';
part 'training_state.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  TrainingBloc() : super(const TrainingState.initial(trainings: [])) {
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
                id: 1,
                exerciseType: [],
              ),
            ],
          ],
          id: 0,
        ),
        TrainingEntity(
          name: 'бицепс',
          color: 4289646315,
          id: 1,
        ),
      ]));
    });
    on<AddNewTraining>((event, emit) {
      emit(state.copyWith(trainings: [
        ...state.trainings,
        event.newTraining,
      ]));
    });
    on<ApproachDetailsChanged>((event, emit) {
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

      emit(state.copyWith(trainings: trainings));
    });
    on<TrainingDetailsOpened>((event, emit) async {
      await Future.delayed(const Duration(seconds: 1)); //firebase
      emit(state.copyWith(exercisesLoading: false));
    });
    on<ApproachDeleted>((event, emit) {
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

      emit(state.copyWith(trainings: trainings));
    });
    on<ApproachAdded>((event, emit) {
      final List<TrainingEntity> trainings =
          List<TrainingEntity>.from(state.trainings);
      final TrainingEntity training = trainings[event.trainingId];
      final List<ExerciseEntity> exercises =
          List<ExerciseEntity>.from(training.exercises!);
      final ExerciseEntity exercise = exercises[event.exerciseId];
      final List<ApproachEntity> approaches =
          List<ApproachEntity>.from(exercise.approaches!);

      approaches.add(ApproachEntity(
          id: approaches.length,
          repeat: 1,
          weight: 1,
          complexity: ApproachComplexity.easy,
          approachTime: const Duration(minutes: 1)));

      exercises[event.exerciseId] = exercise.copyWith(approaches: approaches);
      trainings[event.trainingId] = training.copyWith(exercises: exercises);

      emit(state.copyWith(trainings: trainings));
    });
  }
}
