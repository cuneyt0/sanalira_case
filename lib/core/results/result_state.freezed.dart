// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultStateTearOff {
  const _$ResultStateTearOff();

  Idle<T> initial<T>() {
    return Idle<T>();
  }

  Loading<T> loading<T>() {
    return Loading<T>();
  }

  Completed<T> completed<T>(T data) {
    return Completed<T>(
      data,
    );
  }

  Failed<T> failed<T>(BaseErrorsModel error) {
    return Failed<T>(
      error,
    );
  }
}

/// @nodoc
const $ResultState = _$ResultStateTearOff();

/// @nodoc
mixin _$ResultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) completed,
    required TResult Function(BaseErrorsModel error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Failed<T> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<T, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T> value, $Res Function(ResultState<T>) then) =
      _$ResultStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  final ResultState<T> _value;
  // ignore: unused_field
  final $Res Function(ResultState<T>) _then;
}

/// @nodoc
abstract class $IdleCopyWith<T, $Res> {
  factory $IdleCopyWith(Idle<T> value, $Res Function(Idle<T>) then) =
      _$IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<T, $Res> extends _$ResultStateCopyWithImpl<T, $Res>
    implements $IdleCopyWith<T, $Res> {
  _$IdleCopyWithImpl(Idle<T> _value, $Res Function(Idle<T>) _then)
      : super(_value, (v) => _then(v as Idle<T>));

  @override
  Idle<T> get _value => super._value as Idle<T>;
}

/// @nodoc

class _$Idle<T> implements Idle<T> {
  const _$Idle();

  @override
  String toString() {
    return 'ResultState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) completed,
    required TResult Function(BaseErrorsModel error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Failed<T> value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements ResultState<T> {
  const factory Idle() = _$Idle<T>;
}

/// @nodoc
abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<T, $Res> extends _$ResultStateCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'ResultState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) completed,
    required TResult Function(BaseErrorsModel error) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Failed<T> value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements ResultState<T> {
  const factory Loading() = _$Loading<T>;
}

/// @nodoc
abstract class $CompletedCopyWith<T, $Res> {
  factory $CompletedCopyWith(
          Completed<T> value, $Res Function(Completed<T>) then) =
      _$CompletedCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$CompletedCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $CompletedCopyWith<T, $Res> {
  _$CompletedCopyWithImpl(
      Completed<T> _value, $Res Function(Completed<T>) _then)
      : super(_value, (v) => _then(v as Completed<T>));

  @override
  Completed<T> get _value => super._value as Completed<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Completed<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Completed<T> implements Completed<T> {
  const _$Completed(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ResultState<$T>.completed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Completed<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $CompletedCopyWith<T, Completed<T>> get copyWith =>
      _$CompletedCopyWithImpl<T, Completed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) completed,
    required TResult Function(BaseErrorsModel error) failed,
  }) {
    return completed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
  }) {
    return completed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Failed<T> value) failed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class Completed<T> implements ResultState<T> {
  const factory Completed(T data) = _$Completed<T>;

  T get data;
  @JsonKey(ignore: true)
  $CompletedCopyWith<T, Completed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailedCopyWith<T, $Res> {
  factory $FailedCopyWith(Failed<T> value, $Res Function(Failed<T>) then) =
      _$FailedCopyWithImpl<T, $Res>;
  $Res call({BaseErrorsModel error});
}

/// @nodoc
class _$FailedCopyWithImpl<T, $Res> extends _$ResultStateCopyWithImpl<T, $Res>
    implements $FailedCopyWith<T, $Res> {
  _$FailedCopyWithImpl(Failed<T> _value, $Res Function(Failed<T>) _then)
      : super(_value, (v) => _then(v as Failed<T>));

  @override
  Failed<T> get _value => super._value as Failed<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Failed<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseErrorsModel,
    ));
  }
}

/// @nodoc

class _$Failed<T> implements Failed<T> {
  const _$Failed(this.error);

  @override
  final BaseErrorsModel error;

  @override
  String toString() {
    return 'ResultState<$T>.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failed<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FailedCopyWith<T, Failed<T>> get copyWith =>
      _$FailedCopyWithImpl<T, Failed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) completed,
    required TResult Function(BaseErrorsModel error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? completed,
    TResult Function(BaseErrorsModel error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Completed<T> value) completed,
    required TResult Function(Failed<T> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Completed<T> value)? completed,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed<T> implements ResultState<T> {
  const factory Failed(BaseErrorsModel error) = _$Failed<T>;

  BaseErrorsModel get error;
  @JsonKey(ignore: true)
  $FailedCopyWith<T, Failed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
