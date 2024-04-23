part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.started({@Default(false) isRefresh}) = Started;
  const factory TrainingEvent.trainingDetailsOpened() = TrainingDetailsOpened;

  const factory TrainingEvent.approachDetailsChanged({
    required int trainingId,
    required int exerciseId,
    required int approachId,
    int? reps,
    int? weight,
    ApproachComplexity? exerciseComplexity,
  }) = ApproachDetailsChanged;
  const factory TrainingEvent.approachDeleted({
    required int trainingId,
    required int exerciseId,
    required int approachId,
  }) = ApproachDeleted;
  const factory TrainingEvent.approachAdded({
    required int trainingId,
    required int exerciseId,
  }) = ApproachAdded;
  // const factory TrainingEvent.addExercises({required List<ExerciseEntity> newExericises}) = AddExercise;
  const factory TrainingEvent.watchTrainingsStarted(
      {@Default(false) isRefresh}) = WatchTrainingsStarted;
}
