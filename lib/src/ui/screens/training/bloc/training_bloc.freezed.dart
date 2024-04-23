// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function() trainingDetailsOpened,
    required TResult Function(int trainingId, int exerciseId, int approachId,
            int? reps, int? weight, ApproachComplexity? exerciseComplexity)
        approachDetailsChanged,
    required TResult Function(int trainingId, int exerciseId, int approachId)
        approachDeleted,
    required TResult Function(int trainingId, int exerciseId) approachAdded,
    required TResult Function(dynamic isRefresh) watchTrainingsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function()? trainingDetailsOpened,
    TResult? Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult? Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult? Function(int trainingId, int exerciseId)? approachAdded,
    TResult? Function(dynamic isRefresh)? watchTrainingsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function()? trainingDetailsOpened,
    TResult Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult Function(int trainingId, int exerciseId)? approachAdded,
    TResult Function(dynamic isRefresh)? watchTrainingsStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TrainingDetailsOpened value)
        trainingDetailsOpened,
    required TResult Function(ApproachDetailsChanged value)
        approachDetailsChanged,
    required TResult Function(ApproachDeleted value) approachDeleted,
    required TResult Function(ApproachAdded value) approachAdded,
    required TResult Function(WatchTrainingsStarted value)
        watchTrainingsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult? Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult? Function(ApproachDeleted value)? approachDeleted,
    TResult? Function(ApproachAdded value)? approachAdded,
    TResult? Function(WatchTrainingsStarted value)? watchTrainingsStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult Function(ApproachDeleted value)? approachDeleted,
    TResult Function(ApproachAdded value)? approachAdded,
    TResult Function(WatchTrainingsStarted value)? watchTrainingsStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingEventCopyWith<$Res> {
  factory $TrainingEventCopyWith(
          TrainingEvent value, $Res Function(TrainingEvent) then) =
      _$TrainingEventCopyWithImpl<$Res, TrainingEvent>;
}

