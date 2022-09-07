// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/data/repositories/movie_repository_impl.dart' as _i5;
import '../domain/data/repositories/src/movie_repository_local_memo_source.dart'
    as _i3;
import '../domain/domain/repositories/movie/movie_repository.dart' as _i4;
import '../domain/domain/use_cases/movie/delete_movie_use_case.dart' as _i8;
import '../domain/domain/use_cases/movie/get_all_movies_use_case.dart' as _i9;
import '../domain/domain/use_cases/movie/get_detail_movie_use_case.dart'
    as _i10;
import '../domain/domain/use_cases/movie/get_tags_use_case.dart' as _i11;
import '../domain/domain/use_cases/movie/register_new_movie_use_case.dart'
    as _i6;
import '../domain/domain/use_cases/movie/update_movie_use_case.dart' as _i7;
import '../presentation/bloc/movie/movie_mobx.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.MovieRepositoryLocalMemo>(
      () => _i3.MovieRepositoryLocalMemo());
  gh.lazySingleton<_i4.MovieRepository>(
      () => _i5.MovieRepositoryImpl(get<_i3.MovieRepositoryLocalMemo>()));
  gh.lazySingleton<_i6.RegisterNewMovieUseCase>(
      () => _i6.RegisterNewMovieUseCase(get<_i4.MovieRepository>()));
  gh.lazySingleton<_i7.UpdateMovieUseCase>(
      () => _i7.UpdateMovieUseCase(get<_i4.MovieRepository>()));
  gh.lazySingleton<_i8.DeleteMovieUseCase>(
      () => _i8.DeleteMovieUseCase(get<_i4.MovieRepository>()));
  gh.lazySingleton<_i9.GetAllMoviesUseCase>(
      () => _i9.GetAllMoviesUseCase(get<_i4.MovieRepository>()));
  gh.lazySingleton<_i10.GetDetailMovieUseCase>(
      () => _i10.GetDetailMovieUseCase(get<_i4.MovieRepository>()));
  gh.lazySingleton<_i11.GetTagsUseCase>(
      () => _i11.GetTagsUseCase(get<_i4.MovieRepository>()));
  gh.lazySingleton<_i12.MovieMobx>(() => _i12.MovieMobx(
      get<_i8.DeleteMovieUseCase>(),
      get<_i9.GetAllMoviesUseCase>(),
      get<_i10.GetDetailMovieUseCase>(),
      get<_i6.RegisterNewMovieUseCase>(),
      get<_i11.GetTagsUseCase>(),
      get<_i7.UpdateMovieUseCase>()));
  return get;
}
