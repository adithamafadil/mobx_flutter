import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx_flutter/src/domain/domain/repositories/movie/movie_repository.dart';

@lazySingleton
class DeleteMovieUseCase {
  final MovieRepository _repository;
  const DeleteMovieUseCase(this._repository);

  void call(MovieEntity movie) => _repository.deleteMovie(movie);
}
