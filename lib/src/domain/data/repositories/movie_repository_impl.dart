import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx_flutter/src/domain/data/repositories/src/movie_repository_local_memo_source.dart';
import 'package:mobx_flutter/src/domain/domain/repositories/movie/movie_repository.dart';

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieRepositoryLocalMemo _localRepository;

  MovieRepositoryImpl(this._localRepository);

  @override
  void deleteMovie(MovieEntity movie) => _localRepository.deleteMovie(movie);

  @override
  List<MovieEntity> getAllMovies() => _localRepository.getAllMovies();

  @override
  void registerNewMovie(MovieEntity movie) =>
      _localRepository.registerNewMovie(movie);

  @override
  void updateMovie(MovieEntity movie) => _localRepository.updateMovie(movie);

  @override
  MovieEntity getDetailMovie(String id) => _localRepository.getDetailMovie(id);

  @override
  List<String> getTags() => _localRepository.getTags();
}
