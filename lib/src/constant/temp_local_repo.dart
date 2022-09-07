import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';

List<MovieEntity> listMovies = [
  // ignore: prefer_const_constructors
  MovieEntity(
    id: 'id',
    title: 'title',
    director: 'director',
    summary: 'Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit. Vestibulum mollis finibus lobortis. Cras fermentum '
        'rhoncus ante, ut commodo eros egestas et. Suspendisse potenti. Nunc '
        'tristique aliquam lectus, non luctus lectus egestas eget. Nullam arcu risus, '
        'luctus at rutrum quis, ornare eu lectus. Etiam pharetra lacinia '
        'tristique. Donec a ipsum bibendum, maximus neque id, lacinia felis. '
        'Curabitur rhoncus lacus non mi placerat facilisis. Cras eget placerat sem, '
        'tempor tempus nunc. Nullam lorem lorem, suscipit in consectetur non, '
        'rutrum ac elit. Aenean facilisis magna elit. Mauris quis risus sit amet '
        'sapien mattis dapibus nec sit amet eros.',
    tags: ['tags1', 'tags2', 'tags3', 'tags4', 'tags5', 'tags6'],
  ),
  // ignore: prefer_const_constructors
  MovieEntity(
    id: 'id2',
    title: 'title2',
    director: 'director2',
    summary: 'summary2',
    tags: ['tags'],
  ),
  // ignore: prefer_const_constructors
  MovieEntity(
    id: 'id3',
    title: 'title3',
    director: 'director3',
    summary: 'summary3',
    tags: ['tags'],
  )
];
