part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.started() = Started;

  const factory WorkoutEvent.create({
    required String name,
    required int color,
  }) = Create;

  const factory WorkoutEvent.canceled() = Canceled;
}