/// @nodoc
class _$TrainingEventCopyWithImpl<$Res, $Val extends TrainingEvent>
    implements $TrainingEventCopyWith<$Res> {
  _$TrainingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic isRefresh});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_$StartedImpl(
      isRefresh: freezed == isRefresh ? _value.isRefresh! : isRefresh,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl({this.isRefresh = false});

  @override
  @JsonKey()
  final dynamic isRefresh;

  @override
  String toString() {
    return 'TrainingEvent.started(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            const DeepCollectionEquality().equals(other.isRefresh, isRefresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isRefresh));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function() trainingDetailsOpened,
    required TResult Function(int trainingId, int exerciseId, int approachId,
            int? reps, int? weight, ApproachComplexity? exerciseComplexity)
        approachDetailsChanged,
    required TResult Function(int trainingId, int exerciseId, int approachId)
        approachDeleted,
    required TResult Function(int trainingId, int exerciseId) approachAdded,
    required TResult Function(dynamic isRefresh) watchTrainingsStarted,
  }) {
    return started(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function()? trainingDetailsOpened,
    TResult? Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult? Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult? Function(int trainingId, int exerciseId)? approachAdded,
    TResult? Function(dynamic isRefresh)? watchTrainingsStarted,
  }) {
    return started?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function()? trainingDetailsOpened,
    TResult Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult Function(int trainingId, int exerciseId)? approachAdded,
    TResult Function(dynamic isRefresh)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TrainingDetailsOpened value)
        trainingDetailsOpened,
    required TResult Function(ApproachDetailsChanged value)
        approachDetailsChanged,
    required TResult Function(ApproachDeleted value) approachDeleted,
    required TResult Function(ApproachAdded value) approachAdded,
    required TResult Function(WatchTrainingsStarted value)
        watchTrainingsStarted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult? Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult? Function(ApproachDeleted value)? approachDeleted,
    TResult? Function(ApproachAdded value)? approachAdded,
    TResult? Function(WatchTrainingsStarted value)? watchTrainingsStarted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult Function(ApproachDeleted value)? approachDeleted,
    TResult Function(ApproachAdded value)? approachAdded,
    TResult Function(WatchTrainingsStarted value)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements TrainingEvent {
  const factory Started({final dynamic isRefresh}) = _$StartedImpl;

  dynamic get isRefresh;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrainingDetailsOpenedImplCopyWith<$Res> {
  factory _$$TrainingDetailsOpenedImplCopyWith(
          _$TrainingDetailsOpenedImpl value,
          $Res Function(_$TrainingDetailsOpenedImpl) then) =
      __$$TrainingDetailsOpenedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrainingDetailsOpenedImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$TrainingDetailsOpenedImpl>
    implements _$$TrainingDetailsOpenedImplCopyWith<$Res> {
  __$$TrainingDetailsOpenedImplCopyWithImpl(_$TrainingDetailsOpenedImpl _value,
      $Res Function(_$TrainingDetailsOpenedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrainingDetailsOpenedImpl implements TrainingDetailsOpened {
  const _$TrainingDetailsOpenedImpl();

  @override
  String toString() {
    return 'TrainingEvent.trainingDetailsOpened()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingDetailsOpenedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function() trainingDetailsOpened,
    required TResult Function(int trainingId, int exerciseId, int approachId,
            int? reps, int? weight, ApproachComplexity? exerciseComplexity)
        approachDetailsChanged,
    required TResult Function(int trainingId, int exerciseId, int approachId)
        approachDeleted,
    required TResult Function(int trainingId, int exerciseId) approachAdded,
    required TResult Function(dynamic isRefresh) watchTrainingsStarted,
  }) {
    return trainingDetailsOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function()? trainingDetailsOpened,
    TResult? Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult? Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult? Function(int trainingId, int exerciseId)? approachAdded,
    TResult? Function(dynamic isRefresh)? watchTrainingsStarted,
  }) {
    return trainingDetailsOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function()? trainingDetailsOpened,
    TResult Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult Function(int trainingId, int exerciseId)? approachAdded,
    TResult Function(dynamic isRefresh)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (trainingDetailsOpened != null) {
      return trainingDetailsOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TrainingDetailsOpened value)
        trainingDetailsOpened,
    required TResult Function(ApproachDetailsChanged value)
        approachDetailsChanged,
    required TResult Function(ApproachDeleted value) approachDeleted,
    required TResult Function(ApproachAdded value) approachAdded,
    required TResult Function(WatchTrainingsStarted value)
        watchTrainingsStarted,
  }) {
    return trainingDetailsOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult? Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult? Function(ApproachDeleted value)? approachDeleted,
    TResult? Function(ApproachAdded value)? approachAdded,
    TResult? Function(WatchTrainingsStarted value)? watchTrainingsStarted,
  }) {
    return trainingDetailsOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult Function(ApproachDeleted value)? approachDeleted,
    TResult Function(ApproachAdded value)? approachAdded,
    TResult Function(WatchTrainingsStarted value)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (trainingDetailsOpened != null) {
      return trainingDetailsOpened(this);
    }
    return orElse();
  }
}

abstract class TrainingDetailsOpened implements TrainingEvent {
  const factory TrainingDetailsOpened() = _$TrainingDetailsOpenedImpl;
}

/// @nodoc
abstract class _$$ApproachDetailsChangedImplCopyWith<$Res> {
  factory _$$ApproachDetailsChangedImplCopyWith(
          _$ApproachDetailsChangedImpl value,
          $Res Function(_$ApproachDetailsChangedImpl) then) =
      __$$ApproachDetailsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int trainingId,
      int exerciseId,
      int approachId,
      int? reps,
      int? weight,
      ApproachComplexity? exerciseComplexity});
}

