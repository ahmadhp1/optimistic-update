// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OptimisticOperation<T> {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  T get previousState => throw _privateConstructorUsedError;
  T get newState => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get retryCount => throw _privateConstructorUsedError;
  OperationStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of OptimisticOperation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptimisticOperationCopyWith<T, OptimisticOperation<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptimisticOperationCopyWith<T, $Res> {
  factory $OptimisticOperationCopyWith(OptimisticOperation<T> value,
          $Res Function(OptimisticOperation<T>) then) =
      _$OptimisticOperationCopyWithImpl<T, $Res, OptimisticOperation<T>>;
  @useResult
  $Res call(
      {String id,
      String type,
      T previousState,
      T newState,
      DateTime timestamp,
      int retryCount,
      OperationStatus status});
}

/// @nodoc
class _$OptimisticOperationCopyWithImpl<T, $Res,
        $Val extends OptimisticOperation<T>>
    implements $OptimisticOperationCopyWith<T, $Res> {
  _$OptimisticOperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptimisticOperation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? previousState = freezed,
    Object? newState = freezed,
    Object? timestamp = null,
    Object? retryCount = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      previousState: freezed == previousState
          ? _value.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as T,
      newState: freezed == newState
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as T,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptimisticOperationImplCopyWith<T, $Res>
    implements $OptimisticOperationCopyWith<T, $Res> {
  factory _$$OptimisticOperationImplCopyWith(_$OptimisticOperationImpl<T> value,
          $Res Function(_$OptimisticOperationImpl<T>) then) =
      __$$OptimisticOperationImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      T previousState,
      T newState,
      DateTime timestamp,
      int retryCount,
      OperationStatus status});
}

/// @nodoc
class __$$OptimisticOperationImplCopyWithImpl<T, $Res>
    extends _$OptimisticOperationCopyWithImpl<T, $Res,
        _$OptimisticOperationImpl<T>>
    implements _$$OptimisticOperationImplCopyWith<T, $Res> {
  __$$OptimisticOperationImplCopyWithImpl(_$OptimisticOperationImpl<T> _value,
      $Res Function(_$OptimisticOperationImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OptimisticOperation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? previousState = freezed,
    Object? newState = freezed,
    Object? timestamp = null,
    Object? retryCount = null,
    Object? status = null,
  }) {
    return _then(_$OptimisticOperationImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      previousState: freezed == previousState
          ? _value.previousState
          : previousState // ignore: cast_nullable_to_non_nullable
              as T,
      newState: freezed == newState
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as T,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      retryCount: null == retryCount
          ? _value.retryCount
          : retryCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OperationStatus,
    ));
  }
}

/// @nodoc

class _$OptimisticOperationImpl<T> implements _OptimisticOperation<T> {
  const _$OptimisticOperationImpl(
      {required this.id,
      required this.type,
      required this.previousState,
      required this.newState,
      required this.timestamp,
      this.retryCount = 0,
      this.status = OperationStatus.pending});

  @override
  final String id;
  @override
  final String type;
  @override
  final T previousState;
  @override
  final T newState;
  @override
  final DateTime timestamp;
  @override
  @JsonKey()
  final int retryCount;
  @override
  @JsonKey()
  final OperationStatus status;

  @override
  String toString() {
    return 'OptimisticOperation<$T>(id: $id, type: $type, previousState: $previousState, newState: $newState, timestamp: $timestamp, retryCount: $retryCount, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptimisticOperationImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.previousState, previousState) &&
            const DeepCollectionEquality().equals(other.newState, newState) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.retryCount, retryCount) ||
                other.retryCount == retryCount) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      const DeepCollectionEquality().hash(previousState),
      const DeepCollectionEquality().hash(newState),
      timestamp,
      retryCount,
      status);

  /// Create a copy of OptimisticOperation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptimisticOperationImplCopyWith<T, _$OptimisticOperationImpl<T>>
      get copyWith => __$$OptimisticOperationImplCopyWithImpl<T,
          _$OptimisticOperationImpl<T>>(this, _$identity);
}

abstract class _OptimisticOperation<T> implements OptimisticOperation<T> {
  const factory _OptimisticOperation(
      {required final String id,
      required final String type,
      required final T previousState,
      required final T newState,
      required final DateTime timestamp,
      final int retryCount,
      final OperationStatus status}) = _$OptimisticOperationImpl<T>;

  @override
  String get id;
  @override
  String get type;
  @override
  T get previousState;
  @override
  T get newState;
  @override
  DateTime get timestamp;
  @override
  int get retryCount;
  @override
  OperationStatus get status;

  /// Create a copy of OptimisticOperation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptimisticOperationImplCopyWith<T, _$OptimisticOperationImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
