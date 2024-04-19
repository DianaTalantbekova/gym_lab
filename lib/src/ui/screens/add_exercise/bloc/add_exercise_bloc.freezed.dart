// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddExerciseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ExerciseEntity exerciseEntity) select,
    required TResult Function() add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ExerciseEntity exerciseEntity)? select,
    TResult? Function()? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ExerciseEntity exerciseEntity)? select,
    TResult Function()? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) select,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? select,
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? select,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExerciseEventCopyWith<$Res> {
  factory $AddExerciseEventCopyWith(
          AddExerciseEvent value, $Res Function(AddExerciseEvent) then) =
      _$AddExerciseEventCopyWithImpl<$Res, AddExerciseEvent>;
}

/// @nodoc
class _$AddExerciseEventCopyWithImpl<$Res, $Val extends AddExerciseEvent>
    implements $AddExerciseEventCopyWith<$Res> {
  _$AddExerciseEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AddExerciseEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AddExerciseEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ExerciseEntity exerciseEntity) select,
    required TResult Function() add,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ExerciseEntity exerciseEntity)? select,
    TResult? Function()? add,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ExerciseEntity exerciseEntity)? select,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) select,
    required TResult Function(_Add value) add,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? select,
    TResult? Function(_Add value)? add,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? select,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddExerciseEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExerciseEntity exerciseEntity});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$AddExerciseEventCopyWithImpl<$Res, _$SelectedImpl>
    implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseEntity = null,
  }) {
    return _then(_$SelectedImpl(
      exerciseEntity: null == exerciseEntity
          ? _value.exerciseEntity
          : exerciseEntity // ignore: cast_nullable_to_non_nullable
              as ExerciseEntity,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements _Selected {
  const _$SelectedImpl({required this.exerciseEntity});

  @override
  final ExerciseEntity exerciseEntity;

  @override
  String toString() {
    return 'AddExerciseEvent.select(exerciseEntity: $exerciseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.exerciseEntity, exerciseEntity) ||
                other.exerciseEntity == exerciseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exerciseEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ExerciseEntity exerciseEntity) select,
    required TResult Function() add,
  }) {
    return select(exerciseEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ExerciseEntity exerciseEntity)? select,
    TResult? Function()? add,
  }) {
    return select?.call(exerciseEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ExerciseEntity exerciseEntity)? select,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(exerciseEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) select,
    required TResult Function(_Add value) add,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? select,
    TResult? Function(_Add value)? add,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? select,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Selected implements AddExerciseEvent {
  const factory _Selected({required final ExerciseEntity exerciseEntity}) =
      _$SelectedImpl;

  ExerciseEntity get exerciseEntity;
  @JsonKey(ignore: true)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$AddExerciseEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl();

  @override
  String toString() {
    return 'AddExerciseEvent.add()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ExerciseEntity exerciseEntity) select,
    required TResult Function() add,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ExerciseEntity exerciseEntity)? select,
    TResult? Function()? add,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ExerciseEntity exerciseEntity)? select,
    TResult Function()? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Selected value) select,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Selected value)? select,
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Selected value)? select,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AddExerciseEvent {
  const factory _Add() = _$AddImpl;
}

/// @nodoc
mixin _$AddExerciseState {
  Map<String, List<ExerciseEntity>> get exercisesWithLetters =>
      throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  dynamic get addLoading => throw _privateConstructorUsedError;
  List<ExerciseEntity> get selectedExercises =>
      throw _privateConstructorUsedError;
  String? get addError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, List<ExerciseEntity>> exercisesWithLetters,
            dynamic isLoading,
            String? error,
            dynamic addLoading,
            List<ExerciseEntity> selectedExercises,
            String? addError)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<String, List<ExerciseEntity>> exercisesWithLetters,
            dynamic isLoading,
            String? error,
            dynamic addLoading,
            List<ExerciseEntity> selectedExercises,
            String? addError)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<String, List<ExerciseEntity>> exercisesWithLetters,
            dynamic isLoading,
            String? error,
            dynamic addLoading,
            List<ExerciseEntity> selectedExercises,
            String? addError)?
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
  $AddExerciseStateCopyWith<AddExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExerciseStateCopyWith<$Res> {
  factory $AddExerciseStateCopyWith(
          AddExerciseState value, $Res Function(AddExerciseState) then) =
      _$AddExerciseStateCopyWithImpl<$Res, AddExerciseState>;
  @useResult
  $Res call(
      {Map<String, List<ExerciseEntity>> exercisesWithLetters,
      dynamic isLoading,
      String? error,
      dynamic addLoading,
      List<ExerciseEntity> selectedExercises,
      String? addError});
}

