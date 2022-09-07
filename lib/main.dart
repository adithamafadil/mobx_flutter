import 'package:flutter/material.dart';
import 'package:mobx_flutter/src/di/inject.dart';
import 'package:mobx_flutter/src/presentation/router/router.gr.dart';

void main() async {
  await initDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = MovieRouter();
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
      );
}
