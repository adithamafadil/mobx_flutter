import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter/src/di/inject.dart';
import 'package:mobx_flutter/src/domain/data/entities/movie/movie_entity.dart';
import 'package:mobx_flutter/src/presentation/bloc/movie/movie_mobx.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final bloc = inject<MovieMobx>()..getAllMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton.icon(
            onPressed: () => context.router
                .pushNamed('/form/new')
                .then((_) => bloc.getAllMovies()),
            icon: const Icon(Icons.add),
            label: const Text('Add New'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Observer(builder: (context) {
          return bloc.listMovies.maybeWhen(
            empty: () => const Center(child: Text('Data Kosong')),
            success: (data) => ListView.builder(
              itemCount: data.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final item = data[index];

                return _buildCard(
                  item: item,
                  onTap: () => context.router
                      .pushNamed('/form/${item.id}')
                      .then((_) => bloc.getAllMovies()),
                );
              },
            ),
            orElse: () => const SizedBox.shrink(),
          );
        }),
      ),
    );
  }

  _buildCard({
    Function()? onTap,
    required MovieEntity item,
  }) =>
      InkWell(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item.director,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  item.summary,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                _buildTags(item.tags),
              ],
            ),
          ),
        ),
      );

  _buildTags(List<String> tags) => Wrap(
        children: List<Widget>.generate(
          tags.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Chip(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              label: Text(
                tags[index],
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
      );
}
