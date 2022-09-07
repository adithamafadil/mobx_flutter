import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';

@freezed
class MovieEntity with _$MovieEntity {
  const factory MovieEntity({
    required String id,
    required String title,
    required String director,
    required String summary,
    required List<String> tags,
  }) = _MovieEntity;
}
