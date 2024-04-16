import 'package:flutter/material.dart';

class TrainingEntity {
  final String name;
  final Color color;
  final List<ExerciseEntity>? exercises;
  final DateTime day;

  TrainingEntity({
    required this.name,
    required this.color,
    required this.day,
    this.exercises,
  });
}

class ExerciseEntity {
  final String name;
  final String imageUrl;
  final String? describtion;
  final List<TryEntity> trys;
  final Duration restTime;

  ExerciseEntity({
    required this.name,
    required this.imageUrl,
    required this.trys,
    required this.restTime,
    this.describtion,
  });
}

class TryEntity {
  int repeat;
  int weight;
  ExerciseComplexity complexity;
  Duration tryTime;

  TryEntity({
    required this.repeat,
    required this.weight,
    required this.complexity,
    required this.tryTime,
  });
}

enum ExerciseComplexity { easy, medium, hard }

/// User Entity
class UserEntity {
  final String name;
  final String surname;
  final String image;
  final String email;
  final DateTime birthday;
  final Gender gender;

  UserEntity({
    required this.name,
    required this.surname,
    required this.birthday,
    required this.image,
    required this.email,
    required this.gender,
  });
}

enum Gender { male, female }