/// @nodoc
class __$$ApproachDetailsChangedImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$ApproachDetailsChangedImpl>
    implements _$$ApproachDetailsChangedImplCopyWith<$Res> {
  __$$ApproachDetailsChangedImplCopyWithImpl(
      _$ApproachDetailsChangedImpl _value,
      $Res Function(_$ApproachDetailsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingId = null,
    Object? exerciseId = null,
    Object? approachId = null,
    Object? reps = freezed,
    Object? weight = freezed,
    Object? exerciseComplexity = freezed,
  }) {
    return _then(_$ApproachDetailsChangedImpl(
      trainingId: null == trainingId
          ? _value.trainingId
          : trainingId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      approachId: null == approachId
          ? _value.approachId
          : approachId // ignore: cast_nullable_to_non_nullable
              as int,
      reps: freezed == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      exerciseComplexity: freezed == exerciseComplexity
          ? _value.exerciseComplexity
          : exerciseComplexity // ignore: cast_nullable_to_non_nullable
              as ApproachComplexity?,
    ));
  }
}

/// @nodoc

class _$ApproachDetailsChangedImpl implements ApproachDetailsChanged {
  const _$ApproachDetailsChangedImpl(
      {required this.trainingId,
      required this.exerciseId,
      required this.approachId,
      this.reps,
      this.weight,
      this.exerciseComplexity});

  @override
  final int trainingId;
  @override
  final int exerciseId;
  @override
  final int approachId;
  @override
  final int? reps;
  @override
  final int? weight;
  @override
  final ApproachComplexity? exerciseComplexity;

  @override
  String toString() {
    return 'TrainingEvent.approachDetailsChanged(trainingId: $trainingId, exerciseId: $exerciseId, approachId: $approachId, reps: $reps, weight: $weight, exerciseComplexity: $exerciseComplexity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproachDetailsChangedImpl &&
            (identical(other.trainingId, trainingId) ||
                other.trainingId == trainingId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.approachId, approachId) ||
                other.approachId == approachId) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.exerciseComplexity, exerciseComplexity) ||
                other.exerciseComplexity == exerciseComplexity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainingId, exerciseId,
      approachId, reps, weight, exerciseComplexity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproachDetailsChangedImplCopyWith<_$ApproachDetailsChangedImpl>
      get copyWith => __$$ApproachDetailsChangedImplCopyWithImpl<
          _$ApproachDetailsChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function() trainingDetailsOpened,
    required TResult Function(int trainingId, int exerciseId, int approachId,
            int? reps, int? weight, ApproachComplexity? exerciseComplexity)
        approachDetailsChanged,
    required TResult Function(int trainingId, int exerciseId, int approachId)
        approachDeleted,
    required TResult Function(int trainingId, int exerciseId) approachAdded,
    required TResult Function(dynamic isRefresh) watchTrainingsStarted,
  }) {
    return approachDetailsChanged(
        trainingId, exerciseId, approachId, reps, weight, exerciseComplexity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function()? trainingDetailsOpened,
    TResult? Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult? Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult? Function(int trainingId, int exerciseId)? approachAdded,
    TResult? Function(dynamic isRefresh)? watchTrainingsStarted,
  }) {
    return approachDetailsChanged?.call(
        trainingId, exerciseId, approachId, reps, weight, exerciseComplexity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function()? trainingDetailsOpened,
    TResult Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult Function(int trainingId, int exerciseId)? approachAdded,
    TResult Function(dynamic isRefresh)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (approachDetailsChanged != null) {
      return approachDetailsChanged(
          trainingId, exerciseId, approachId, reps, weight, exerciseComplexity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TrainingDetailsOpened value)
        trainingDetailsOpened,
    required TResult Function(ApproachDetailsChanged value)
        approachDetailsChanged,
    required TResult Function(ApproachDeleted value) approachDeleted,
    required TResult Function(ApproachAdded value) approachAdded,
    required TResult Function(WatchTrainingsStarted value)
        watchTrainingsStarted,
  }) {
    return approachDetailsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult? Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult? Function(ApproachDeleted value)? approachDeleted,
    TResult? Function(ApproachAdded value)? approachAdded,
    TResult? Function(WatchTrainingsStarted value)? watchTrainingsStarted,
  }) {
    return approachDetailsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult Function(ApproachDeleted value)? approachDeleted,
    TResult Function(ApproachAdded value)? approachAdded,
    TResult Function(WatchTrainingsStarted value)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (approachDetailsChanged != null) {
      return approachDetailsChanged(this);
    }
    return orElse();
  }
}

