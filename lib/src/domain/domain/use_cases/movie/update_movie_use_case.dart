import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx_flutter/src/domain/domain/repositories/movie/movie_repository.dart';

@lazySingleton
class UpdateMovieUseCase {
  final MovieRepository _repository;
  const UpdateMovieUseCase(this._repository);

  void call(MovieEntity movie) => _repository.updateMovie(movie);
}
