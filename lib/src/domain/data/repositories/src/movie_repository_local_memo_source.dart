import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/constant/constants.dart';
import 'package:mobx_flutter/src/constant/temp_local_repo.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';

@lazySingleton
class MovieRepositoryLocalMemo {
  MovieRepositoryLocalMemo();

  List<MovieEntity> getAllMovies() => listMovies;

  List<String> getTags() => tags;

  MovieEntity getDetailMovie(String id) =>
      listMovies.firstWhere((element) => element.id == id);

  void deleteMovie(MovieEntity movie) => listMovies.remove(movie);

  void registerNewMovie(MovieEntity movie) => listMovies.add(movie);

  void updateMovie(MovieEntity movie) {
    final index = listMovies.indexWhere((element) => element.id == movie.id);
    listMovies
      ..removeAt(index)
      ..insert(index, movie);
  }
}