abstract class ApproachDetailsChanged implements TrainingEvent {
  const factory ApproachDetailsChanged(
          {required final int trainingId,
          required final int exerciseId,
          required final int approachId,
          final int? reps,
          final int? weight,
          final ApproachComplexity? exerciseComplexity}) =
      _$ApproachDetailsChangedImpl;

  int get trainingId;
  int get exerciseId;
  int get approachId;
  int? get reps;
  int? get weight;
  ApproachComplexity? get exerciseComplexity;
  @JsonKey(ignore: true)
  _$$ApproachDetailsChangedImplCopyWith<_$ApproachDetailsChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproachDeletedImplCopyWith<$Res> {
  factory _$$ApproachDeletedImplCopyWith(_$ApproachDeletedImpl value,
          $Res Function(_$ApproachDeletedImpl) then) =
      __$$ApproachDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int trainingId, int exerciseId, int approachId});
}

/// @nodoc
class __$$ApproachDeletedImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$ApproachDeletedImpl>
    implements _$$ApproachDeletedImplCopyWith<$Res> {
  __$$ApproachDeletedImplCopyWithImpl(
      _$ApproachDeletedImpl _value, $Res Function(_$ApproachDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingId = null,
    Object? exerciseId = null,
    Object? approachId = null,
  }) {
    return _then(_$ApproachDeletedImpl(
      trainingId: null == trainingId
          ? _value.trainingId
          : trainingId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
      approachId: null == approachId
          ? _value.approachId
          : approachId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ApproachDeletedImpl implements ApproachDeleted {
  const _$ApproachDeletedImpl(
      {required this.trainingId,
      required this.exerciseId,
      required this.approachId});

  @override
  final int trainingId;
  @override
  final int exerciseId;
  @override
  final int approachId;

  @override
  String toString() {
    return 'TrainingEvent.approachDeleted(trainingId: $trainingId, exerciseId: $exerciseId, approachId: $approachId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproachDeletedImpl &&
            (identical(other.trainingId, trainingId) ||
                other.trainingId == trainingId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.approachId, approachId) ||
                other.approachId == approachId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, trainingId, exerciseId, approachId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproachDeletedImplCopyWith<_$ApproachDeletedImpl> get copyWith =>
      __$$ApproachDeletedImplCopyWithImpl<_$ApproachDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function() trainingDetailsOpened,
    required TResult Function(int trainingId, int exerciseId, int approachId,
            int? reps, int? weight, ApproachComplexity? exerciseComplexity)
        approachDetailsChanged,
    required TResult Function(int trainingId, int exerciseId, int approachId)
        approachDeleted,
    required TResult Function(int trainingId, int exerciseId) approachAdded,
    required TResult Function(dynamic isRefresh) watchTrainingsStarted,
  }) {
    return approachDeleted(trainingId, exerciseId, approachId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function()? trainingDetailsOpened,
    TResult? Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult? Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult? Function(int trainingId, int exerciseId)? approachAdded,
    TResult? Function(dynamic isRefresh)? watchTrainingsStarted,
  }) {
    return approachDeleted?.call(trainingId, exerciseId, approachId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function()? trainingDetailsOpened,
    TResult Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult Function(int trainingId, int exerciseId)? approachAdded,
    TResult Function(dynamic isRefresh)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (approachDeleted != null) {
      return approachDeleted(trainingId, exerciseId, approachId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TrainingDetailsOpened value)
        trainingDetailsOpened,
    required TResult Function(ApproachDetailsChanged value)
        approachDetailsChanged,
    required TResult Function(ApproachDeleted value) approachDeleted,
    required TResult Function(ApproachAdded value) approachAdded,
    required TResult Function(WatchTrainingsStarted value)
        watchTrainingsStarted,
  }) {
    return approachDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult? Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult? Function(ApproachDeleted value)? approachDeleted,
    TResult? Function(ApproachAdded value)? approachAdded,
    TResult? Function(WatchTrainingsStarted value)? watchTrainingsStarted,
  }) {
    return approachDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult Function(ApproachDeleted value)? approachDeleted,
    TResult Function(ApproachAdded value)? approachAdded,
    TResult Function(WatchTrainingsStarted value)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (approachDeleted != null) {
      return approachDeleted(this);
    }
    return orElse();
  }
}

abstract class ApproachDeleted implements TrainingEvent {
  const factory ApproachDeleted(
      {required final int trainingId,
      required final int exerciseId,
      required final int approachId}) = _$ApproachDeletedImpl;

  int get trainingId;
  int get exerciseId;
  int get approachId;
  @JsonKey(ignore: true)
  _$$ApproachDeletedImplCopyWith<_$ApproachDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproachAddedImplCopyWith<$Res> {
  factory _$$ApproachAddedImplCopyWith(
          _$ApproachAddedImpl value, $Res Function(_$ApproachAddedImpl) then) =
      __$$ApproachAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int trainingId, int exerciseId});
}

/// @nodoc
class __$$ApproachAddedImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$ApproachAddedImpl>
    implements _$$ApproachAddedImplCopyWith<$Res> {
  __$$ApproachAddedImplCopyWithImpl(
      _$ApproachAddedImpl _value, $Res Function(_$ApproachAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainingId = null,
    Object? exerciseId = null,
  }) {
    return _then(_$ApproachAddedImpl(
      trainingId: null == trainingId
          ? _value.trainingId
          : trainingId // ignore: cast_nullable_to_non_nullable
              as int,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ApproachAddedImpl implements ApproachAdded {
  const _$ApproachAddedImpl(
      {required this.trainingId, required this.exerciseId});

  @override
  final int trainingId;
  @override
  final int exerciseId;

  @override
  String toString() {
    return 'TrainingEvent.approachAdded(trainingId: $trainingId, exerciseId: $exerciseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproachAddedImpl &&
            (identical(other.trainingId, trainingId) ||
                other.trainingId == trainingId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trainingId, exerciseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproachAddedImplCopyWith<_$ApproachAddedImpl> get copyWith =>
      __$$ApproachAddedImplCopyWithImpl<_$ApproachAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function() trainingDetailsOpened,
    required TResult Function(int trainingId, int exerciseId, int approachId,
            int? reps, int? weight, ApproachComplexity? exerciseComplexity)
        approachDetailsChanged,
    required TResult Function(int trainingId, int exerciseId, int approachId)
        approachDeleted,
    required TResult Function(int trainingId, int exerciseId) approachAdded,
    required TResult Function(dynamic isRefresh) watchTrainingsStarted,
  }) {
    return approachAdded(trainingId, exerciseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function()? trainingDetailsOpened,
    TResult? Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult? Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult? Function(int trainingId, int exerciseId)? approachAdded,
    TResult? Function(dynamic isRefresh)? watchTrainingsStarted,
  }) {
    return approachAdded?.call(trainingId, exerciseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function()? trainingDetailsOpened,
    TResult Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult Function(int trainingId, int exerciseId)? approachAdded,
    TResult Function(dynamic isRefresh)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (approachAdded != null) {
      return approachAdded(trainingId, exerciseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TrainingDetailsOpened value)
        trainingDetailsOpened,
    required TResult Function(ApproachDetailsChanged value)
        approachDetailsChanged,
    required TResult Function(ApproachDeleted value) approachDeleted,
    required TResult Function(ApproachAdded value) approachAdded,
    required TResult Function(WatchTrainingsStarted value)
        watchTrainingsStarted,
  }) {
    return approachAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult? Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult? Function(ApproachDeleted value)? approachDeleted,
    TResult? Function(ApproachAdded value)? approachAdded,
    TResult? Function(WatchTrainingsStarted value)? watchTrainingsStarted,
  }) {
    return approachAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult Function(ApproachDeleted value)? approachDeleted,
    TResult Function(ApproachAdded value)? approachAdded,
    TResult Function(WatchTrainingsStarted value)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (approachAdded != null) {
      return approachAdded(this);
    }
    return orElse();
  }
}

abstract class ApproachAdded implements TrainingEvent {
  const factory ApproachAdded(
      {required final int trainingId,
      required final int exerciseId}) = _$ApproachAddedImpl;

  int get trainingId;
  int get exerciseId;
  @JsonKey(ignore: true)
  _$$ApproachAddedImplCopyWith<_$ApproachAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WatchTrainingsStartedImplCopyWith<$Res> {
  factory _$$WatchTrainingsStartedImplCopyWith(
          _$WatchTrainingsStartedImpl value,
          $Res Function(_$WatchTrainingsStartedImpl) then) =
      __$$WatchTrainingsStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic isRefresh});
}

/// @nodoc
class __$$WatchTrainingsStartedImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$WatchTrainingsStartedImpl>
    implements _$$WatchTrainingsStartedImplCopyWith<$Res> {
  __$$WatchTrainingsStartedImplCopyWithImpl(_$WatchTrainingsStartedImpl _value,
      $Res Function(_$WatchTrainingsStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRefresh = freezed,
  }) {
    return _then(_$WatchTrainingsStartedImpl(
      isRefresh: freezed == isRefresh ? _value.isRefresh! : isRefresh,
    ));
  }
}

/// @nodoc

class _$WatchTrainingsStartedImpl implements WatchTrainingsStarted {
  const _$WatchTrainingsStartedImpl({this.isRefresh = false});

  @override
  @JsonKey()
  final dynamic isRefresh;

  @override
  String toString() {
    return 'TrainingEvent.watchTrainingsStarted(isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchTrainingsStartedImpl &&
            const DeepCollectionEquality().equals(other.isRefresh, isRefresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isRefresh));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchTrainingsStartedImplCopyWith<_$WatchTrainingsStartedImpl>
      get copyWith => __$$WatchTrainingsStartedImplCopyWithImpl<
          _$WatchTrainingsStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function() trainingDetailsOpened,
    required TResult Function(int trainingId, int exerciseId, int approachId,
            int? reps, int? weight, ApproachComplexity? exerciseComplexity)
        approachDetailsChanged,
    required TResult Function(int trainingId, int exerciseId, int approachId)
        approachDeleted,
    required TResult Function(int trainingId, int exerciseId) approachAdded,
    required TResult Function(dynamic isRefresh) watchTrainingsStarted,
  }) {
    return watchTrainingsStarted(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function()? trainingDetailsOpened,
    TResult? Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult? Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult? Function(int trainingId, int exerciseId)? approachAdded,
    TResult? Function(dynamic isRefresh)? watchTrainingsStarted,
  }) {
    return watchTrainingsStarted?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function()? trainingDetailsOpened,
    TResult Function(int trainingId, int exerciseId, int approachId, int? reps,
            int? weight, ApproachComplexity? exerciseComplexity)?
        approachDetailsChanged,
    TResult Function(int trainingId, int exerciseId, int approachId)?
        approachDeleted,
    TResult Function(int trainingId, int exerciseId)? approachAdded,
    TResult Function(dynamic isRefresh)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (watchTrainingsStarted != null) {
      return watchTrainingsStarted(isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TrainingDetailsOpened value)
        trainingDetailsOpened,
    required TResult Function(ApproachDetailsChanged value)
        approachDetailsChanged,
    required TResult Function(ApproachDeleted value) approachDeleted,
    required TResult Function(ApproachAdded value) approachAdded,
    required TResult Function(WatchTrainingsStarted value)
        watchTrainingsStarted,
  }) {
    return watchTrainingsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult? Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult? Function(ApproachDeleted value)? approachDeleted,
    TResult? Function(ApproachAdded value)? approachAdded,
    TResult? Function(WatchTrainingsStarted value)? watchTrainingsStarted,
  }) {
    return watchTrainingsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TrainingDetailsOpened value)? trainingDetailsOpened,
    TResult Function(ApproachDetailsChanged value)? approachDetailsChanged,
    TResult Function(ApproachDeleted value)? approachDeleted,
    TResult Function(ApproachAdded value)? approachAdded,
    TResult Function(WatchTrainingsStarted value)? watchTrainingsStarted,
    required TResult orElse(),
  }) {
    if (watchTrainingsStarted != null) {
      return watchTrainingsStarted(this);
    }
    return orElse();
  }
}

