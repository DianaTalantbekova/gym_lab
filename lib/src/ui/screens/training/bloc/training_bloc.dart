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
      emit(state.copyWith(isLoading: !event.isRefresh));
      await Future.delayed(const Duration(seconds: 1)); //firebase
      emit(state.copyWith(isLoading: false, trainings: [
        TrainingEntity(
          name: 'плечи',
          color: 4286743219, id: 0,
        ),
        TrainingEntity(
          name: 'бицепс',
          color: 4289646315, id: 1,
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
