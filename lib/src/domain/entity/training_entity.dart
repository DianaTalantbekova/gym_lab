// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

class TrainingEntity {
  final int id;
  final String name;
  final int color;
  final List<ExerciseEntity>? exercises;
  final DateTime? day;

  TrainingEntity({required this.id,
    required this.name,
    required this.color,
    this.day,
    this.exercises,
  });

  @override
  bool operator ==(covariant TrainingEntity other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          other.name == name &&
          other.color == color &&
          listEquals(other.exercises, exercises) &&
          other.day == day;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    name.hashCode ^
    color.hashCode ^
    exercises.hashCode ^
    day.hashCode;
  }

  TrainingEntity copyWith({
    int? id,
    String? name,
    int? color,
    List<ExerciseEntity>? exercises,
    DateTime? day,
  }) {
    return TrainingEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      exercises: exercises ?? this.exercises,
      day: day ?? this.day,
    );
  }
}

enum ExerciseType { all, chest, back, biceps, press, triceps }

class ExerciseEntity {
  final int id;
  final List<ExerciseType> exerciseType;
  final String name;
  final String imageUrl;
  final String? description;
  final List<ApproachEntity>? approaches;
  final Duration? restTime;

  ExerciseEntity({
    required this.id,
    required this.exerciseType,
    required this.name,
    required this.imageUrl,
     this.approaches,
     this.restTime,
    this.description,
  });

  @override
  bool operator ==(covariant ExerciseEntity other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          other.exerciseType == exerciseType &&
          other.name == name &&
          other.imageUrl == imageUrl &&
          other.description == description &&
          listEquals(other.approaches, approaches) &&
          other.restTime == restTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    exerciseType.hashCode ^
    name.hashCode ^
    imageUrl.hashCode ^
    description.hashCode ^
    approaches.hashCode ^
    restTime.hashCode;
  }

  ExerciseEntity copyWith({
    int? id,
    List<ExerciseType>? exerciseType,
    String? name,
    String? imageUrl,
    String? description,
    List<ApproachEntity>? approaches,
    Duration? restTime,
  }) {
    return ExerciseEntity(
      id: id ?? this.id,
      exerciseType: exerciseType ?? this.exerciseType,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
      approaches: approaches ?? this.approaches,
      restTime: restTime ?? this.restTime,
    );
  }
}
 
class ApproachEntity {
  final int id;
  int repeat;
  int weight;
  ApproachComplexity complexity;
  Duration approachTime;

  ApproachEntity({
  required this.id,
    required this.repeat,
    required this.weight,
    required this.complexity,
    required this.approachTime,
  });

  @override
  bool operator ==(covariant ApproachEntity other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          other.repeat == repeat &&
          other.weight == weight &&
          other.complexity == complexity &&
          other.approachTime == approachTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    repeat.hashCode ^
    weight.hashCode ^
    complexity.hashCode ^
    approachTime.hashCode;
  }

  ApproachEntity copyWith({
    int? id,
    int? repeat,
    int? weight,
    ApproachComplexity? complexity,
    Duration? approachTime,
  }) {
    return ApproachEntity(
      id: id ?? this.id,
      repeat: repeat ?? this.repeat,
      weight: weight ?? this.weight,
      complexity: complexity ?? this.complexity,
      approachTime: approachTime ?? this.approachTime,
    );
  }
}

enum ApproachComplexity { easy, medium, hard }

/// User Entity
class UserEntity {
  final int id;
  final String name;
  final String surname;
  final String image;
  final String email;
  final DateTime birthday;
  final Gender gender;

  UserEntity({
    required this.id,
    required this.name,
    required this.surname,
    required this.birthday,
    required this.image,
    required this.email,
    required this.gender,
  });

  @override
  bool operator ==(covariant UserEntity other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          other.name == name &&
          other.surname == surname &&
          other.image == image &&
          other.email == email &&
          other.birthday == birthday &&
          other.gender == gender;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    name.hashCode ^
    surname.hashCode ^
    image.hashCode ^
    email.hashCode ^
    birthday.hashCode ^
    gender.hashCode;
  }
}

enum Gender { male, female }