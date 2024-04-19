part of 'add_exercise_bloc.dart';

@freezed
class AddExerciseEvent with _$AddExerciseEvent {
  const factory AddExerciseEvent.started() = _Started;

  const factory AddExerciseEvent.select({
    required ExerciseEntity exerciseEntity,
  }) = _Selected;

  const factory AddExerciseEvent.add() = _Add;
}