/// @nodoc
class _$AddExerciseStateCopyWithImpl<$Res, $Val extends AddExerciseState>
    implements $AddExerciseStateCopyWith<$Res> {
  _$AddExerciseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercisesWithLetters = null,
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? addLoading = freezed,
    Object? selectedExercises = null,
    Object? addError = freezed,
  }) {
    return _then(_value.copyWith(
      exercisesWithLetters: null == exercisesWithLetters
          ? _value.exercisesWithLetters
          : exercisesWithLetters // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ExerciseEntity>>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      addLoading: freezed == addLoading
          ? _value.addLoading
          : addLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selectedExercises: null == selectedExercises
          ? _value.selectedExercises
          : selectedExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseEntity>,
      addError: freezed == addError
          ? _value.addError
          : addError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AddExerciseStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<ExerciseEntity>> exercisesWithLetters,
      dynamic isLoading,
      String? error,
      dynamic addLoading,
      List<ExerciseEntity> selectedExercises,
      String? addError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddExerciseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercisesWithLetters = null,
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? addLoading = freezed,
    Object? selectedExercises = null,
    Object? addError = freezed,
  }) {
    return _then(_$InitialImpl(
      exercisesWithLetters: null == exercisesWithLetters
          ? _value._exercisesWithLetters
          : exercisesWithLetters // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ExerciseEntity>>,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      addLoading: freezed == addLoading ? _value.addLoading! : addLoading,
      selectedExercises: null == selectedExercises
          ? _value._selectedExercises
          : selectedExercises // ignore: cast_nullable_to_non_nullable
              as List<ExerciseEntity>,
      addError: freezed == addError
          ? _value.addError
          : addError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final Map<String, List<ExerciseEntity>> exercisesWithLetters,
      this.isLoading = true,
      this.error,
      this.addLoading = false,
      final List<ExerciseEntity> selectedExercises = const [],
      this.addError})
      : _exercisesWithLetters = exercisesWithLetters,
        _selectedExercises = selectedExercises;

  final Map<String, List<ExerciseEntity>> _exercisesWithLetters;
  @override
  Map<String, List<ExerciseEntity>> get exercisesWithLetters {
    if (_exercisesWithLetters is EqualUnmodifiableMapView)
      return _exercisesWithLetters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_exercisesWithLetters);
  }

  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final dynamic addLoading;
  final List<ExerciseEntity> _selectedExercises;
  @override
  @JsonKey()
  List<ExerciseEntity> get selectedExercises {
    if (_selectedExercises is EqualUnmodifiableListView)
      return _selectedExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedExercises);
  }

  @override
  final String? addError;

  @override
  String toString() {
    return 'AddExerciseState.initial(exercisesWithLetters: $exercisesWithLetters, isLoading: $isLoading, error: $error, addLoading: $addLoading, selectedExercises: $selectedExercises, addError: $addError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._exercisesWithLetters, _exercisesWithLetters) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other.addLoading, addLoading) &&
            const DeepCollectionEquality()
                .equals(other._selectedExercises, _selectedExercises) &&
            (identical(other.addError, addError) ||
                other.addError == addError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exercisesWithLetters),
      const DeepCollectionEquality().hash(isLoading),
      error,
      const DeepCollectionEquality().hash(addLoading),
      const DeepCollectionEquality().hash(_selectedExercises),
      addError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, List<ExerciseEntity>> exercisesWithLetters,
            dynamic isLoading,
            String? error,
            dynamic addLoading,
            List<ExerciseEntity> selectedExercises,
            String? addError)
        initial,
  }) {
    return initial(exercisesWithLetters, isLoading, error, addLoading,
        selectedExercises, addError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Map<String, List<ExerciseEntity>> exercisesWithLetters,
            dynamic isLoading,
            String? error,
            dynamic addLoading,
            List<ExerciseEntity> selectedExercises,
            String? addError)?
        initial,
  }) {
    return initial?.call(exercisesWithLetters, isLoading, error, addLoading,
        selectedExercises, addError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Map<String, List<ExerciseEntity>> exercisesWithLetters,
            dynamic isLoading,
            String? error,
            dynamic addLoading,
            List<ExerciseEntity> selectedExercises,
            String? addError)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(exercisesWithLetters, isLoading, error, addLoading,
          selectedExercises, addError);
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

abstract class _Initial implements AddExerciseState {
  const factory _Initial(
      {required final Map<String, List<ExerciseEntity>> exercisesWithLetters,
      final dynamic isLoading,
      final String? error,
      final dynamic addLoading,
      final List<ExerciseEntity> selectedExercises,
      final String? addError}) = _$InitialImpl;

  @override
  Map<String, List<ExerciseEntity>> get exercisesWithLetters;
  @override
  dynamic get isLoading;
  @override
  String? get error;
  @override
  dynamic get addLoading;
  @override
  List<ExerciseEntity> get selectedExercises;
  @override
  String? get addError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
