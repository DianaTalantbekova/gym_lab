import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym_labb/src/domain/entity/training_entity.dart';
import '../../../../../gen/assets.gen.dart';

part 'add_exercise_event.dart';

part 'add_exercise_state.dart';

part 'add_exercise_bloc.freezed.dart';

class AddExerciseBloc extends Bloc<AddExerciseEvent, AddExerciseState> {
  AddExerciseBloc()
      : super(const AddExerciseState.initial(exercisesWithLetters: {})) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      //firebase
      await Future.delayed(const Duration(seconds: 1));
      final Map<String, List<ExerciseEntity>> letters = {};
      final items = [
        ExerciseEntity(
          exerciseType: [ExerciseType.biceps, ExerciseType.chest, ExerciseType.all],
          name: 'жим лежа',
          imageUrl: Assets.images.exercise1.path,
          approaches: [],
          restTime: null,
        ),
        ExerciseEntity(
          exerciseType: [ExerciseType.back, ExerciseType.all],
          name: 'приседания',
          imageUrl: Assets.images.exercise1.path,
        ),
        ExerciseEntity(
          exerciseType: [ExerciseType.triceps,ExerciseType.biceps, ExerciseType.all],
          name: 'подтягивания',
          imageUrl: Assets.images.exercise1.path,
        ),
        ExerciseEntity(
          exerciseType: [ExerciseType.back, ExerciseType.all],
          name: 'бег',
          imageUrl: Assets.images.exercise1.path,
        ),
        ExerciseEntity(
          exerciseType: [ExerciseType.chest, ExerciseType.press, ExerciseType.all],
          name: 'планка',
          imageUrl: Assets.images.exercise1.path,
        ),
      ];
      items.sort((a, b) => a.name.toString().compareTo(b.name.toString()));
      for (var i in items) {
        final keyy = i.name[0];
        if (letters[keyy] != null) {
          letters[keyy]?.add(i);
        } else {
          letters[keyy] = [i];
        }
      }
      print(letters.toString());
      emit(state.copyWith(exercisesWithLetters: letters, isLoading: false));
    });
    on<_Add>((event, emit) async {
      emit(state.copyWith(addLoading: true));
      //firebase adding
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(addLoading: false));
    });
  }

}
