part of 'training_bloc.dart';

@freezed
class TrainingState with _$TrainingState {
  const factory TrainingState.initial({
    @Default(true) isLoading,
    required List<TrainingEntity> trainings,
    String? error,
    @Default(true) bool exercisesLoading,
  }) = _Initial;
}
