import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx_flutter/src/domain/domain/repositories/movie/movie_repository.dart';

@lazySingleton
class GetAllMoviesUseCase {
  final MovieRepository _repository;
  const GetAllMoviesUseCase(this._repository);

  List<MovieEntity> call() => _repository.getAllMovies();
}
