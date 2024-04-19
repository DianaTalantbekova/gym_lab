part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial(
      {String? name,
      int? color,
      @Default(false) isLoading,
      String? error}) = _Initial;
}
