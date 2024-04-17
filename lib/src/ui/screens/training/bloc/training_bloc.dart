import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_labb/gen/assets.gen.dart';

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
          color: 4286743219,
          exercises: [
            for (int i = 0; i < 3; i++) ...[
              ExerciseEntity(
                name: 'ЖИМ ЛЕЖА',
                imageUrl: Assets.images.exercise1.path,
                approaches: [
                  ApproachEntity(
                    repeat: 12,
                    weight: 12,
                    complexity: ExerciseComplexity.easy,
                    approachTime: const Duration(minutes: 1),
                  ),
                  ApproachEntity(
                    repeat: 8,
                    weight: 24,
                    complexity: ExerciseComplexity.hard,
                    approachTime: const Duration(minutes: 1),
                  ),
                  ApproachEntity(
                    repeat: 6,
                    weight: 16,
                    complexity: ExerciseComplexity.medium,
                    approachTime: const Duration(minutes: 1),
                  ),
                ],
                restTime: const Duration(minutes: 2),
              ),
            ],
          ],
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
