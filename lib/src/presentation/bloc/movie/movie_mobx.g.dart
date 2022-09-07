// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MovieMobx on _MovieMobx, Store {
  late final _$listMoviesAtom =
      Atom(name: '_MovieMobx.listMovies', context: context);

  @override
  DataState<List<MovieEntity>> get listMovies {
    _$listMoviesAtom.reportRead();
    return super.listMovies;
  }

  @override
  set listMovies(DataState<List<MovieEntity>> value) {
    _$listMoviesAtom.reportWrite(value, super.listMovies, () {
      super.listMovies = value;
    });
  }

  late final _$selectedTagsAtom =
      Atom(name: '_MovieMobx.selectedTags', context: context);

  @override
  List<String> get selectedTags {
    _$selectedTagsAtom.reportRead();
    return super.selectedTags;
  }

  @override
  set selectedTags(List<String> value) {
    _$selectedTagsAtom.reportWrite(value, super.selectedTags, () {
      super.selectedTags = value;
    });
  }

  late final _$tagsAtom = Atom(name: '_MovieMobx.tags', context: context);

  @override
  List<String> get tags {
    _$tagsAtom.reportRead();
    return super.tags;
  }

  @override
  set tags(List<String> value) {
    _$tagsAtom.reportWrite(value, super.tags, () {
      super.tags = value;
    });
  }

  late final _$detailMovieAtom =
      Atom(name: '_MovieMobx.detailMovie', context: context);

  @override
  MovieEntity get detailMovie {
    _$detailMovieAtom.reportRead();
    return super.detailMovie;
  }

  @override
  set detailMovie(MovieEntity value) {
    _$detailMovieAtom.reportWrite(value, super.detailMovie, () {
      super.detailMovie = value;
    });
  }

  late final _$_MovieMobxActionController =
      ActionController(name: '_MovieMobx', context: context);

  @override
  DataState<List<MovieEntity>> getAllMovies() {
    final _$actionInfo = _$_MovieMobxActionController.startAction(
        name: '_MovieMobx.getAllMovies');
    try {
      return super.getAllMovies();
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  MovieEntity getDetailMovie(String id) {
    final _$actionInfo = _$_MovieMobxActionController.startAction(
        name: '_MovieMobx.getDetailMovie');
    try {
      return super.getDetailMovie(id);
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void registerNewMovie(
      {required String title,
      required String director,
      required String summary}) {
    final _$actionInfo = _$_MovieMobxActionController.startAction(
        name: '_MovieMobx.registerNewMovie');
    try {
      return super
          .registerNewMovie(title: title, director: director, summary: summary);
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateMovie(
      {required String id,
      required String title,
      required String director,
      required String summary}) {
    final _$actionInfo = _$_MovieMobxActionController.startAction(
        name: '_MovieMobx.updateMovie');
    try {
      return super.updateMovie(
          id: id, title: title, director: director, summary: summary);
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> deleteTag(int index) {
    final _$actionInfo =
        _$_MovieMobxActionController.startAction(name: '_MovieMobx.deleteTag');
    try {
      return super.deleteTag(index);
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> addTag(String tag) {
    final _$actionInfo =
        _$_MovieMobxActionController.startAction(name: '_MovieMobx.addTag');
    try {
      return super.addTag(tag);
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<String> getTags() {
    final _$actionInfo =
        _$_MovieMobxActionController.startAction(name: '_MovieMobx.getTags');
    try {
      return super.getTags();
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearSelectedTags() {
    final _$actionInfo = _$_MovieMobxActionController.startAction(
        name: '_MovieMobx.clearSelectedTags');
    try {
      return super.clearSelectedTags();
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteFilm() {
    final _$actionInfo =
        _$_MovieMobxActionController.startAction(name: '_MovieMobx.deleteFilm');
    try {
      return super.deleteFilm();
    } finally {
      _$_MovieMobxActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listMovies: ${listMovies},
selectedTags: ${selectedTags},
tags: ${tags},
detailMovie: ${detailMovie}
    ''';
  }
}
