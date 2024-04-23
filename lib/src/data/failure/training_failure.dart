import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_failure.freezed.dart';

@freezed
abstract class TrainingFailure with _$TrainingFailure {
  const factory TrainingFailure.insufficientPermission(
          {@Default('Insufficient Permission') String message}) =
      _InsufficientPermission;
  const factory TrainingFailure.unableToUpdate(
      {@Default('Unable to update') String message}) = _UnableToUpdate;
  const factory TrainingFailure.unexpected(
      {@Default('Unexpected error') String message}) = _Unexpected;
}
