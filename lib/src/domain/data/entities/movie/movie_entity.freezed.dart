// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get director => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String director,
      String summary,
      List<String> tags});
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res> implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._value, this._then);

  final MovieEntity _value;
  // ignore: unused_field
  final $Res Function(MovieEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? director = freezed,
    Object? summary = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieEntityCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$$_MovieEntityCopyWith(
          _$_MovieEntity value, $Res Function(_$_MovieEntity) then) =
      __$$_MovieEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String director,
      String summary,
      List<String> tags});
}

/// @nodoc
class __$$_MovieEntityCopyWithImpl<$Res> extends _$MovieEntityCopyWithImpl<$Res>
    implements _$$_MovieEntityCopyWith<$Res> {
  __$$_MovieEntityCopyWithImpl(
      _$_MovieEntity _value, $Res Function(_$_MovieEntity) _then)
      : super(_value, (v) => _then(v as _$_MovieEntity));

  @override
  _$_MovieEntity get _value => super._value as _$_MovieEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? director = freezed,
    Object? summary = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_MovieEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      director: director == freezed
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MovieEntity implements _MovieEntity {
  const _$_MovieEntity(
      {required this.id,
      required this.title,
      required this.director,
      required this.summary,
      required final List<String> tags})
      : _tags = tags;

  @override
  final String id;
  @override
  final String title;
  @override
  final String director;
  @override
  final String summary;
  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'MovieEntity(id: $id, title: $title, director: $director, summary: $summary, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.director, director) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(director),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      __$$_MovieEntityCopyWithImpl<_$_MovieEntity>(this, _$identity);
}

abstract class _MovieEntity implements MovieEntity {
  const factory _MovieEntity(
      {required final String id,
      required final String title,
      required final String director,
      required final String summary,
      required final List<String> tags}) = _$_MovieEntity;

  @override
  String get id;
  @override
  String get title;
  @override
  String get director;
  @override
  String get summary;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
