import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter/src/di/inject.dart';
import 'package:mobx_flutter/src/presentation/bloc/movie/movie_mobx.dart';

// ignore: must_be_immutable
class FormPage extends StatelessWidget with AutoRouteWrapper {
  final String id;

  FormPage({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);

  TextEditingController? _titleController;
  TextEditingController? _directorController;
  TextEditingController? _summaryController;

  final _formKey = GlobalKey<FormState>();
  String? buttonText;

  // ignore: prefer_typing_uninitialized_variables
  var bloc;

  @override
  Widget wrappedRoute(BuildContext context) {
    bloc = inject<MovieMobx>()
      ..getDetailMovie(id)
      ..getTags();

    if (id == 'new') bloc.clearSelectedTags();

    _titleController = TextEditingController(text: bloc.detailMovie.title);
    _directorController =
        TextEditingController(text: bloc.detailMovie.director);
    _summaryController = TextEditingController(text: bloc.detailMovie.summary);

    buttonText = (id == 'new' ? 'Simpan' : 'Simpan Perubahan');
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (id != 'new')
            IconButton(
              onPressed: () {
                bloc.deleteFilm();
                context.router.pop();
              },
              icon: const Icon(
                Icons.delete_forever_outlined,
                color: Colors.white,
              ),
            )
        ],
        title: Text(id == 'new'
            ? 'Masukkan Film Baru'
            : 'Detil Film ${bloc.detailMovie.title}'),
      ),
      body: Observer(
        builder: (_) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildForm(controller: _titleController, label: 'Title'),
                _buildForm(controller: _directorController, label: 'Director'),
                _buildForm(
                  controller: _summaryController,
                  label: 'Summary',
                  maxLines: 5,
                ),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(label: Text('Tag')),
                  items: List<DropdownMenuItem<String>>.generate(
                    bloc.tags.length,
                    (index) => DropdownMenuItem(
                      value: bloc.tags[index],
                      child: Text(bloc.tags[index]),
                    ),
                  ),
                  onChanged: (value) => bloc.addTag(value!),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: bloc.selectedTags.isEmpty
                        ? const Align(
                            alignment: Alignment.topCenter,
                            child: Text('No Tag'),
                          )
                        : Wrap(
                            children: List<Widget>.generate(
                              bloc.selectedTags.length,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Chip(
                                  label: Text(bloc.selectedTags[index]),
                                  deleteIcon: const Icon(Icons.close),
                                  onDeleted: () => bloc.deleteTag(index),
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
                _buildButton(
                  onPressed: () {
                    if (id == 'new') {
                      bloc.registerNewMovie(
                        title: _titleController!.text,
                        director: _directorController!.text,
                        summary: _summaryController!.text,
                      );
                    } else {
                      bloc.updateMovie(
                        id: id,
                        title: _titleController!.text,
                        director: _directorController!.text,
                        summary: _summaryController!.text,
                      );
                    }

                    context.router.pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildForm({
    required String label,
    TextEditingController? controller,
    int? maxLines,
  }) =>
      TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(label: Text(label)),
      );

  _buildButton({Function()? onPressed}) => Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(buttonText ?? 'Simpan'),
          ),
        ),
      );
}
