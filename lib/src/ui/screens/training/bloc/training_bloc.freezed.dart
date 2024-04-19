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
    required TResult Function(TrainingEntity newTraining) addNewTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function(TrainingEntity newTraining)? addNewTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function(TrainingEntity newTraining)? addNewTraining,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddNewTraining value) addNewTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddNewTraining value)? addNewTraining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddNewTraining value)? addNewTraining,
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
    required TResult Function(TrainingEntity newTraining) addNewTraining,
  }) {
    return started(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function(TrainingEntity newTraining)? addNewTraining,
  }) {
    return started?.call(isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function(TrainingEntity newTraining)? addNewTraining,
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
    required TResult Function(AddNewTraining value) addNewTraining,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddNewTraining value)? addNewTraining,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddNewTraining value)? addNewTraining,
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
abstract class _$$AddNewTrainingImplCopyWith<$Res> {
  factory _$$AddNewTrainingImplCopyWith(_$AddNewTrainingImpl value,
          $Res Function(_$AddNewTrainingImpl) then) =
      __$$AddNewTrainingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrainingEntity newTraining});
}

/// @nodoc
class __$$AddNewTrainingImplCopyWithImpl<$Res>
    extends _$TrainingEventCopyWithImpl<$Res, _$AddNewTrainingImpl>
    implements _$$AddNewTrainingImplCopyWith<$Res> {
  __$$AddNewTrainingImplCopyWithImpl(
      _$AddNewTrainingImpl _value, $Res Function(_$AddNewTrainingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTraining = null,
  }) {
    return _then(_$AddNewTrainingImpl(
      newTraining: null == newTraining
          ? _value.newTraining
          : newTraining // ignore: cast_nullable_to_non_nullable
              as TrainingEntity,
    ));
  }
}

/// @nodoc

class _$AddNewTrainingImpl implements AddNewTraining {
  const _$AddNewTrainingImpl({required this.newTraining});

  @override
  final TrainingEntity newTraining;

  @override
  String toString() {
    return 'TrainingEvent.addNewTraining(newTraining: $newTraining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewTrainingImpl &&
            (identical(other.newTraining, newTraining) ||
                other.newTraining == newTraining));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTraining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewTrainingImplCopyWith<_$AddNewTrainingImpl> get copyWith =>
      __$$AddNewTrainingImplCopyWithImpl<_$AddNewTrainingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic isRefresh) started,
    required TResult Function(TrainingEntity newTraining) addNewTraining,
  }) {
    return addNewTraining(newTraining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic isRefresh)? started,
    TResult? Function(TrainingEntity newTraining)? addNewTraining,
  }) {
    return addNewTraining?.call(newTraining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic isRefresh)? started,
    TResult Function(TrainingEntity newTraining)? addNewTraining,
    required TResult orElse(),
  }) {
    if (addNewTraining != null) {
      return addNewTraining(newTraining);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddNewTraining value) addNewTraining,
  }) {
    return addNewTraining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(AddNewTraining value)? addNewTraining,
  }) {
    return addNewTraining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddNewTraining value)? addNewTraining,
    required TResult orElse(),
  }) {
    if (addNewTraining != null) {
      return addNewTraining(this);
    }
    return orElse();
  }
}

abstract class AddNewTraining implements TrainingEvent {
  const factory AddNewTraining({required final TrainingEntity newTraining}) =
      _$AddNewTrainingImpl;

  TrainingEntity get newTraining;
  @JsonKey(ignore: true)
  _$$AddNewTrainingImplCopyWith<_$AddNewTrainingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrainingState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<TrainingEntity> get trainings => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic isLoading, List<TrainingEntity> trainings, String? error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic isLoading, List<TrainingEntity> trainings, String? error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic isLoading, List<TrainingEntity> trainings, String? error)?
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
  $Res call({dynamic isLoading, List<TrainingEntity> trainings, String? error});
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
  $Res call({dynamic isLoading, List<TrainingEntity> trainings, String? error});
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
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = true,
      required final List<TrainingEntity> trainings,
      this.error})
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
  String toString() {
    return 'TrainingState.initial(isLoading: $isLoading, trainings: $trainings, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._trainings, _trainings) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_trainings),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic isLoading, List<TrainingEntity> trainings, String? error)
        initial,
  }) {
    return initial(isLoading, trainings, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic isLoading, List<TrainingEntity> trainings, String? error)?
        initial,
  }) {
    return initial?.call(isLoading, trainings, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic isLoading, List<TrainingEntity> trainings, String? error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, trainings, error);
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
      final String? error}) = _$InitialImpl;

  @override
  dynamic get isLoading;
  @override
  List<TrainingEntity> get trainings;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
