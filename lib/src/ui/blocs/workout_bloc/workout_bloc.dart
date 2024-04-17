import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_event.dart';

part 'workout_state.dart';

part 'workout_bloc.freezed.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutBloc() : super(const WorkoutState.initial()) {
    on<Create>((event, emit) {
      emit(state.copyWith(isLoading: true));
      //запрос на firebase
      emit(state.copyWith(
        name: event.name,
        color: event.color,
        isLoading: false,
      ));
      //emit(state.copyWith(error: 'error'));
    });
  }
}
