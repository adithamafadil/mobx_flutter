// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateSuccess<T> value) success,
    required TResult Function(_DataStateEmpty<T> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateEmpty<T> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res> implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState<T> _value;
  // ignore: unused_field
  final $Res Function(DataState<T>) _then;
}

/// @nodoc
abstract class _$$_DataStateSuccessCopyWith<T, $Res> {
  factory _$$_DataStateSuccessCopyWith(_$_DataStateSuccess<T> value,
          $Res Function(_$_DataStateSuccess<T>) then) =
      __$$_DataStateSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$_DataStateSuccessCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements _$$_DataStateSuccessCopyWith<T, $Res> {
  __$$_DataStateSuccessCopyWithImpl(_$_DataStateSuccess<T> _value,
      $Res Function(_$_DataStateSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$_DataStateSuccess<T>));

  @override
  _$_DataStateSuccess<T> get _value => super._value as _$_DataStateSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DataStateSuccess<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_DataStateSuccess<T> implements _DataStateSuccess<T> {
  const _$_DataStateSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataStateSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_DataStateSuccessCopyWith<T, _$_DataStateSuccess<T>> get copyWith =>
      __$$_DataStateSuccessCopyWithImpl<T, _$_DataStateSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() empty,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? empty,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateSuccess<T> value) success,
    required TResult Function(_DataStateEmpty<T> value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateEmpty<T> value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DataStateSuccess<T> implements DataState<T> {
  const factory _DataStateSuccess(final T data) = _$_DataStateSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_DataStateSuccessCopyWith<T, _$_DataStateSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataStateEmptyCopyWith<T, $Res> {
  factory _$$_DataStateEmptyCopyWith(_$_DataStateEmpty<T> value,
          $Res Function(_$_DataStateEmpty<T>) then) =
      __$$_DataStateEmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_DataStateEmptyCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements _$$_DataStateEmptyCopyWith<T, $Res> {
  __$$_DataStateEmptyCopyWithImpl(
      _$_DataStateEmpty<T> _value, $Res Function(_$_DataStateEmpty<T>) _then)
      : super(_value, (v) => _then(v as _$_DataStateEmpty<T>));

  @override
  _$_DataStateEmpty<T> get _value => super._value as _$_DataStateEmpty<T>;
}

/// @nodoc

class _$_DataStateEmpty<T> implements _DataStateEmpty<T> {
  const _$_DataStateEmpty();

  @override
  String toString() {
    return 'DataState<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataStateEmpty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateSuccess<T> value) success,
    required TResult Function(_DataStateEmpty<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateEmpty<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateSuccess<T> value)? success,
    TResult Function(_DataStateEmpty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _DataStateEmpty<T> implements DataState<T> {
  const factory _DataStateEmpty() = _$_DataStateEmpty<T>;
}
