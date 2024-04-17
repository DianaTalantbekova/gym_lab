part of 'add_exercise_bloc.dart';

@freezed
class AddExerciseState with _$AddExerciseState {
  const factory AddExerciseState.initial({
    required Map<String, List<ExerciseEntity>> exercisesWithLetters,
    @Default(true) isLoading,
    String? error,
    @Default(false) addLoading,
    @Default([])List<ExerciseEntity> selectedExercises,
    String? addError,
  }) = _Initial;
}
