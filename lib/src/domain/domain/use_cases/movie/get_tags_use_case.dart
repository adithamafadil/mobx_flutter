import 'package:injectable/injectable.dart';
import 'package:mobx_flutter/src/domain/domain/repositories/movie/movie_repository.dart';

@lazySingleton
class GetTagsUseCase {
  final MovieRepository _repository;
  const GetTagsUseCase(this._repository);

  List<String> call() => _repository.getTags();
}
