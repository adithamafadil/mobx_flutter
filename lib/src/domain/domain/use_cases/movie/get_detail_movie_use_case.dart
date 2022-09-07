import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx_flutter/src/domain/domain/repositories/movie/movie_repository.dart';

@lazySingleton
class GetDetailMovieUseCase {
  final MovieRepository _repository;
  const GetDetailMovieUseCase(this._repository);

  MovieEntity call(String id) => _repository.getDetailMovie(id);
}
