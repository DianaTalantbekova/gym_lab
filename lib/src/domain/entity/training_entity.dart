import 'package:flutter/material.dart';

class TrainingEntity {
  final String name;
  final int color;
  final List<ExerciseEntity>? exercises;
  final DateTime? day;

  TrainingEntity({
    required this.name,
    required this.color,
     this.day,
    this.exercises,
  });
}

class ExerciseEntity {
  final String name;
  final String imageUrl;
  final String? describtion;
  final List<ApproachEntity> approaches;
  final Duration restTime;

  ExerciseEntity({
    required this.name,
    required this.imageUrl,
    required this.approaches,
    required this.restTime,
    this.describtion,
  });
}

class ApproachEntity {
  int repeat;
  int weight;
  ExerciseComplexity complexity;
  Duration approachTime;

  ApproachEntity({
    required this.repeat,
    required this.weight,
    required this.complexity,
    required this.approachTime,
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
