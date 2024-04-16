part of 'training_bloc.dart';

@freezed
class TrainingEvent with _$TrainingEvent {
  const factory TrainingEvent.started() = Started;

  const factory TrainingEvent.addNewTraining(
      {required TrainingEntity newTraining}) = AddNewTraining;
}
