import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_flutter/src/domain/domain/use_cases/movie/delete_movie_use_case.dart';
import 'package:mobx_flutter/src/domain/domain/use_cases/movie/get_all_movies_use_case.dart';
import 'package:mobx_flutter/src/domain/domain/use_cases/movie/get_detail_movie_use_case.dart';
import 'package:mobx_flutter/src/domain/domain/use_cases/movie/get_tags_use_case.dart';
import 'package:mobx_flutter/src/domain/domain/use_cases/movie/register_new_movie_use_case.dart';
import 'package:mobx_flutter/src/domain/domain/use_cases/movie/update_movie_use_case.dart';
import 'package:mobx_flutter/src/state/data_state.dart';

part 'movie_mobx.g.dart';

@lazySingleton
// ignore: library_private_types_in_public_api
class MovieMobx = _MovieMobx with _$MovieMobx;

abstract class _MovieMobx with Store {
  final DeleteMovieUseCase _deleteMovieUseCase;
  final GetAllMoviesUseCase _getAllMoviesUseCase;
  final GetDetailMovieUseCase _getDetailMovieUseCase;
  final GetTagsUseCase _getTagsUseCase;
  final RegisterNewMovieUseCase _registerNewMovieUseCase;
  final UpdateMovieUseCase _updateMovieUseCase;

  _MovieMobx(
    this._deleteMovieUseCase,
    this._getAllMoviesUseCase,
    this._getDetailMovieUseCase,
    this._registerNewMovieUseCase,
    this._getTagsUseCase,
    this._updateMovieUseCase,
  );

  @observable
  DataState<List<MovieEntity>> listMovies = const DataState.empty();

  @observable
  List<String> selectedTags = [];

  @observable
  List<String> tags = [];

  @observable
  MovieEntity detailMovie = const MovieEntity(
    id: '',
    title: '',
    director: '',
    summary: '',
    tags: [],
  );

  @action
  DataState<List<MovieEntity>> getAllMovies() {
    final movieList = _getAllMoviesUseCase.call();

    if (movieList.isEmpty) {
      listMovies = const DataState.empty();
    } else {
      listMovies = DataState.success(movieList);
    }

    return listMovies;
  }

  @action
  MovieEntity getDetailMovie(String id) {
    try {
      detailMovie = _getDetailMovieUseCase.call(id);
      selectedTags = detailMovie.tags;
      return detailMovie;
    } catch (_) {
      detailMovie = const MovieEntity(
        id: '',
        title: '',
        director: '',
        summary: '',
        tags: [],
      );
      return detailMovie;
    }
  }

  @action
  void registerNewMovie({
    required String title,
    required String director,
    required String summary,
  }) {
    final allMovies = _getAllMoviesUseCase.call();

    final newMovie = MovieEntity(
      id: (allMovies.isEmpty)
          ? '0'
          : ((int.tryParse(allMovies.last.id) ?? 0) + 1).toString(),
      title: title,
      director: director,
      summary: summary,
      tags: selectedTags,
    );

    _registerNewMovieUseCase.call(newMovie);
  }

  @action
  void updateMovie({
    required String id,
    required String title,
    required String director,
    required String summary,
  }) {
    _updateMovieUseCase.call(MovieEntity(
      id: id,
      title: title,
      director: director,
      summary: summary,
      tags: selectedTags,
    ));
  }

  @action
  List<String> deleteTag(int index) {
    final newTag = selectedTags.toList();
    newTag.removeAt(index);

    return selectedTags = newTag;
  }

  @action
  List<String> addTag(String tag) {
    final newTag = selectedTags.toList();
    if (!selectedTags.contains(tag)) newTag.add(tag);

    return selectedTags = newTag;
  }

  @action
  List<String> getTags() => tags = _getTagsUseCase.call();

  @action
  void clearSelectedTags() => selectedTags = [];

  @action
  void deleteFilm() => _deleteMovieUseCase.call(detailMovie);
}