abstract class WatchTrainingsStarted implements TrainingEvent {
  const factory WatchTrainingsStarted({final dynamic isRefresh}) =
      _$WatchTrainingsStartedImpl;

  dynamic get isRefresh;
  @JsonKey(ignore: true)
  _$$WatchTrainingsStartedImplCopyWith<_$WatchTrainingsStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainingState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<TrainingEntity> get trainings => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get exercisesLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isLoading, List<TrainingEntity> trainings,
            String? error, bool exercisesLoading)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isLoading, List<TrainingEntity> trainings,
            String? error, bool exercisesLoading)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isLoading, List<TrainingEntity> trainings,
            String? error, bool exercisesLoading)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingStateCopyWith<TrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingStateCopyWith<$Res> {
  factory $TrainingStateCopyWith(
          TrainingState value, $Res Function(TrainingState) then) =
      _$TrainingStateCopyWithImpl<$Res, TrainingState>;
  @useResult
  $Res call(
      {dynamic isLoading,
      List<TrainingEntity> trainings,
      String? error,
      bool exercisesLoading});
}

/// @nodoc
class _$TrainingStateCopyWithImpl<$Res, $Val extends TrainingState>
    implements $TrainingStateCopyWith<$Res> {
  _$TrainingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? trainings = null,
    Object? error = freezed,
    Object? exercisesLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trainings: null == trainings
          ? _value.trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<TrainingEntity>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      exercisesLoading: null == exercisesLoading
          ? _value.exercisesLoading
          : exercisesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TrainingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic isLoading,
      List<TrainingEntity> trainings,
      String? error,
      bool exercisesLoading});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TrainingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? trainings = null,
    Object? error = freezed,
    Object? exercisesLoading = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      trainings: null == trainings
          ? _value._trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<TrainingEntity>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      exercisesLoading: null == exercisesLoading
          ? _value.exercisesLoading
          : exercisesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = true,
      required final List<TrainingEntity> trainings,
      this.error,
      this.exercisesLoading = true})
      : _trainings = trainings;

  @override
  @JsonKey()
  final dynamic isLoading;
  final List<TrainingEntity> _trainings;
  @override
  List<TrainingEntity> get trainings {
    if (_trainings is EqualUnmodifiableListView) return _trainings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainings);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final bool exercisesLoading;

  @override
  String toString() {
    return 'TrainingState.initial(isLoading: $isLoading, trainings: $trainings, error: $error, exercisesLoading: $exercisesLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._trainings, _trainings) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.exercisesLoading, exercisesLoading) ||
                other.exercisesLoading == exercisesLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_trainings),
      error,
      exercisesLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isLoading, List<TrainingEntity> trainings,
            String? error, bool exercisesLoading)
        initial,
  }) {
    return initial(isLoading, trainings, error, exercisesLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isLoading, List<TrainingEntity> trainings,
            String? error, bool exercisesLoading)?
        initial,
  }) {
    return initial?.call(isLoading, trainings, error, exercisesLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isLoading, List<TrainingEntity> trainings,
            String? error, bool exercisesLoading)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, trainings, error, exercisesLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrainingState {
  const factory _Initial(
      {final dynamic isLoading,
      required final List<TrainingEntity> trainings,
      final String? error,
      final bool exercisesLoading}) = _$InitialImpl;

  @override
  dynamic get isLoading;
  @override
  List<TrainingEntity> get trainings;
  @override
  String? get error;
  @override
  bool get exercisesLoading;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
