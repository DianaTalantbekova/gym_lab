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
}

enum ExerciseType { all, chest, back, biceps, press, triceps }

class ExerciseEntity {
  final int id;
  final List<ExerciseType> exerciseType;
  final String name;
  final String imageUrl;
  final String? description;
  final List<TryEntity>? trys;
  final Duration? restTime;

  ExerciseEntity({
    required this.id,
    required this.exerciseType,
    required this.name,
    required this.imageUrl,
     this.trys,
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
          listEquals(other.trys, trys) &&
          other.restTime == restTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    exerciseType.hashCode ^
    name.hashCode ^
    imageUrl.hashCode ^
    description.hashCode ^
    trys.hashCode ^
    restTime.hashCode;
  }
}

class TryEntity {
  final int id;
  int repeat;
  int weight;
  ExerciseComplexity complexity;
  Duration tryTime;

  TryEntity({
    required this.id,
    required this.repeat,
    required this.weight,
    required this.complexity,
    required this.tryTime,
  });

  @override
  bool operator ==(covariant TryEntity other) {
    if (identical(this, other)) return true;

    return
      other.id == id &&
          other.repeat == repeat &&
          other.weight == weight &&
          other.complexity == complexity &&
          other.tryTime == tryTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    repeat.hashCode ^
    weight.hashCode ^
    complexity.hashCode ^
    tryTime.hashCode;
  }
}

enum ExerciseComplexity { easy, medium, hard }

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