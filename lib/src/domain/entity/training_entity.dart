// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class TrainingEntity {
  String? id;
  final String name;
  final int color;
  final List<ExerciseEntity>? exercises;
  final DateTime? day;

  TrainingEntity({
    required this.name,
    required this.color,
    this.id,
    this.day,
    this.exercises,
  }) {
    id ??= const Uuid().v1();
  }

  @override
  bool operator ==(covariant TrainingEntity other) {
    if (identical(this, other)) return true;

    return other.id == id &&
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
    String? id,
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'color': color,
      'exercises': exercises?.map((x) => x.toMap()).toList(),
      'day': day?.millisecondsSinceEpoch,
    };
  }

  factory TrainingEntity.fromMap(Map<String, dynamic> map) {
    return TrainingEntity(
      name: map['name'] as String,
      color: map['color'] as int,
      exercises: map['exercises'] != null
          ? List<ExerciseEntity>.from(
              (map['exercises'] as List).map<ExerciseEntity?>(
                (x) => ExerciseEntity.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      day: map['day'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['day'] as int)
          : null,
    );
  }

  factory TrainingEntity.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return TrainingEntity.fromMap(doc.data()).copyWith(id: doc.id);
  }

  String toJson() => json.encode(toMap());

  factory TrainingEntity.fromJson(String source) =>
      TrainingEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}

enum ExerciseType { all, chest, back, biceps, press, triceps }

class ExerciseEntity {
  final String id;
  final List<ExerciseType> exerciseType;
  final String name;
  final String imageUrl;
  final String? description;
  final List<ApproachEntity>? approaches;
  final Duration? restTime;

  ExerciseEntity({
    required this.exerciseType,
    required this.name,
    required this.imageUrl,
    this.id = '',
    this.approaches,
    this.restTime,
    this.description,
  });

  @override
  bool operator ==(covariant ExerciseEntity other) {
    if (identical(this, other)) return true;

    return other.id == id &&
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
    String? id,
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

  factory ExerciseEntity.fromFirestore(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return ExerciseEntity.fromMap(doc.data()).copyWith(id: doc.id);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'exerciseType': exerciseType.map((x) => x.name.toString()).toList(),
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'approaches': approaches?.map((x) => x.toMap()).toList(),
      'restTime': restTime?.inSeconds,
    };
  }

  factory ExerciseEntity.fromMap(Map<String, dynamic> map) {
    return ExerciseEntity(
      exerciseType: List<ExerciseType>.from(
        (map['exerciseType']).map<ExerciseType>((x) =>
            ExerciseType.values.firstWhere((element) => element.name == x)),
      ),
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      approaches: map['approaches'] != null
          ? List<ApproachEntity>.from(
              (map['approaches'] as List).map<ApproachEntity?>(
                (x) => ApproachEntity.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      restTime:
          map['restTime'] != null ? Duration(seconds: map['restTime']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExerciseEntity.fromJson(String source) =>
      ExerciseEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}

class ApproachEntity {
  final int id;
  int repeat;
  int weight;
  ApproachComplexity complexity;
  Duration approachTime;

  ApproachEntity({
    required this.repeat,
    required this.weight,
    required this.complexity,
    required this.approachTime,
    this.id = -1,
  });

  @override
  bool operator ==(covariant ApproachEntity other) {
    if (identical(this, other)) return true;

    return other.id == id &&
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'repeat': repeat,
      'weight': weight,
      'complexity': complexity.name.toString(),
      'approachTime': approachTime.inSeconds,
    };
  }

  factory ApproachEntity.fromMap(Map<String, dynamic> map) {
    return ApproachEntity(
      repeat: map['repeat'] as int,
      weight: map['weight'] as int,
      complexity: ApproachComplexity.values
          .firstWhere((element) => element.name == map['complexity']),
      approachTime: Duration(seconds: map['approachTime']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ApproachEntity.fromJson(String source) =>
      ApproachEntity.fromMap(json.decode(source) as Map<String, dynamic>);
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

    return other.id == id &&
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
