import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';
import 'package:gym_labb/src/domain/repository/trainings_repo.dart';

part 'workout_event.dart';

part 'workout_state.dart';

part 'workout_bloc.freezed.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutBloc(this._trainingsRepository) : super(const WorkoutState.initial()) {
    on<Create>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await _trainingsRepository
          .addTraining(TrainingEntity(name: event.name, color: event.color));
      emit(state.copyWith(
        name: event.name,
        color: event.color,
        isLoading: false,
      ));
      //emit(state.copyWith(error: 'error'));
    });
  }

  final TrainingsRepository _trainingsRepository;
}
