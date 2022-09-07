import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';

abstract class MovieRepository {
  void registerNewMovie(MovieEntity movie);

  void deleteMovie(MovieEntity movie);

  void updateMovie(MovieEntity movie);

  List<MovieEntity> getAllMovies();

  List<String> getTags();

  MovieEntity getDetailMovie(String id);
}
