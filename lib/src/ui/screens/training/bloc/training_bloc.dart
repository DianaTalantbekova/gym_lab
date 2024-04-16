import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entity/training_entity.dart';

part 'training_event.dart';

part 'training_state.dart';

part 'training_bloc.freezed.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  TrainingBloc() : super(const TrainingState.initial(trainings: [])) {
    on<Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(const Duration(seconds: 1)); //firebase
      emit(state.copyWith(trainings: [
        TrainingEntity(
          name: 'плечи',
          color: 4286743219,
        ),
        TrainingEntity(
          name: 'бицепс',
          color: 4289646315,
        ),
      ]));
    });
    on<AddNewTraining>((event, emit) {
      emit(state.copyWith(trainings: [
        ...state.trainings,
        event.newTraining,
      ]));
    });
  }
}
