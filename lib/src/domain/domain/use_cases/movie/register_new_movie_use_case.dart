import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx_flutter/src/domain/domain/repositories/movie/movie_repository.dart';

@lazySingleton
class RegisterNewMovieUseCase {
  final MovieRepository _repository;
  const RegisterNewMovieUseCase(this._repository);

  void call(MovieEntity movie) => _repository.registerNewMovie(movie);
}
